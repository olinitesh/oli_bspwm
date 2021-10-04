'use strict';
Object.defineProperty(exports, "__esModule", { value: true });
exports.goDefinition = void 0;
const vscode_languageserver_1 = require("vscode-languageserver");
const vscode_uri_1 = require("vscode-uri");
const nodes_1 = require("../types/nodes");
const parser_1 = require("../services/parser");
const symbols_1 = require("../utils/symbols");
const document_1 = require("../utils/document");
function samePosition(a, b) {
    if (a === undefined) {
        return false;
    }
    return a.line === b.line && a.character === b.character;
}
/**
 * Returns the Symbol, if it present in the documents.
 */
function getSymbols(symbolList, identifier, currentPath) {
    const list = [];
    for (const symbols of symbolList) {
        const fsPath = document_1.getDocumentPath(currentPath, symbols.document);
        if (identifier.type === 'imports') {
            continue;
        }
        for (const item of symbols[identifier.type]) {
            if (item.name === identifier.name && !samePosition(item.position, identifier.position)) {
                list.push({
                    document: symbols.filepath,
                    path: fsPath,
                    info: item
                });
            }
        }
    }
    return list;
}
async function goDefinition(document, offset, storage) {
    const documentPath = vscode_uri_1.URI.parse(document.uri).fsPath;
    const resource = await parser_1.parseDocument(document, offset);
    const hoverNode = resource.node;
    if (!hoverNode || !hoverNode.type) {
        return null;
    }
    let identifier = null;
    if (hoverNode.type === nodes_1.NodeType.VariableName) {
        const parent = hoverNode.getParent();
        if (parent.type !== nodes_1.NodeType.FunctionParameter && parent.type !== nodes_1.NodeType.VariableDeclaration) {
            identifier = {
                name: hoverNode.getName(),
                position: document.positionAt(hoverNode.offset),
                type: 'variables'
            };
        }
    }
    else if (hoverNode.type === nodes_1.NodeType.Identifier) {
        let i = 0;
        let node = hoverNode;
        while (node.type !== nodes_1.NodeType.MixinReference && node.type !== nodes_1.NodeType.Function && i !== 2) {
            node = node.getParent();
            i++;
        }
        if (node && (node.type === nodes_1.NodeType.MixinReference || node.type === nodes_1.NodeType.Function)) {
            let type = 'mixins';
            if (node.type === nodes_1.NodeType.Function) {
                type = 'functions';
            }
            identifier = {
                name: node.getName(),
                position: document.positionAt(node.offset),
                type
            };
        }
    }
    if (!identifier) {
        return null;
    }
    if (resource.symbols.document !== undefined) {
        storage.set(document.uri, resource.symbols);
    }
    const symbolsList = symbols_1.getSymbolsRelatedToDocument(storage, documentPath);
    // Symbols
    const candidates = getSymbols(symbolsList, identifier, documentPath);
    if (candidates.length === 0) {
        return null;
    }
    const definition = candidates[0];
    if ((definition === null || definition === void 0 ? void 0 : definition.document) === undefined) {
        return null;
    }
    const symbol = vscode_languageserver_1.Location.create(vscode_uri_1.URI.file(definition.document).toString(), {
        start: definition.info.position,
        end: {
            line: definition.info.position.line,
            character: definition.info.position.character + definition.info.name.length
        }
    });
    return symbol;
}
exports.goDefinition = goDefinition;
