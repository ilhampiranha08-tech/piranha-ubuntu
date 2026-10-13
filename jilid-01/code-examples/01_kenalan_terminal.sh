#!/usr/bin/env bash
# ==============================================================================
# PIRANHA UBUNTU — Latihan 01: Mengenal Terminal Linux (Bab 1 & Bab 2)
# ==============================================================================
# Di Bab 1 dan 2, Riko pertama kali membuka layar hitam terminal.
# Tux mengajarkan bahwa terminal bukanlah hal yang menakutkan, melainkan
# jendela komunikasi langsung dengan sistem operasi Ubuntu!
# ==============================================================================

echo "========================================================"
echo "   🐟 PETUALANGAN TERMINAL PIRANHA UBUNTU - BAB 1 & 2   "
echo "========================================================"
echo ""

# 1. Siapa user yang sedang aktif?
echo "[1] Memeriksa identitas pengguna aktif:"
echo "    Perintah: whoami"
echo "    Hasil   : $(whoami)"
echo ""

# 2. Apa nama komputer/sistem ini?
echo "[2] Memeriksa nama mesin (hostname):"
echo "    Perintah: hostname"
echo "    Hasil   : $(hostname)"
echo ""

# 3. Informasi Kernel Linux
echo "[3] Memeriksa versi kernel Linux:"
echo "    Perintah: uname -srm"
echo "    Hasil   : $(uname -srm)"
echo ""

# 4. Direktori saat ini
echo "[4] Mengetahui lokasi folder saat ini:"
echo "    Perintah: pwd"
echo "    Hasil   : $(pwd)"
echo ""

# 5. Kapasitas ruang penyimpanan
echo "[5] Memeriksa ruang penyimpanan (Disk Space):"
echo "    Perintah: df -h /"
df -h / | awk 'NR==1 || NR==2'
echo ""

echo "========================================================"
echo " Selamat! Kamu telah menjalankan mantra pertama terminal!"
echo " Lanjutkan ke latihan berikutnya: 02_update_dan_upgrade.sh"
echo "========================================================"
