rm -rf docs
mkdir docs
cd docs
cp ../CNAME ./
cp -r ../_site/* ./

cd ..

git add .
git commit -m "me"
git push origin master
rm -rf docs

