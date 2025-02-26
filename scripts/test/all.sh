version=$(npx autoforce version)
version="${version// /_}"
./upgrade.sh
./reset.sh
./config.sh
./crear-milestone.sh $version
./crear-issue.sh $version
./crear-issue.sh $version
./crear-issue.sh $version
