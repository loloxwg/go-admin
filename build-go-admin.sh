# !/bin/bash

# 如果是mac使用这个打包
# CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o go-admin main.go

# 如果是windows使用这个打包 自行测试
# SET CGO_ENABLED=0
# SET GOOS=linux
# SET GOARCH=amd64
# go build -o go-admin main.go

# 如果是linux环境使用这个打包
go build -o go-admin main.go

echo "复制文件到服务器"
echo "CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build main.go"
#调用上传文件脚本把打包好的go-admin二进制文件上传到服务器上
expect ./scpToServer.sh $i $j