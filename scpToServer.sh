#!/usr/bin/expect -f

# 复制go-admin(和上面的build-go-admin.sh打包文件名保持一致)二进制文件到服务器/home/go/src/go-admin目录 root:服务器用户名
spawn scp go-admin root@47.110.161.238:/home/go/src/go-admin
#######################
expect {
  -re ".*es.*o.*" {
    exp_send "yes\r"
    exp_continue
  }
  -re ".*sword.*" {
    exp_send "Zxw199611210\r"
  }
}
interact