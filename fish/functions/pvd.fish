function pvd --description 'preview video via para_view.sh'
 /Users/jakejing/.config/vifm/scripts/view.py $argv ; and montage /tmp/out*.jpg -tile 3x -geometry +3+3 /tmp/combined.jpg ; and kitty +kitten icat --transfer-mode=file /tmp/combined.jpg ; and rm /tmp/out*.jpg
end

