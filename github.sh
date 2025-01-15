git add .
echo comment?
read comment
git commit -m "${comment}"
git push origin main
git status