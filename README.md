## 安装创想云app、注册创想云账号
在运行打印服务之前一定要在移动端安装创想云app和注册创想云app账号  

IOS: https://tinyurl.com/CrealityiOS  
Android: https://tinyurl.com/CrealityAndroid

## 安装创想云树莓派打印服务
#### 安装服务
  获取服务程序: git clone https://github.com/crealitycloud/Creality-Cloud-RaspberryPi-.git

  安装服务程序: cd Creality-Cloud-RaspberryPi-/creality_raspberry && sudo ./creality_install

  ![节点](./picture/install.jpg)

  生成验证码： 

  ![节点](./picture/install.jpg)

  在app上输入验证码

  ![节点](./picture/1.png)
  
  ![节点](./picture/3.png)

  ![节点](./picture/4.png)

   ![节点](./picture/add_input.jpg)

  服务已激活（服务已启动，不需要再次启动，每次开机会自动启动）

  ![节点](./picture/finsh.jpg)

  ![节点](./picture/6.png)

## 启动服务
sudo systemctl start creality_printer.service
## 停止服务
sudo systemctl stop creality_printer.service

![节点](./picture/stop.jpg)


## 查看服务状态 
sudo systemctl status creality_printer.service
