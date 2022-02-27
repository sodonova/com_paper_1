echo staging changes and committing %1 to overleaf and github
git add .
git commit -m %1
git push origin
git push overleaf