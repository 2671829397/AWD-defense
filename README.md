
# AWD-defense
在AWD比赛中防御不死马的脚本

## 使用方方法：
## 1、指定删除一个或多个的不死马。
``` bash
bash sm3.sh <filename1> <fliename2>
```
示例：
![](https://github.com/user-attachments/assets/1b00a1c4-58e9-47dc-afc8-b1241d31dcba)

![](https://github.com/user-attachments/assets/be72715b-2939-4ca8-8002-ecd216ae9a40)

***

## 2、删除当前目录下指定用户（apache2、www-data）所属的文件。
``` bash
bash sm4.sh <onwer>
```
示例：

![](https://github.com/user-attachments/assets/71503682-6dee-4962-834b-afffeda88428)
![](https://github.com/user-attachments/assets/6c293681-203f-4ce0-b88f-96a652866852)
***

##  3、循环检测当前目录，删除指定用户所属文件。
``` bash
bash sm5.sh <onwer>
```
示例：

![](https://github.com/user-attachments/assets/ffbfbf42-e3f8-4e77-a77e-b90eb8cae96f)

每隔5s检测一次，由**POLL_INTERVAL**变量控制。

![](https://github.com/user-attachments/assets/0bae1b36-e519-4afa-a01d-b304ff3d5775)

不管是不是不死马都会删除。
***

**注意：**
- **删除不死马后创建的文件夹不需要改动；**
- **如果遇到较难删除的不死马，就多开一个端口运行杀马脚本。**
