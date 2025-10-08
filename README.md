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


# Compilation : 


# Compiler tous les composants
npm run build

# Compiler la bibliothèque
npm run build:lib

# Compiler la version JSON
npm run build:json

# Exécuter les tests
npm run test

🔌 Intégration
Node.js


const generator = require('password-generator-zig');

// Générer un mot de passe
const password = generator.generatePassword();
console.log(password); // "ZSJnxhT%1Yvp"

// Avec longueur personnalisée
const longPassword = generator.generatePassword(16);

PHP/Symfony


<?php
require_once 'php/password_generator.php';

$generator = new ZigPasswordGenerator();
$password = $generator->generatePassword();
echo "Mot de passe: " . $password;

🛠️ Dépendances

    Zig 0.15.1 ou supérieur

    Node.js 14.0.0 ou supérieur (pour le package npm)

    Aucune dépendance externe
    

🔒 Sécurité

Le générateur utilise le système cryptographique de Zig (std.crypto.random) qui est :

    ✅ Imprévisible

    ✅ Résistant aux attaques temporelles

    ✅ Approprié pour des applications de sécurité

    ✅ Basé sur des primitives cryptographiques robustes
    

📊 Caractéristiques Techniques

    Aléatoire : std.crypto.random (sécurisé cryptographiquement)

    Charset : 70 caractères différents

    Longueur par défaut : 12 caractères

    Performance : Génération en temps constant

    License : MIT
    

🌐 Liens

    📦 npm Package: https://www.npmjs.com/package/password-generator-zig

    🐙 GitHub Repository: https://github.com/ikc20/password-generator

    👨‍💻 Auteur: ikc20

🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :

    Signaler des bugs

    Proposer des nouvelles fonctionnalités

    Améliorer la documentation

    Créer des bindings pour d'autres langages
    

📄 License


MIT License - Voir le fichier LICENSE pour plus de détails.


Développé avec ❤️ par ikc20 en Zig



