# vpncenters3x — v4 «Aurora Glass» 🌌

Redesigned 3x-ui subscription page. This branch (`v4-aurora-glass`) is a **standalone project** — no history from main.

## Files
- `sub.html` — production template (Go vars intact, drop-in for 3x-ui `/etc/x-ui/sub/`)
- `demo.html` — live preview with fake data (open in browser!)

## What changed vs v3
- Animated Aurora background + true glassmorphism cards
- Hero progress ring 168px with gradient text + glow
- Bento-grid stats, shine-animated primary button
- **Local QR generation** (qrcode-generator embedded — subscription link never leaves the page; v3 leaked it to api.qrserver.com!)
- Removed unused Chart.js CDN — lighter page
- Same IDs + Go template contract → zero 3x-ui breakage (v3.3.0+)

## Privacy / White-label (for resellers)
- ❌ **Support button removed** — never links to the panel owner's Telegram
- ❌ **Renew Subscription button removed** — no public renew flow in the page
- ❌ `subSupportUrl` template var dropped entirely — even if set in panel settings, nothing is rendered
- ✅ QR codes generated locally — no third-party requests

## Install
```bash
cp sub.html /etc/x-ui/sub/sub.html
x-ui restart
```
