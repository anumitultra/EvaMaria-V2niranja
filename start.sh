if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/anumitultra/EvaMaria-V2niranja /EvaMaria-V2niranja
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /EvaMaria-V2niranja
fi
cd /EvaMaria-V2niranja
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
