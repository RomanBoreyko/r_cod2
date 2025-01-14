ffmpeg -framerate 30 -f x11grab -r 10 -s 1366x768 -i :0.0+0,0 -f pulse -ac 2 -ar 44100 -i default -vcodec libx264 -preset ultrafast -c:a aac -b:a 96k -f flv "rtmp://a.rtmp.youtube.com/live2/${1}"



ffmpeg -f x11grab -r 25 -s 1024x768 -i: 0.0 -vcodec huffyuv screencast.avi

-f указывает формат.
-s указывает разрешение
-r указывает частоту кадров.
-i указывает «входной файл», в данном случае экран.


Квинтисенция двадцати четырех часов агонии, в одном комментарии:
  
// склеить изображения в формате 1200:1920 и обрезать, дать каждому изображению по 0.7 секунды.
ffmpeg -framerate 1/0.7 -pattern_type glob -y -i '*.jpg' -vf 'scale=1200:1920:force_original_aspect_ratio=increase,crop=1150:1900,setsar=1' -c:v libx264 -crf 14 -r 25 -pix_fmt yuv420p -shortest out2.mp4

// склеить изображения в формате 1200:1920 и уместить в рамках за счет уменьшения, дать каждому изображению по 0.7 секунды.
ffmpeg -framerate 1/0.7 -pattern_type glob -y -i '*.jpg' -vf 'scale=1080:1920:force_original_aspect_ratio=decrease,pad=1080:1920:(ow-iw)/2:(oh-ih)/2,setsar=1'  -c:v libx264 -crf 14 -r 25 -pix_fmt yuv420p -shortest out1.mp4

// склеить аудио
ffmpeg -f concat -safe 0 -i <(printf "file '$PWD/%s'\n" *.mp3) -c copy output.mp3

// добавить трек к видео
ffmpeg -i 2.mp3 -i out2.mp4 out3.mp4 

// разрезать видео на ролики по 20секунд каждый
ffmpeg -i out3.mp4 -c:v copy -c:a copy -map 0  -segment_time 00:00:20 -f segment neurokitsch_short%02d.mp4