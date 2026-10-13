#!/usr/bin/env bash
# ==============================================================================
# PIRANHA UBUNTU — Skrip Bantu Upload ke GitHub
# ==============================================================================

echo "========================================================"
echo "   🐟 PIRANHA UBUNTU — PANDUAN PUSH KE GITHUB 🐧        "
echo "========================================================"
echo ""

if git remote | grep -q "^origin$"; then
    CURRENT_REMOTE=$(git remote get-url origin)
    echo "[INFO] Remote origin saat ini terpasang ke:"
    echo "       $CURRENT_REMOTE"
    echo ""
    read -p "Apakah Anda ingin langsung melakukan 'git push -u origin main'? (y/n): " confirm
    if [[ "$confirm" =~ ^[Yy]$ ]]; then
        git push -u origin main
        exit 0
    fi
fi

echo "Silakan masukkan URL Repositori GitHub Anda."
echo "Contoh: https://github.com/username-anda/piranha-ubuntu.git"
echo ""
read -p "URL GitHub: " REPO_URL

if [ -z "$REPO_URL" ]; then
    echo "[!] URL tidak boleh kosong. Dibatalkan."
    exit 1
fi

if git remote | grep -q "^origin$"; then
    git remote set-url origin "$REPO_URL"
else
    git remote add origin "$REPO_URL"
fi

echo ""
echo "[*] Mencoba push ke branch main..."
git branch -M main
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "========================================================"
    echo " 🎉 BERHASIL DI-PUSH KE GITHUB!                         "
    echo "========================================================"
    echo " Langkah terakhir untuk mengaktifkan Web Reader Online: "
    echo " 1. Buka halaman repo di browser Anda."
    echo " 2. Klik tab 'Settings' -> 'Pages'."
    echo " 3. Pada 'Branch', pilih 'main' dan '/(root)' -> Save."
    echo "========================================================"
else
    echo ""
    echo "[!] Gagal push. Pastikan URL benar dan Anda sudah login ke GitHub."
fi
