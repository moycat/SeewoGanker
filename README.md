# SeewoGanker

Seewo智能电视的应用商店的山寨后台。可以自己添加APP给电视下载使用。

## 这是一个用途很窄的网站

只能给Seewo智能电视的应用商店使用。请在它的上游污染“app.seewo.com”的DNS到运行这个网站的服务器。然后就可以在应用商店里下载上传的应用了。

## 使用方法

因为时间匆促，也没什么要求，所以做得比较简单和粗糙……

直接架设起网站就行，新建个数据库导入sql文件，在网站根目录config.php里输入数据库信息。

在后台/admin添加分类和软件。默认管理员账号密码：seewoapp/seewoapp

**更新：seewo电视采用断点续传多线程下载，所以原先使用php模拟下载的做法无效。务必使用web服务端自带的rewrite功能提供下载，nginx的示例如下。**
**用PHP分析http头以文件指针模拟断点续传理论可行，但较复杂未予实现。**

## Nginx网站配置示例

**主要是重写部分，不存在的文件都重定向到index.php**
**下载部分靠nginx自己的rewrite完成，其他服务端请自己修改**

```
server {
	listen 80;
	listen [::]:80;

	root /service/seewoapp;
	index index.php index.html;
	server_name app.seewo.com test.seewo.com;

	location /store/apk/ {
		if ($args ~* "apkPath=(.*)$")
		{
			set $apkPath $1;
			rewrite (.*) /apk/$apkPath;
			break;
		}
		if ($args ~* "iconPath=(.*)$")
		{
			set $iconPath $1;
			rewrite (.*) /icon/$iconPath;
			break;
		}
	}
	
	location / {
		if (!-f $request_filename){
			rewrite (.*) /index.php;
		}
	}
	
	location ~ \.php$ {
		include snippets/fastcgi-php.conf;
		fastcgi_pass unix:/var/run/php5-fpm.sock;
	}
}
```

## 又一个坑

学校给每个教室换了一个Seewo牌子的智能电视，然而它那叫一个渣。

这个型号没WiFi，只能有线网络，我认了，弄个树莓派把学校的无线转成有线给它用。

自带的Android系统只有512M内存，4G储存，卡成狗，我认了，毕竟这渣还花了学校几万。

但是它还被阉割得惨不忍睹！只能通过自带的应用商店下那么几个可怜的应用。我知道这是因为这个牌子的智能电视就是教育用途的，然而我看着里面的“高考倒计时”还是决定把它干了。

虽然它自带了PC模块（其实就一电脑主机！连了个显示线），但是干电视还是多有趣的~不过不敢上传个一键Root，万一砖了只有卖肾赔了。