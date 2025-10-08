<?php

class ZigPasswordGenerator {
    private string $zigBinary;
    
    public function __construct(string $zigBinaryPath = './zig-out/bin/password-generator') {
        $this->zigBinary = $zigBinaryPath;
    }
    
    public function generatePassword(): string {
        $output = shell_exec($this->zigBinary);
        preg_match('/Mot de passe généré: (.+)/', $output, $matches);
        return $matches[1] ?? '';
    }
    
    public function generatePasswordJson(): array {
        $output = shell_exec($this->zigBinary . '-json');
        return json_decode($output, true) ?? [];
    }
}

// Utilisation dans Symfony
class PasswordService {
    private ZigPasswordGenerator $passwordGen;
    
    public function __construct() {
        $this->passwordGen = new ZigPasswordGenerator();
    }
    
    public function generateSecurePassword(): string {
        return $this->passwordGen->generatePassword();
    }
}