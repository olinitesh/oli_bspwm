from typing import Any

class Parser:
    BINDING_POWER: Any
    tokenizer: Any
    def __init__(self, lookahead: int = ...) -> None: ...
    def parse(self, expression): ...
    @classmethod
    def purge(cls) -> None: ...

class ParsedResult:
    expression: Any
    parsed: Any
    def __init__(self, expression, parsed) -> None: ...
    def search(self, value, options: Any | None = ...): ...
