# motion-webcam-server

use motion as a webcam server in docker

## my motion.conf

videodevice /dev/video1
width 640
height 480
framerate 30
ffmpeg_output_movies off
target_dir /tmp/motion
stream_maxrate 30
stream_localhost off