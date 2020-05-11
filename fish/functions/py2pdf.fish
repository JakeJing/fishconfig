function py2pdf --description 'convert the .py script into pdf'
  set filename $argv
  set rootname (echo $filename | sed 's/\.[^.]*$//')
  sed 's/^# %%/```python,/' $filename | sed 's/^#$/```/' > "$rootname".md
  autoweave "$rootname".md
end

