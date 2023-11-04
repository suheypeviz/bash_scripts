#! /bin/bash

tar -xvzf $1 -C /opt

echo "tar file extracted to opt"

ln -sf /opt/Discord/Discord /usr/bin/Discord

echo "symbolic link created for Discord binary"

cat <<'EOF' > /opt/Discord/discord.desktop
Name=Discord
StartupWMClass=discord
Comment=All-in-one voice and text chat for gamers that's free, secure, and works on both your desktop and phone.
GenericName=Internet Messenger
Exec=/usr/bin/Discord
Icon=/opt/Discord/discord.png
Type=Application
Categories=Network;InstantMessaging;
Path=/usr/bin
EOF

echo "desktop entry for discord app edited"

cp -r /opt/Discord/discord.desktop /usr/share/applications

echo "desktop entry is now usable from application menu"

# add error handling
