echo "adding customized files"
cp plone-todo-tutorial-on-dotcloud/buildout.d/development.cfg buildout.d/
cp plone-todo-tutorial-on-dotcloud/*.conf .
mv setup.py setup.py.zz
cp plone-todo-tutorial-on-dotcloud/getplone.sh .
cp plone-todo-tutorial-on-dotcloud/dotcloud.yml .

echo "removing the docs folder, it is bulky and not needed for dotcloud"
rm -rf docs/*

