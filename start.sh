if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Moonga1/DQ-the-file-donor.git /Moonga1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Moonga1/DQ-the-file-donor
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting Moonga1...."
python3 bot.py
