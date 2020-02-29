git add .
git commit -m "me"
git push origin develop

mkdir ~/Desktop/docs
cp -r ./_site/* ~/Desktop/docs

git checkout master

mv  ~/Desktop/docs/* ./
rm -r  ~/Desktop/docs
git add .
git commit -m "me"
git push origin master

git checkout develop


