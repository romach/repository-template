USER_NAME=$1
REPOSITORY_NAME=$2

git clone git@github.com:romach/repository-template.git .
git remote rm origin
curl -u $USER_NAME https://api.github.com/user/repos -d '{"name":"'$REPOSITORY_NAME'"}'
git remote add origin git@github.com:$USER_NAME/$REPOSITORY_NAME.git
git push origin master
