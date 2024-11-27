#This updates discord for linux
#If your build_info.json is somewhere else please edit the path
#On my machine at least updates are not automatic but if you change the version it will download the new one
#I got sick of doing this manually so this will change it for you, you need to enter the entire new version which should be in the popup asking you to update
#This might not be the mnost efficient solution but I'm not great in bash please feel free to make suggestions :)

read -p "Enter new version: " new

echo > /opt/discord/resources/build_info.json

echo '{
  "releaseChannel": "stable",
  "version": "'$new'"
}' > /opt/discord/resources/build_info.json

