import * as path from 'path';
import * as execa from 'execa';
import * as rimraf from 'rimraf';
import * as cpy from 'cpy';

const pCopy = async (src: string, dest: string): Promise<void> => {
  await cpy(src, dest)
}

const pRm = (dir: string): Promise<void> => new Promise((resolve, reject): void =>
  rimraf(dir, (err: any) => err ? reject(err) : resolve())
);

/**
 * Get remote Material Icons
 */
export default async (): Promise<void> => {
  const src = 'https://github.com/material-theme/vsc-material-theme-icons-src.git';
  const tmpDest = './_tmp-output-remote-icons';
  const dest = './src/icons/svgs';

  await execa('git', [
    'clone',
    '--depth=1',
    src,
    tmpDest
  ]);
  await pCopy(path.join(tmpDest, dest), dest);
  await pRm(tmpDest);
};
