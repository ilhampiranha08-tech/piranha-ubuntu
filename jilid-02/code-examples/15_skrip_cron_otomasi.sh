#!/usr/bin/env bash
# ==============================================================================
# BAB 15: SIHIR SKRIP OTOMASI — JADWAL CRON PANGGUNGHARJO
# Serial Komik Edukasi Piranha Ubuntu (Jilid 2)
# Karya: Ilham Sugiri — Panggungharjo, Bantul
# ==============================================================================

echo "⏰ [Bab 15] Otomasi Penjadwalan Tugas (Cron & Backup Otomatis)"
echo "--------------------------------------------------------"

BACKUP_DIR="/tmp/piranha_backup_lab"
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="$BACKUP_DIR/status_jaringan_$TIMESTAMP.txt"

echo "[*] Mencatat log kesehatan sistem ke $BACKUP_FILE..."
{
    echo "PIRANHA UBUNTU LOG AUDIT: $TIMESTAMP"
    echo "Uptime: $(uptime)"
    echo "Penggunaan RAM:"
    free -m 2>/dev/null || free
} > "$BACKUP_FILE"

echo "[✅] Catatan otomatis berhasil disimpan."
echo ""
echo "Contoh entri crontab untuk menjalankan skrip ini tiap jam 00:00:"
echo "0 0 * * * /path/ke/15_skrip_cron_otomasi.sh"
