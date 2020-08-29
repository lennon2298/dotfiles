#!/bin/bash
# Reads a given directory and picks a random file.

# The directory you want to use. You could use "$1" instead if you
# wanted to parametrize it.
DIR="$HOME/Pictures/Wal/wallpapers/"
FILE="$1"
#killall -q background.sh
#while pgrep -x background.sh >/dev/null; do sleep 1; done
# Internal Field Separator set to newline, so file names with
# spaces do not break our script.
IFS='
'
if [[ -s "${FILE}" ]]
then
  wal -i $FILE
  $HOME/.config/scripts/spicetify.sh

elif [[ -d "${DIR}" ]]
then
  # Runs ls on the given dir, and dumps the output into a matrix,
  # it uses the new lines character as a field delimiter, as explained above.
  file_matrix=($(ls "${DIR}"))
  num_files=${#file_matrix[*]}
  # This is the command you want to run on a random file.
  # Change "ls -l" by anything you want, it's just an example.
  file_path=${DIR}/${file_matrix[$((RANDOM%num_files))]}
  wal -i $file_path
  $HOME/.config/scripts/spicetify.sh
  # feh --no-fehbg --bg-fill $file_path
fi

exit 0
