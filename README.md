# motion-webcam-server

use motion as a webcam server in docker

[motion's offical github](https://github.com/Motion-Project/motion)

## my motion.conf

```text
# Videodevice to be used for capturing  (default /dev/video0)
# for FreeBSD default is /dev/bktr0
videodevice /dev/video1

# Image width (pixels). Valid range: Camera dependent, default: 320
width 640

# Image height (pixels). Valid range: Camera dependent, default: 240
height 480

# Maximum number of frames to be captured per second.
# Valid range: 2-100. Default: 100 (almost no limit).
framerate 30

# Use ffmpeg to encode videos of motion (default: off)
ffmpeg_output_movies off

# Target base directory for pictures and films
# Recommended to use absolute path. (Default: current working directory)
target_dir /tmp/motion

# Maximum framerate for stream streams (default: 1)
stream_maxrate 30

# Restrict stream connections to localhost only (default: on)
stream_localhost off

```