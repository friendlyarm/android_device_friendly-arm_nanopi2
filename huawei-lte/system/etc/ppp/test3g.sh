#!/system/bin/sh
set -x
PPPD_PID=
/system/bin/setprop "net.gprs.ppp-exit" ""
private_username=`/system/bin/getprop ril.private.username`
private_password=`/system/bin/getprop ril.private.password`
private_auth_type=`/system/bin/getprop ril.private.authtype`
dev_path=`/system/bin/getprop ril.data.device.path`
cmdline=$dev_path" 115200 mru 1280 mtu 1280 nodetach debug dump defaultroute usepeerdns novj novjccomp noipdefault ipcp-accept-local ipcp-accept-remote ipcp-max-configure 30 ipcp-max-failure 30 connect-delay 5000 lcp-restart 1 lcp-max-terminate 1 linkname ppp0 "
/system/bin/pppd $cmdline