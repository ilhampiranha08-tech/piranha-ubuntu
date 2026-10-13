#!/usr/bin/env bash
# ==============================================================================
# PIRANHA UBUNTU — Latihan 03: Boss di Folder /root & Kekuatan SUDO (Bab 3)
# ==============================================================================
# Di Bab 3, Riko dihadang oleh monster "PERMISSION DENIED" saat hendak
# mengakses folder /root. Tux memberitahu bahwa /root hanya bisa diakses
# menggunakan kekuatan superuser: SUDO!
# ==============================================================================

echo "========================================================"
echo "    🛡️ MEMAHAMI HAK AKSES DAN KEKUATAN SUDO - BAB 3     "
echo "========================================================"
echo ""

echo "Mari kita coba mengakses folder /root sebagai pengguna biasa tanpa 'sudo':"
echo "Perintah: ls /root 2>&1"
echo ""

OUTPUT=$(ls /root 2>&1)
echo "Hasil:"
echo "--------------------------------------------------------"
echo "$OUTPUT"
echo "--------------------------------------------------------"
echo ""

if echo "$OUTPUT" | grep -qi "permission denied"; then
    echo "⚠️  LIHAT! Muncul pesan 'Permission denied'!"
    echo "Monster penjaga /root menolak akses kita karena kita bukan Superuser (root)."
    echo ""
    echo "💡 Solusinya (seperti di komik):"
    echo "Gunakan 'sudo' (Superuser Do) untuk meminjam kekuatan admin:"
    echo "   sudo ls /root"
else
    echo "Kamu sudah memiliki akses superuser atau berada di lingkungan dengan izin penuh."
fi

echo ""
echo "========================================================"
echo " Ingat pesan penting Linux:"
echo " 'With great power comes great responsibility!'"
echo " Gunakan perintah sudo secara bijak dan teliti."
echo "========================================================"
