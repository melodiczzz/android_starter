REPO=$(curl -u USER https://api.github.com/user/repos -d '{"name":"'"$2"'","private":false}')

echo "my mixes" >> README.md
git init
git add .
git commit -m "$1"
git branch -M main
git remote add origin "https://github.com/melodiczzz/$2.git"
git push -u origin main
