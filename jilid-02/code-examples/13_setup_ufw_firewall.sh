#!/usr/bin/env bash
# ==============================================================================
# BAB 13: TEMBOK API PANGGUNGHARJO — KONFIGURASI FIREWALL UFW
# Serial Komik Edukasi Piranha Ubuntu (Jilid 2)
# Karya: Ilham Sugiri — Panggungharjo, Bantul
# ==============================================================================

echo "🛡️  [Bab 13] Mempersiapkan Dinding Api Pertahanan (UFW)"
echo "--------------------------------------------------------"

# Mengecek ketersediaan ufw
if ! command -v ufw &> /dev/null; then
    echo "[!] UFW belum terpasang di sistem. Pasang dengan: sudo apt install ufw"
    echo "[SIMULASI] Perintah pertahanan dasar yang diajarkan di Bab 13:"
    echo "  1. sudo ufw default deny incoming   # Tolak semua akses tak dikenal"
    echo "  2. sudo ufw default allow outgoing   # Izinkan akses keluar"
    echo "  3. sudo ufw allow 22/tcp             # Buka gerbang SSH"
    echo "  4. sudo ufw allow 80/tcp             # Buka gerbang HTTP Web"
    echo "  5. sudo ufw enable                   # Aktifkan tembok api"
    exit 0
fi

echo "[*] Mengecek status tembok api saat ini:"
sudo ufw status verbose
