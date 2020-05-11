function png2gif --description 'convert pngs to gif file'
   ffmpeg -r 2 -f image2 -s 1920x1080 -i %1d.png -vcodec libx264 -crf 25 -pix_fmt yuv420p test.mp4 ; and ffmpeg -i test.mp4 -r 2 $argv.gif
end
