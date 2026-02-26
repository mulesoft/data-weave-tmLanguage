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
  const simpleTsGrammar = readYaml("../DataWeave.YAML-tmLanguage");

  // Write TypeScript.tmLanguage
  writePlistFile(simpleTsGrammar, "../DataWeave.tmLanguage");
}

buildGrammar();