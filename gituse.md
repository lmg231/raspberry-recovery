### 安装 配置
```shell
sudo apt install git
git config --global user.name "Your Name"
git config --global user.email "name@example.com"
git config --global http.proxy 'socks5://192.168.0.103:7890'
git config --global https.proxy 'socks5://192.168.0.103:7890'
git config --global --unset http.proxy
git config --global --unset https.proxy
```


### 创建版本库
```shell
mkdir myrepo
cd myrepo
git init
touch first.txt
git add first.txt
git commit -m "add a file named first.txt"
```


### 查看状态
```shell
git status  
git diff first.txt
```


### 版本切换
```shell
git log --pretty=oneline   //查看提交历史

git reset --hard HEAD^		//向前倒退一个版本
git reset --hard HEAD^^		//向前倒退两个版本
git reset --hard HEAD~100	//向前倒退100个版本

git reflog       			//查看命令历史，用于找到任意某个版本的id
git reset --hard 1094a		//只要找到id，可进可退任意某个版本
```



### 工作区，暂存区
修改后必add，add后文件修改进入暂存区,commit提交，提交后暂存区清空
### 撤销修改
```shell
git restore file  				//撤销未放到缓冲区的修改
git restore --staged file   	//从缓冲区移出
```


### 删除与撤销删除
```shell
rm <file>
git add/rm <file>   //当作修改来看待，此时add与rm等效
git restore <file>  //当作修改来看待,撤销未放到缓冲区的修改
```
