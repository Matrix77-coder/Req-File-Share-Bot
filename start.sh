if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Matrix77-coder/Req-File-Share-Bot /Req-File-Share-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Req-File-Share-Bot
fi
cd /Req-File-Share-Bot
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
