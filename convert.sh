 #!/bin/bash

# إنشاء مجلد الإخراج إذا لم يكن موجودًا
mkdir -p /app/output

# تنفيذ تحويل البث إلى جودة 360p
ffmpeg -i "https://live.teleradiocom.tj/8/3m.m3u8" \
-vf "scale=640:360" \
-c:v libx264 -preset veryfast -crf 23 \
-c:a aac -b:a 128k \
-f hls -hls_time 6 -hls_list_size 10 -hls_flags delete_segments \
/app/output/output360.m3u8
