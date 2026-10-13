#!/usr/bin/env bash
# ==============================================================================
# BAB 12: PINTU RAHASIA SSH — GENERATOR KUNCI KRIPTOGRAFI
# Serial Komik Edukasi Piranha Ubuntu (Jilid 2)
# Karya: Ilham Sugiri — Panggungharjo, Bantul
# ==============================================================================

KEY_PATH="$HOME/.ssh/id_piranha_ed25519"

echo "🔑 [Bab 12] Pembuatan Kunci Otentikasi Remote SSH (Ed25519)"
echo "--------------------------------------------------------"

if [ -f "$KEY_PATH" ]; then
    echo "[INFO] Kunci SSH $KEY_PATH sudah ada."
else
    echo "[*] Membuat pasangan kunci SSH modern Ed25519..."
    mkdir -p "$HOME/.ssh" && chmod 700 "$HOME/.ssh"
    ssh-keygen -t ed25519 -C "iko@lab-panggungharjo.local" -f "$KEY_PATH" -N ""
    echo "[✅] Kunci SSH berhasil dibuat:"
    echo "     - Kunci Rahasia: $KEY_PATH (Jangan disebar!)"
    echo "     - Kunci Publik : $KEY_PATH.pub (Dipasang di server tujuan)"
fi

echo ""
echo "Cara menghubungkan ke server Lab Ubuntu:"
echo "ssh -i $KEY_PATH user@ip-server-tujuan"
