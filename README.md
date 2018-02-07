图书馆管理系统
======
</br>
基于JSP+Servlet+Mysql+JQuery（MVC）
实现基本的增删查修、还有分页。</br>
JQuery主要实现控制等待页面并进行跳转，还有获取input内的数据是否
为空。</br>
一建立数据库（数据库名mydb1表名为library）
</br>
1.ID随机生成(var,主键)</br>
2.书籍名称(var)</br>
3.作者(var)</br>
4.日期(var)</br>
5.零售价(var)</br>
6.库存(var)</br>
![数据库](https://raw.githubusercontent.com/wiki/baoqintian/Library-Management/a.PNG)
</br>
二建立Bean、Dao、Page、Service、Servlet包</br>
![Image text](https://raw.github.com/yourName/repositpry/master/yourprojectName/img-folder/test.jpg)
</br>
1.导入c3p0-0.95.2.jar、mchage-commons-java-0.2.11.jar、mysql-connector-java-5.0.8-bin、commons-dbutils-1.6.jar
三、在这个项目中学习到了
</br>
1.""和null是有区别
null是空对象，""是空字符串
如：
String s=null;//定义了一个对象实例s，但未将该实例指向任何内存空间
String s="";//定义了一个对象实例s，指向了一个空串</br>
2.c3p0-cgf.xml配置完后，并放在classes文件夹下，系统会自识别不用
加载java类QueryRunner 提供SQL语句操作的主要是1.query()2.update（数据库的插入/删除/更新）
（依赖于c3p0-0.95.2.jar和mchage-commons-java-0.2.11.jar,
mysql-connector-java-5.0.8-bin、commons-dbutils-1.6.jar）
