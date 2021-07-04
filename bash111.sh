git add .
git commit -m "me"
git push origin develop

mkdir ~/Desktop/asdfasdiajlskdfajsdkfasdkjaksd
cp -r ./_site/* ~/Desktop/asdfasdiajlskdfajsdkfasdkjaksd

git checkout master

cp -r  ~/Desktop/asdfasdiajlskdfajsdkfasdkjaksd/* ./
rm -r  ~/Desktop/asdfasdiajlskdfajsdkfasdkjaksd
git add .
git commit -m "me"
git push origin master

git checkout develop


