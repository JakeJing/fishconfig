function nb --description 'numbering all pcitures in a folder'
  set i 1
  for file in *.$argv
    mv "$file" $i.$argv
    set i (math "$i + 1")
  end
end
