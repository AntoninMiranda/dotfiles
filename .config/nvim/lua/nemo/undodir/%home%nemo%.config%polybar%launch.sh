Vim�UnDo� ˶��KK������5H��c���c7�,�ۺLf�      l    WIRELESS=$(ls /sys/class/net/ | grep ^wl | awk 'NR==1{print $1}') MONITOR=$m polybar --reload mainbar1 &   
   b                       e;��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             e;�B     �                 #!/usr/bin/env sh       $## Add this to your wm startup file.       )# Terminate already running bar instances   killall -q polybar       .# Wait until the processes have been shut down   ;while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done       # Launch bar1 and bar2   if type "xrandr"; then   D  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do   &    MONITOR=$m polybar --reload logo &   &    MONITOR=$m polybar --reload left &   '    MONITOR=$m polybar --reload music &   '    MONITOR=$m polybar --reload right &             done   else     polybar logo &     polybar left &     polybar music &     polybar right &   fi5��                                  K             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             e;�C    �                   �               5��                                          �      5�_�                     
   b    ����                                                                                                                                                                                                                                                                                                                                                             e;��    �   	            l    WIRELESS=$(ls /sys/class/net/ | grep ^wl | awk 'NR==1{print $1}') MONITOR=$m polybar --reload mainbar1 &5��    	   b              	   �             	       5��