#!/system/bin/sh
dev_path="/dev/ttyUSB2 "

cmdline="/system/bin/pppd "$dev_path" 921600 user card crtscts modem hide-password lock noauth nodetach defaultroute use
peerdns novj novjccomp noipdefault noccp ipcp-accept-local ipcp-accept-remote connect 'chat -s -v -f /etc/ppp/peers/chat
-wcdma-connect' disconnect 'chat -s -v -f /etc/ppp/peers/chat-wcdma-disconnect' mru 1280 mtu 1280 lcp-max-terminate 1 lc
p-restart 1"
eval $cmdline
