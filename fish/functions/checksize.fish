function checksize --description "Check if file size is larger than 10 MB"
    set filename $argv[1]
    if test -e $filename
        set filesize (stat -f '%z' $filename)
        set maxsize 5000000 # 10 MB in bytes
        if test $filesize -gt $maxsize
			echo "large file"
        else
			echo "small file"
		end
    else
        echo "File not found: $filename"
    end
end
