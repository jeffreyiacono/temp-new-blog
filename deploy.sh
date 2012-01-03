if [ -z "`git status --porcelain css`" ] ; then
  sass sass/application.sass:css/application.css
  jekyll
  git add .
  git commit -m "Compile assets and generate site"
  git push && git push heroku
else
  echo "ERROR: detected modified CSS assets."
  echo "Please commit these changes and run this script again."
fi
