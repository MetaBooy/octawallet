#!/bin/bash

# Octra Wallet Generator Setup Script
# Automated setup: install prerequisites, build from source, run, and open browser

echo "=== Octra Wallet Generator Setup ==="
echo ""

# Show security warning first
echo "=== ⚠️  SECURITY WARNING ⚠️  ==="
echo ""
echo "This tool generates real cryptographic keys. Always:"
echo "  - Keep your private keys secure"
echo "  - Never share your mnemonic phrase"
echo "  - Don't store wallet files on cloud services"
echo "  - Use on a secure, offline computer for production wallets"
echo ""
read -p "Press Enter to continue..."
echo ""

# Install required packages
echo "Installing required system packages (sudo, git)..."
sudo apt update
sudo apt install -y sudo git

# Install Node.js and npm
echo ""
echo "Installing Node.js and npm..."
curl -sSL https://raw.githubusercontent.com/zunxbt/installation/main/node.sh | bash

# Clone the Octra wallet CLI repository
echo ""
echo "Cloning Octra Wallet CLI repository..."
git clone https://github.com/zunxbt/octra-wallet-cli.git
cd octra-wallet-cli || { echo "Failed to enter directory"; exit 1; }

# Function to install Bun
install_bun() {
    echo "Installing Bun..."
    if command -v bun &> /dev/null; then
        echo "Bun is already installed. Version: $(bun --version)"
    else
        echo "Installing Bun..."
        curl -fsSL https://bun.sh/install | bash
        export PATH="$HOME/.bun/bin:$PATH"
        echo "Bun installed successfully!"
    fi
}

# Build from source
echo ""
echo "=== Building from Source ==="
echo ""

# Install Bun if not present
install_bun

echo ""
echo "Installing dependencies..."
bun install

echo ""
echo "Building standalone executable..."
bun run build

echo ""
echo "Running CLI command to create new Octra wallet..."
./octra-wallet generate --save
