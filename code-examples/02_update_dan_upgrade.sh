#!/usr/bin/env bash
# ==============================================================================
# PIRANHA UBUNTU — Latihan 02: Membasmi Bug Monster (Bab 2)
# ==============================================================================
# Di Bab 2, Riko dan Tux menghadapi Bug Monster di terminal dengan mantra sakti:
# 1. sudo apt update
# 2. sudo apt upgrade --fix-broken
# ==============================================================================

echo "========================================================"
echo "    🐟 MEMBASMI BUG MONSTER DENGAN APT - BAB 2          "
echo "========================================================"
echo ""

echo "Apa perbedaan 'apt update' dan 'apt upgrade'?"
echo "1. 'apt update'  : Mengambil katalog daftar paket/software terbaru dari repositori."
echo "2. 'apt upgrade' : Mengunduh dan memasang versi terbaru dari paket yang terinstal."
echo "3. '--fix-broken': Memperbaiki paket yang dependensinya rusak (broken dependency)."
echo ""

read -p "Apakah kamu ingin melihat cara kerja simulasi update? (y/n) " choice
if [[ "$choice" =~ ^[Yy]$ ]]; then
    echo ""
    echo "[*] Mengecek status paket sistem..."
    echo "    Perintah resmi: sudo apt update && sudo apt upgrade -y"
    echo ""
    if command -v apt >/dev/null 2>&1; then
        echo "[INFO] Sistem ini memiliki manajer paket APT."
        echo "Jalankan perintah ini secara mandiri dengan hak sudo:"
        echo "   sudo apt update"
        echo "   sudo apt --fix-broken install"
    else
        echo "[INFO] Sistem non-Debian/Ubuntu terdeteksi. Gunakan manajer paket sistem Anda."
    fi
else
    echo "Latihan dilewati."
fi

echo ""
echo "========================================================"
echo " Tetap waspada terhadap bug dan selalu rawat sistemmu!  "
echo "========================================================"
