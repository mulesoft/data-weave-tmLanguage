import fs = require('fs');
import path = require('path');
import yaml = require('js-yaml');
import plist = require('plist');

function writePlistFile(grammar: any, fileName: string) {
  const text = plist.build(grammar);
  fs.writeFileSync(fileName, text);
}

function readYaml(fileName: string) {
  const text = fs.readFileSync(fileName, "utf8");
  return yaml.load(text);
}

function buildGrammar() {
  const tsGrammar = readYaml("../DataWeave.YAML-tmLanguage");
  const simpleTsGrammar = readYaml("../dw-textmate.YAML-tmLanguage");

  // Write TypeScript.tmLanguage
  writePlistFile(tsGrammar, "../DataWeave.tmLanguage");
  writePlistFile(simpleTsGrammar, "../dw-textmate.tmLanguage");
}

// function buildTheme() {
//   const tsTheme = readYaml("../DataWeave.YAML-tmTheme");

//   // Write TypeScript.tmTheme
//   writePlistFile(tsTheme, "../DataWeave.tmTheme");
// }

buildGrammar();
// buildTheme();