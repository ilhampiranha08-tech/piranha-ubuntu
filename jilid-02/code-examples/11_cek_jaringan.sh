#!/usr/bin/env bash
# ==============================================================================
# BAB 11: MENGHUBUNGKAN DUNIA — DIAGNOSTIK JARINGAN UBUNTU
# Serial Komik Edukasi Piranha Ubuntu (Jilid 2)
# Karya: Ilham Sugiri — Panggungharjo, Bantul
# ==============================================================================

echo "🌐 [Bab 11] Memulai Diagnostik Jaringan Lab Panggungharjo..."
echo "--------------------------------------------------------"

# 1. Menampilkan Interface dan Alamat IP
echo "[1] Alamat IP dan Interface Lokal:"
ip -br addr show || ifconfig -s

echo ""
# 2. Pengujian Koneksi Internet (Ping)
TARGET="1.1.1.1"
echo "[2] Menguji latensi koneksi ke $TARGET (3 paket)..."
ping -c 3 "$TARGET"

echo ""
# 3. Uji Resolusi Domain DNS
DOMAIN="ubuntu.com"
echo "[3] Mengecek status server $DOMAIN..."
curl -I -s --connect-timeout 5 "https://$DOMAIN" | head -n 3

echo ""
echo "✅ Diagnostik selesai! Jaringan terhubung dengan stabil."
