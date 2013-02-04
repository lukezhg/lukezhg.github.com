---
layout: post
title: "try to use ubuntu to press"
date: 2013-02-04 12:17
comments: true
categories: 
tags: [ubuntu,github,octopress] 
---
以前使用的是windows下git环境更新octopress，现在想把所有与编程有关的东东都在ubuntu下完成。于是开始了折腾，并且折腾了很长时间。  
终于安装好了ubuntu并且初步使用布置好的git和ruby环境来更新博客。  

其实我是把windows下的所有博客项目有关的文件都拷贝到了ubuntu中来，然后在布置好环境的基础上实现正常使用的，居然真的可以。  

下面把遇到的问题记录汇总如下：  
一、安装和使用ubuntu过程中遇到的问题：  
1  安装ubuntu时遇到不能正常开机，或者进入系统后随机死机。  
2  安装ubuntu显卡驱动
3  无线链接不能建立，尽管密码正确。  

二、安装git和ruby遇到的问题：  
1  更新git版本耗时过长以至于不能完成  
2  使用rvm安装ruby时找不到1.9.3版本  
3  如何设置让打开终端时自动加载rvm  

三、布置octopress遇到的问题：  
1 明明安装了gem bundler, 但是执行bundle install时仍然提示安装gem bundler  
2 使用rake generate命令时报错  

问题解决方法：  
1.1  选择了一个64位的amd版本的ubuntu进行安装。  
[Ubuntu 12.04.1 LTS](http://releases.ubuntu.com/12.04/)  

1.2  我的显卡是amd的，所以需要在amd官方网上下载闭源驱动进行安装。  
[AMD Catalyst™ Proprietary Display Driver - Linux x86 & Linux x86_64](http://support.amd.com/us/gpudownload/linux/Pages/radeon_linux.aspx?type=2.4.1&product=2.4.1.3.42&lang=English)  

1.3  取消“启用无线”的勾选，然后在从新勾选上。  

2.1  使用https:而不是git:, 有可能是git被封造成的。  
参考：[Ubuntu git 安装和使用](http://www.linuxidc.com/Linux/2012-09/71193.htm)
将git clone git://git.kernel.org/pub/scm/git/git.git  
改为：git clone https://git.kernel.org/pub/scm/git/git.git  

2.2  跟换gem源，使用淘宝提供的源。  
参考：[在ubuntu中安装ruby 1.9.3_kingwmj_新浪博客](http://blog.sina.com.cn/s/blog_565e192a01013xjp.html)  
替换 gem 的 source：  
$ gem source -r http://rubygems.org/;gem source -a http://ruby.taobao.org  

2.3  更改.bash_profile  
参考：[在ubuntu中安装及使用rvm管理ruby版本 - 边晓宇@CSDN - 博客频道 - CSDN.NET](http://blog.csdn.net/abbuggy/article/details/8170899)  
在$HOME/.bash_profile文件中添加如下内容：  
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.    
以便在开启一个终端会话时候加载RVM  
或者手动键入：$ source ~/.rvm/scripts/rvm  
在或者将该内容添加到~/.bashrc文件末尾。  

3.1  更换源后从新安装gem bundler，此外我顺便安装了rails。参考同上。    

3.2  检查所有博文以及设置文件冒号后面都应该有一个空格。  我的就是在tag：后忘了留空格，结果rake generate总是报错。  

在摸索过程中经常使用的命令：   
1 sudo apt-get install appname  
2 rvm list known  
3 rvm list  
4 vi filename  
5 gedit filename  
6 rake generate  
7 rake preview  
8 rake deploy  
9 rake new_post["post title"]  
  cp  复制文件 到另外一个目录  
  mkdir 目录名创建一个目录  
  rmdir 空目录名删除一个空目录  
  rm 文件名文件名删除一个文件或多个文件  
  rm –rf 非空目录名删除一个非空目录下的一切  
  touch 文件名创建一个空文件  


参考文章：  
1  [在ubuntu中安装ruby 1.9.3_kingwmj_新浪博客](http://blog.sina.com.cn/s/blog_565e192a01013xjp.html)  
2  [使用Octopress遇到的问题 - 长老的 Octopress Blog](http://yangdd.github.com/blog/2012/09/14/issue/)
