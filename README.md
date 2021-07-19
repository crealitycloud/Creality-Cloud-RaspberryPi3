## 安装创想云app、注册创想云账号
在运行打印服务之前一定要在移动端安装创想云app和注册创想云app账号  

IOS: https://tinyurl.com/CrealityiOS  
Android: https://tinyurl.com/CrealityAndroid

## 安装创想云树莓派打印服务
#### 安装服务
  获取服务程序: git clone https://github.com/crealitycloud/Creality-Cloud-RaspberryPi3.git

  ![节点](./picture/git.png)

  进入程序安装目录：cd Creality-Cloud-RaspberryPi3/creality_raspberry

  ![节点](./picture/cd_path.png)

  执行程序安装脚本：sudo ./creality_install

  生成验证码： 

  ![节点](./picture/install.png)

  在app选择树莓派

  ![节点](./picture/add_rasp.jpg)

  扫码或输入验证码添加树莓派

  ![节点](./picture/add_import.jpg)
  
  ![节点](./picture/adding.jpg)

  ![节点](./picture/add_success.jpg)

  服务已激活（服务已启动，不需要再次启动，每次开机会自动启动）

## 启动服务
sudo systemctl start creality_printer.service
## 停止服务
sudo systemctl stop creality_printer.service

![节点](./picture/stop.jpg)


## 查看服务状态 
sudo systemctl status creality_printer.service
