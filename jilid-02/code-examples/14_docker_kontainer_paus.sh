#!/usr/bin/env bash
# ==============================================================================
# BAB 14: ARMADA PAUS BIRU — MENJALANKAN KONTAINER DOCKER
# Serial Komik Edukasi Piranha Ubuntu (Jilid 2)
# Karya: Ilham Sugiri — Panggungharjo, Bantul
# ==============================================================================

echo "🐳 [Bab 14] Simulasi Menjalankan Kontainer Paus Biru (Docker)"
echo "--------------------------------------------------------"

if ! command -v docker &> /dev/null; then
    echo "[INFO] Docker engine belum terpasang. Di Bab 14 kita belajar:"
    echo "       - Konsep kontainerisasi vs Virtual Machine"
    echo "       - Perintah: docker run -d -p 8080:80 nginx:alpine"
    echo "       - Manajemen kontainer: docker ps, docker stop, docker rm"
    exit 0
fi

echo "[*] Menjalankan kontainer tes ringan Ubuntu di dalam sandbox isolasi:"
docker run --rm alpine echo "Halo dari dalam kontainer isolasi Lab Panggungharjo!"
