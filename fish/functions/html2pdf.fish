function html2pdf --description 'convert xaringan html to pdf slides'
  set filename $argv
  set rootname (echo $filename | sed 's/\.[^.]*$//')

  npx decktape remark $argv "$rootname".pdf --chrome-arg=--disable-web-security
end
