#!/bin/bash
script_name=$0
script_full_path=$(dirname "$0")

version=$(npx autoforce version)
version="${version// /_}"

${script_full_path}/upgrade.sh
${script_full_path}/reset.sh
${script_full_path}/config.sh
${script_full_path}/crear-milestone.sh $version
${script_full_path}/crear-issue-doc.sh $version 1
${script_full_path}/crear-issue-dev.sh $version 2
${script_full_path}/crear-issue-dev.sh $version 3
${script_full_path}/crear-issue-dev.sh $version 4
${script_full_path}/start-issue.sh 1
${script_full_path}/crear-procesos.sh A 1
${script_full_path}/finish-issue.sh 1
${script_full_path}/start-issue.sh 2

#${script_full_path}/start-issue.sh 2
#${script_full_path}/start-issue.sh 3