#!/bin/bash

GreenBG="\033[42;37m"
Font="\033[0m"

check_sys(){
	if [[ -f /etc/redhat-release ]]; then
		INS="yum"
	elif cat /etc/issue | grep -q -E -i "debian"; then
		INS="apt"
	elif cat /etc/issue | grep -q -E -i "ubuntu"; then
		INS="apt"
	elif cat /etc/issue | grep -q -E -i "centos|red hat|redhat"; then
		INS="yum"
	elif cat /proc/version | grep -q -E -i "debian"; then
		INS="apt"
	elif cat /proc/version | grep -q -E -i "ubuntu"; then
		INS="apt"
	elif cat /proc/version | grep -q -E -i "centos|red hat|redhat"; then
		INS="yum"
    fi
}

besttrace_exist_check() {
    if [[ -f "/ipiptest" ]]; then
        sleep 2
    else
        becewx
    fi
}

becewx() {
    $INS install -y unzip zip wget
    mkdir /ipiptest
	cd /ipiptest
	wget -nc --no-check-certificate https://cdn.ipip.net/17mon/besttrace4linux.zip
	unzip besttrace4linux.zip
	chmod +x besttrace

}

cvwcebt() {

echo -e "${GreenBG} 深圳电信 回程路由 ${Font}"
sleep 2
	./besttrace -q1 -g cn 183.56.167.125


echo -e "${GreenBG} 佛山电信 回程路由 ${Font}"
sleep 2
	./besttrace -q1 -g cn 119.145.148.29


echo -e "${GreenBG} 上海电信 回程路由 ${Font}"
sleep 2
    ./besttrace -q1 -g cn 101.86.119.13


echo -e "${GreenBG} 广州电信 回程路由 ${Font}"
sleep 2
    ./besttrace -q1 -g cn 113.114.170.49
	
	
echo -e "${GreenBG} ----------------电信 回程路由 完 ---------------- ${Font}"
}


cvwcebta() {

echo -e "${GreenBG} 深圳联通 回程路由 ${Font}"
sleep 2
	./besttrace -q1 -g cn 58.250.53.36


echo -e "${GreenBG} 佛山联通 回程路由 ${Font}"
sleep 2
	./besttrace -q1 -g cn 220.199.132.25


echo -e "${GreenBG} 上海联通 回程路由 ${Font}"
sleep 2
    ./besttrace -q1 -g cn 112.65.59.30


echo -e "${GreenBG} 广州联通 回程路由 ${Font}"
sleep 2
    ./besttrace -q1 -g cn 210.21.4.130


echo -e "${GreenBG} ----------------联通 回程路由 完 ---------------- ${Font}"
}


cvwcebtas() {

echo -e "${GreenBG} 深圳移动 回程路由 ${Font}"
sleep 2
	./besttrace -q1 -g cn 120.237.112.98


echo -e "${GreenBG} 佛山移动 回程路由 ${Font}"
sleep 2
	./besttrace -q1 -g cn 211.139.204.59


echo -e "${GreenBG} 上海移动 回程路由 ${Font}"
sleep 2
    ./besttrace -q1 -g cn 183.195.41.174


echo -e "${GreenBG} 广州移动 回程路由 ${Font}"
sleep 2
    ./besttrace -q1 -g cn 218.204.242.181


echo -e "${GreenBG} ----------------移动 回程路由 完 ---------------- ${Font}"


rm -rf /ipiptest


}

adwxcwwws() {

check_sys
becewx

cvwcebt
cvwcebta
cvwcebtas

}


adwxcwwws














	