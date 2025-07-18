# Tailscale on Raspberry Pi Zero 2 W (Simple Setup)

Minimal setup to run Tailscale on Raspberry Pi OS Legacy (32-bit), using the built-in `tailscaled` service without custom systemd units.

## ✅ Features

- Works on Raspberry Pi Zero 2 W (ARMv6/32-bit)
- One-line script installs everything
- Uses the built-in Tailscale daemon (`tailscaled`)
- No custom service required
- Secure and simple

## 🛠️ Installation

1. Clone the repo:

```bash
git clone https://github.com/TGergely/Tailscale-autoconnect.git
cd Tailscale-autoconnect
```

2. Make the script executable and run it:

```bash
chmod +x install.sh
./install.sh
```

3. Connect your Pi to your Tailnet:

```bash
sudo tailscale up
```

## 🔁 Automatic Reconnection

Once `tailscaled` is enabled via systemd, Tailscale reconnects automatically after reboot.

You can check status with:

```bash
sudo tailscale status
```

## 📚 License

MIT
