echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/montanajon/vcbot /vbot
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/montanajon/vcbot -b $BRANCH /vbot
fi
cd /vbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
