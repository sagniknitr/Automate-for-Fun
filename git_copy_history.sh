
git clone <git repository A url> # clone source repository 
 
cd <git repository A directory> 
 
git remote rm origin # to make sure it doesn't affect the original repository 
 
git filter-branch --subdirectory-filter <directory 1> -- --all # remove all files other than the ones needed 
 
mkdir <directory 1> # move them into another directory where they will be stored in the destination repository (if needed) 
 
mv * <directory 1> 
 
git add . 
 
git commit 
 
 
 
git clone <git repository B url> # clone destination repository 
 
cd <git repository B directory> 
 
git remote add repo-A-branch <git repository A directory> # add source as a remote 
 
git pull repo-A-branch master # pull 
 
git remote rm repo-A-branch 

