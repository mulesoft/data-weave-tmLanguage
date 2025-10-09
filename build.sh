set -e

cd build
npm install
npm list
cd ../tests
npm install
npm list
npm test