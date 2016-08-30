echo "# =========================================================="
echo "#"
echo "# シンボリックリンクを貼る"
echo "#"
echo "# =========================================================="

FOLDERS=(com.bohemiancoding.sketch3)

for folder in ${FOLDERS[@]}

do
	if [ -a "$HOME/Library/Application Support/$folder" ]; then
			echo "フォルダが存在するのでシンボリックリンクを貼りませんでした: $folder"
	else
		ln -s "$HOME/src/github.com/sekka/sketch-sync-settings/$folder" "$HOME/Library/Application Support/$folder"
			echo "シンボリックリンクを貼りました: $folder"
	fi
done
