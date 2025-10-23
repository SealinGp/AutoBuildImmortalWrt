#!/bin/sh
# 99-custom.sh 就是immortalwrt固件首次启动时运行的脚本 位于固件内的/etc/uci-defaults/99-custom.sh
# Log file for debugging
LOGFILE="/etc/config/uci-defaults-log.txt"
echo "Starting 99-custom.sh at $(date)" >>$LOGFILE
# 设置默认防火墙规则，方便单网口虚拟机首次访问 WebUI 
# 因为本项目中 单网口模式是dhcp模式 直接就能上网并且访问web界面 避免新手每次都要修改/etc/config/network中的静态ip
# 当你刷机运行后 都调整好了 你完全可以在web页面自行关闭 wan口防火墙的入站数据
# 具体操作方法：网络——防火墙 在wan的入站数据 下拉选项里选择 拒绝 保存并应用即可。
# WARN: 单网口请打开此配置!
# uci set firewall.@zone[1].input='ACCEPT'

# 设置主机名映射，解决安卓原生 TV 无法联网的问题
uci add dhcp domain
uci set "dhcp.@domain[-1].name=time.android.com"
uci set "dhcp.@domain[-1].ip=203.107.6.88"

#!/bin/sh
# 配置域名重定向 开始
uci add dhcp domain
uci set "dhcp.@domain[-1].name=ddnsgo.tparts.com"
uci set "dhcp.@domain[-1].ip=192.168.8.207"

uci add dhcp domain
uci set "dhcp.@domain[-1].name=gitea.tparts.com"
uci set "dhcp.@domain[-1].ip=192.168.8.207"

uci add dhcp domain
uci set "dhcp.@domain[-1].name=nas.tparts.com"
uci set "dhcp.@domain[-1].ip=192.168.8.207"

uci add dhcp domain
uci set "dhcp.@domain[-1].name=immortalwrt.tparts.com"
uci set "dhcp.@domain[-1].ip=192.168.8.3"

uci add dhcp domain
uci set "dhcp.@domain[-1].name=portainer.tparts.com"
uci set "dhcp.@domain[-1].ip=192.168.8.207"

uci add dhcp domain
uci set "dhcp.@domain[-1].name=alist.tparts.com"
uci set "dhcp.@domain[-1].ip=192.168.8.207"

uci add dhcp domain
uci set "dhcp.@domain[-1].name=home.tparts.com"
uci set "dhcp.@domain[-1].ip=192.168.8.207"
# 配置域名重定向 结束

# 配置静态IP分配 开始
uci add dhcp host
uci set "dhcp.@host[-1].name=leozhang"
uci set "dhcp.@host[-1].ip=192.168.8.160"
uci set "dhcp.@host[-1].mac=9A:C6:8A:AA:37:84"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=realme-GT5-Pro"
uci set "dhcp.@host[-1].ip=192.168.8.186"
uci set "dhcp.@host[-1].mac=FC:2A:46:A5:1A:DF"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=golf1"
uci set "dhcp.@host[-1].ip=192.168.8.104"
uci set "dhcp.@host[-1].mac=2C:CF:67:B6:C2:90"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=MacBookPro"
uci set "dhcp.@host[-1].ip=192.168.8.193"
uci set "dhcp.@host[-1].mac=46:98:3C:11:1B:76"

uci add dhcp host
uci set "dhcp.@host[-1].name=leozhanndiannao"
uci set "dhcp.@host[-1].ip=192.168.8.112"
uci set "dhcp.@host[-1].mac=84:21:41:F1:23:00"

uci add dhcp host
uci set "dhcp.@host[-1].name=liangyaru"
uci set "dhcp.@host[-1].ip=192.168.8.123"
uci add_list "dhcp.@host[-1].mac=4C:ED:FB:6B:62:E2"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=liangcuicui"
uci set "dhcp.@host[-1].ip=192.168.8.177"
uci add_list "dhcp.@host[-1].mac=D4:5D:64:47:6E:E7"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=slim"
uci set "dhcp.@host[-1].ip=192.168.8.231"
uci add_list "dhcp.@host[-1].mac=D8:BB:C1:54:78:60"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=laishihui"
uci set "dhcp.@host[-1].ip=192.168.8.120"
uci add_list "dhcp.@host[-1].mac=E8:9C:25:36:C6:E5"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=liuxuan"
uci set "dhcp.@host[-1].ip=192.168.8.162"
uci add_list "dhcp.@host[-1].mac=58:11:22:19:13:b1"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=zhangyingmei"
uci set "dhcp.@host[-1].ip=192.168.8.206"
uci add_list "dhcp.@host[-1].mac=58:11:22:0C:F4:0B"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=chenliu"
uci set "dhcp.@host[-1].ip=192.168.8.142"
uci add_list "dhcp.@host[-1].mac=2C:F0:5D:DA:82:0F"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=DESKTOP-83N4A2Rjunna"
uci set "dhcp.@host[-1].ip=192.168.8.127"
uci set "dhcp.@host[-1].mac=D8:BB:C1:A2:9F:71"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=DESKTOP-1EQCR82mandy"
uci set "dhcp.@host[-1].ip=192.168.8.143"
uci set "dhcp.@host[-1].mac=D8:BB:C1:C7:74:03"
uci add_list "dhcp.@host[-1].tag=proxy"

