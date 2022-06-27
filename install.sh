echo "Thank you for choosing Anika!"
echo "Installation started."
sleep 1s
echo "Step 1. Install files"

sudo chmod 777 ./
sudo chmod 777 /usr/local/bin/

# lux
tag=$(wget -qO- -t1 -T2 "https://api.github.com/repos/iawia002/lux/releases/latest" | jq -r '.tag_name')
export tag
echo "$tag" >> tag.txt
sed -i "s/v//" tag.txt
newtag=$(cat tag.txt)
export newtag
wget https://ghproxy.com/https://github.com/iawia002/lux/releases/latest/download/lux_${newtag}_Linux_64-bit.tar.gz
tar -zxvf lux_${newtag}_Linux_64-bit.tar.gz
mv -f lux /usr/local/bin/
rm -rf lux_${newtag}_Linux_64-bit.tar.gz
rm -rf tag.txt

# yt-dlp
wget https://ghproxy.com/https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp
mv -f yt-dlp /usr/local/bin/

# ffmpeg
wget https://github.com/thomaswcy/Danny-Packages/releases/download/ffmpeg-linux/ffmpeg
wget https://github.com/thomaswcy/Danny-Packages/releases/download/ffmpeg-linux/ffplay
wget https://github.com/thomaswcy/Danny-Packages/releases/download/ffmpeg-linux/ffprobe
mv -f ffmpeg /usr/local/bin/
mv -f ffplay /usr/local/bin/
mv -f ffprobe /usr/local/bin/

echo "Step 2. Final Configuration"

# Final Configuration
cd /usr/local/bin/
chmod 777 *

echo "All tasks done. Please configure in the browser or just use the commands."