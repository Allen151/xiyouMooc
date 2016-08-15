# xiyouMooc
##基于MVC框架的PHP项目-西邮慕课网

 西邮慕课”是一个模仿慕课网，共享视频资源和学习资料的网站。意在方便校内视频资源与学习资料的共享。
 实现了课程的分类检索以及订阅，学习资料的下载以及讨论区学员之间的交流。
 
 自定义MVC基本类似于ThinkPHP框架
 index.php为程序的入口文件，统一入口访问，定义自动加载类
 Application 应用目录 大部分程序所在 包含Controller Model js and View
 Framework 框架类  包含基础类，mysql帮助类和mysql帮助类接口  定义mysql和pdo两种mysql帮助类
 Public  公共类 包含了css 图片和视频  这里没有上传图片和视频
 xiyoumooc.sql   数据库文件
