version=$(npx autoforce version)
version="${version// /_}"
./upgrade.sh
./reset.sh
./config.sh
./crear-milestone.sh $version
./crear-issue-dev.sh $version 1
./crear-issue-dev.sh $version 2
./crear-issue-dev.sh $version 3
./crear-issue-doc.sh $version 4
./start-issue.sh 1
#./start-issue.sh 2
#./start-issue.sh 3