#!/data/data/com.termux/files/usr/bin/bash
# Phonehunter Installer for Termux
# by akus62474-debug

echo "📦 Menginstal Phonehunter di Termux..."
sleep 1

echo "🔧 Memperbarui paket..."
pkg update -y && pkg upgrade -y

echo "🐍 Menginstal Python & Git..."
pkg install python git unzip -y

echo "📥 Mengkloning repositori Phonehunter..."
if [ -d "Phonehunter-" ]; then
    rm -rf Phonehunter-
fi
git clone https://github.com/akus62474-debug/Phonehunter-.git

cd Phonehunter- || exit

echo "📦 Menginstal dependensi Python..."
pip install -r requirements.txt

echo "✅ Instalasi selesai!"
echo ""
echo "Cara menjalankan Phonehunter:"
echo "---------------------------------------"
echo "python phonehunter.py +628123456789"
echo "atau"
echo "python phonehunter.py 08123456789 --format-variants"
echo "---------------------------------------"
echo ""
echo "💡 Catatan: Gunakan hanya untuk data publik (OSINT legal & etis)."
