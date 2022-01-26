# SockdContainer
## 简介
使用容器搭建socket5代理服务器
## 使用教程
```
git clone https://github.com/MacShi/SockdContainer.git

cd SockdContainer

vi sockd.conf
#sockd有ip白名单限制，需要编辑sockd.conf，将1.1.1.更改为socket5客户端的IP地址，然后保存退出。
#client pass {
#    from: 1.1.1.1/32  to: 0/0 
#}
#     |
#     |
#     V
#client pass {
#    from: 2.2.2.2/32  to: 0/0 
#}

docker-compose up -d
```

***注：如果出现`ERROR: Pool overlaps with other one on this address space`错误，请修改docker-compose.yml、sockd.conf配置文件中的IP信息。***[参考链接](https://blog.csdn.net/benpaodelulu_guajian/article/details/90546129)