uci add dhcp host
uci set "dhcp.@host[-1].name=luo"
uci set "dhcp.@host[-1].ip=192.168.8.220"
uci set "dhcp.@host[-1].mac=FE:23:56:D4:C5:0B"
uci add_list "dhcp.@host[-1].tag=proxy"


uci add dhcp host
uci set "dhcp.@host[-1].name=DESKTOP-AOS0BVJjiamin"
uci set "dhcp.@host[-1].ip=192.168.8.156"
uci set "dhcp.@host[-1].mac=08:BF:B8:3E:7A:0D"

# 配置静态IP分配 结束


# 检查配置文件pppoe-settings是否存在 该文件由build.sh动态生成
SETTINGS_FILE="/etc/config/pppoe-settings"
if [ ! -f "$SETTINGS_FILE" ]; then
    echo "PPPoE settings file not found. Skipping." >>$LOGFILE
else
    # 读取pppoe信息($enable_pppoe、$pppoe_account、$pppoe_password)
    . "$SETTINGS_FILE"
fi

# 1. 先获取所有物理接口列表
ifnames=""
for iface in /sys/class/net/*; do
    iface_name=$(basename "$iface")
    if [ -e "$iface/device" ] && echo "$iface_name" | grep -Eq '^eth|^en'; then
        ifnames="$ifnames $iface_name"
    fi
done
ifnames=$(echo "$ifnames" | awk '{$1=$1};1')

count=$(echo "$ifnames" | wc -w)
echo "Detected physical interfaces: $ifnames" >>$LOGFILE
echo "Interface count: $count" >>$LOGFILE

# 2. 根据板子型号映射WAN和LAN接口
board_name=$(cat /tmp/sysinfo/board_name 2>/dev/null || echo "unknown")
echo "Board detected: $board_name" >>$LOGFILE

wan_ifname=""
lan_ifnames=""
# 此处特殊处理个别开发板网口顺序问题
case "$board_name" in
    "radxa,e20c"|"friendlyarm,nanopi-r5c")
        wan_ifname="eth1"
        lan_ifnames="eth0"
        echo "Using $board_name mapping: WAN=$wan_ifname LAN=$lan_ifnames" >>"$LOGFILE"
        ;;
    *)
        # 默认第一个接口为WAN，其余为LAN
        wan_ifname=$(echo "$ifnames" | awk '{print $1}')
        lan_ifnames=$(echo "$ifnames" | cut -d ' ' -f2-)
        echo "Using default mapping: WAN=$wan_ifname LAN=$lan_ifnames" >>"$LOGFILE"
        ;;
esac

# 3. 配置网络
if [ "$count" -eq 1 ]; then
    # 单网口设备，DHCP模式
    uci set network.lan.proto='dhcp'
    uci delete network.lan.ipaddr
    uci delete network.lan.netmask
    uci delete network.lan.gateway
    uci delete network.lan.dns
    uci commit network
elif [ "$count" -gt 1 ]; then
    # 多网口设备配置
    # 配置WAN
    uci set network.wan=interface
    uci set network.wan.device="$wan_ifname"
    uci set network.wan.proto='dhcp'

    # 配置WAN6
    uci set network.wan6=interface
    uci set network.wan6.device="$wan_ifname"
    uci set network.wan6.proto='dhcpv6'

    # 查找 br-lan 设备 section
    section=$(uci show network | awk -F '[.=]' '/\.@?device\[\d+\]\.name=.br-lan.$/ {print $2; exit}')
    if [ -z "$section" ]; then
        echo "error：cannot find device 'br-lan'." >>$LOGFILE
    else
        # 删除原有ports
        uci -q delete "network.$section.ports"
        # 添加LAN接口端口
        for port in $lan_ifnames; do
            uci add_list "network.$section.ports"="$port"
        done
        echo "Updated br-lan ports: $lan_ifnames" >>$LOGFILE
    fi

    # LAN口设置静态IP
    uci set network.lan.proto='static'
    # 多网口设备 支持修改为别的管理后台地址 在Github Action 的UI上自行输入即可 
    uci set network.lan.netmask='255.255.255.0'
    # 设置路由器管理后台地址
    IP_VALUE_FILE="/etc/config/custom_router_ip.txt"
    if [ -f "$IP_VALUE_FILE" ]; then
        CUSTOM_IP=$(cat "$IP_VALUE_FILE")
        # 用户在UI上设置的路由器后台管理地址
        uci set network.lan.ipaddr=$CUSTOM_IP
        echo "custom router ip is $CUSTOM_IP" >> $LOGFILE
    else
        uci set network.lan.ipaddr='192.168.8.1'
        echo "default router ip is 192.168.8.1" >> $LOGFILE
    fi

    # PPPoE设置
    echo "enable_pppoe value: $enable_pppoe" >>$LOGFILE
    if [ "$enable_pppoe" = "yes" ]; then
        echo "PPPoE enabled, configuring..." >>$LOGFILE
        uci set network.wan.proto='pppoe'
        uci set network.wan.username="$pppoe_account"
        uci set network.wan.password="$pppoe_password"
        uci set network.wan.peerdns='1'
        uci set network.wan.auto='1'
        uci set network.wan6.proto='none'
        echo "PPPoE config done." >>$LOGFILE
    else
        echo "PPPoE not enabled." >>$LOGFILE
    fi

    uci commit network
fi

# 若安装了dockerd 则设置docker的防火墙规则
# 扩大docker涵盖的子网范围 '172.16.0.0/12'
# 方便各类docker容器的端口顺利通过防火墙 
if command -v dockerd >/dev/null 2>&1; then
    echo "检测到 Docker，正在配置防火墙规则..."
    FW_FILE="/etc/config/firewall"

    # 删除所有名为 docker 的 zone
    uci delete firewall.docker

    # 先获取所有 forwarding 索引，倒序排列删除
    for idx in $(uci show firewall | grep "=forwarding" | cut -d[ -f2 | cut -d] -f1 | sort -rn); do
        src=$(uci get firewall.@forwarding[$idx].src 2>/dev/null)
        dest=$(uci get firewall.@forwarding[$idx].dest 2>/dev/null)
        echo "Checking forwarding index $idx: src=$src dest=$dest"
        if [ "$src" = "docker" ] || [ "$dest" = "docker" ]; then
            echo "Deleting forwarding @forwarding[$idx]"
            uci delete firewall.@forwarding[$idx]
        fi
    done
    # 提交删除
    uci commit firewall
    # 追加新的 zone + forwarding 配置
    cat <<EOF >>"$FW_FILE"

config zone 'docker'
  option input 'ACCEPT'
  option output 'ACCEPT'
  option forward 'ACCEPT'
  option name 'docker'
  list subnet '172.16.0.0/12'

config forwarding
  option src 'docker'
  option dest 'lan'

config forwarding
  option src 'docker'
  option dest 'wan'

config forwarding
  option src 'lan'
  option dest 'docker'
EOF

else
    echo "未检测到 Docker，跳过防火墙配置。"
fi

# 设置所有网口可访问网页终端
uci delete ttyd.@ttyd[0].interface

# 设置所有网口可连接 SSH
uci set dropbear.@dropbear[0].Interface=''
uci commit

# 设置编译作者信息
FILE_PATH="/etc/openwrt_release"
NEW_DESCRIPTION="Packaged by wukongdaily"
sed -i "s/DISTRIB_DESCRIPTION='[^']*'/DISTRIB_DESCRIPTION='$NEW_DESCRIPTION'/" "$FILE_PATH"

# 若luci-app-advancedplus (进阶设置)已安装 则去除zsh的调用 防止命令行报 /usb/bin/zsh: not found的提示
if opkg list-installed | grep -q '^luci-app-advancedplus '; then
    sed -i '/\/usr\/bin\/zsh/d' /etc/profile
    sed -i '/\/bin\/zsh/d' /etc/init.d/advancedplus
    sed -i '/\/usr\/bin\/zsh/d' /etc/init.d/advancedplus
fi

exit 0
