if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Asworldofficial/As-movie-provider.git /As-movies-provider
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Auto-Filter-V5
fi
cd /As-movies-provider
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
