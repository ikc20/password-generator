# 🔐 Générateur de Mot de Passe Zig

[![npm version](https://img.shields.io/npm/v/password-generator-zig.svg)](https://www.npmjs.com/package/password-generator-zig)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![GitHub](https://img.shields.io/badge/GitHub-ikc20-blue.svg)](https://github.com/ikc20)

> **Package npm officiel :** [`password-generator-zig`](https://www.npmjs.com/package/password-generator-zig)

Un générateur de mots de passe cryptographiquement sécurisé écrit en Zig par **ikc20**, disponible sur npm et Yarn.

## ✨ Fonctionnalités

- 🔒 Génération de mots de passe cryptographiquement sécurisés
- ⚡ Haute performance grâce à Zig
- 🎯 12 caractères par défaut (configurable)
- 🔠 Mélange de minuscules, majuscules, chiffres et symboles
- 📦 Multiples formats de sortie (texte, JSON, bibliothèque)
- 🔌 Intégration avec d'autres langages (PHP, Node.js, etc.)

## 📦 Installation

### npm
npm install password-generator-zig

Yarn

yarn add password-generator-zig

Utilisation directe

npx password-generator-zig

🚀 Utilisation Rapide
Version Zig originale


zig run src/main.zig


./bin/main_json
# Sortie: {"password": "aB3#xY8!pQ2m", "length": 12, "charset_size": 70}


Compilation : 


# Compiler tous les composants
npm run build

# Compiler la bibliothèque
npm run build:lib

# Compiler la version JSON
npm run build:json

# Exécuter les tests
npm run test

Développé avec ❤️ par ikc20 en Zig



