#!/bin/bash
set -e

echo "[+] Updating system..."
sudo apt update && sudo apt full-upgrade -y

echo "[+] Installing dependencies..."
sudo apt install -y curl gnupg2 lsb-release

echo "[+] Adding Tailscale GPG key..."
curl -fsSL https://pkgs.tailscale.com/stable/raspbian/bullseye.noarmor.gpg | sudo tee /usr/share/keyrings/tailscale-archive-keyring.gpg > /dev/null

echo "[+] Adding Tailscale repository..."
echo "deb [signed-by=/usr/share/keyrings/tailscale-archive-keyring.gpg] https://pkgs.tailscale.com/stable/raspbian bullseye main" | sudo tee /etc/apt/sources.list.d/tailscale.list

echo "[+] Installing Tailscale..."
sudo apt update
sudo apt install -y tailscale

echo "[+] Enabling and starting tailscaled..."
sudo systemctl enable tailscaled
sudo systemctl start tailscaled

echo
echo "[*] Tailscale installed. Run this to connect your Pi to your Tailnet:"
sudo tailscale up
