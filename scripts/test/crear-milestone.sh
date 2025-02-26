version=$1
dueOn=$(date '+%Y-%m-%dT00:00:00Z' -d "+$((1 + $RANDOM % 10)) days")
npx autoforce new milestone --noprompt --title="$version" --state="open" --dueOn="$dueOn" --description="body del milestone"