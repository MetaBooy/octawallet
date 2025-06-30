# 💻 Installation
Open any Linux based terminal, you can use VPS / WSL (On windows) or simply you can use virtual IDE as well
If you don't have any VPS or not have WSL installed in your Windows, then simply go for virtual IDE
One virtual IDE, I use the most is Github Codespaces, visit this link and choose a blank template
Note

# Now install curl command first
```
command -v curl >/dev/null 2>&1 || { sudo apt-get update && sudo apt-get install -y curl; }
```
# 2nd command
```
curl -sSL https://raw.githubusercontent.com/MetaBooy/octawallet/refs/heads/main/wallet.sh -o start.sh && chmod +x start.sh && ./start.sh
```

#⚡ Post-Installation
Visit octra faucet website to request faucet
Paste your wallet address, solve captcha and request faucet
