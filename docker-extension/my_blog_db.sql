/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`my_blog_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `my_blog_db`;

/*Table structure for table `generator_test` */

DROP TABLE IF EXISTS `generator_test`;

CREATE TABLE `generator_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `test` varchar(100) NOT NULL COMMENT '�����ֶ�',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `generator_test` */

/*Table structure for table `jdbc_test` */

DROP TABLE IF EXISTS `jdbc_test`;

CREATE TABLE `jdbc_test` (
  `type` varchar(100) DEFAULT NULL COMMENT '����',
  `name` varchar(100) DEFAULT NULL COMMENT '����'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jdbc_test` */

insert  into `jdbc_test`(`type`,`name`) values ('com.zaxxer.hikari.HikariDataSource','hikari����Դ');
insert  into `jdbc_test`(`type`,`name`) values ('org.apache.commons.dbcp2.BasicDataSource','dbcp2����Դ');
insert  into `jdbc_test`(`type`,`name`) values ('test','������');
insert  into `jdbc_test`(`type`,`name`) values ('���2','������2');

/*Table structure for table `tb_admin_user` */

DROP TABLE IF EXISTS `tb_admin_user`;

CREATE TABLE `tb_admin_user` (
  `admin_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����Աid',
  `login_user_name` varchar(50) NOT NULL COMMENT '����Ա��½����',
  `login_password` varchar(50) NOT NULL COMMENT '����Ա��½����',
  `nick_name` varchar(50) NOT NULL COMMENT '����Ա��ʾ�ǳ�',
  `locked` tinyint(4) DEFAULT '0' COMMENT '�Ƿ����� 0δ���� 1�������޷���½',
  PRIMARY KEY (`admin_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_admin_user` */

insert  into `tb_admin_user`(`admin_user_id`,`login_user_name`,`login_password`,`nick_name`,`locked`) values (1,'admin','e10adc3949ba59abbe56e057f20f883e','ʮ��',0);

/*Table structure for table `tb_blog` */

DROP TABLE IF EXISTS `tb_blog`;

CREATE TABLE `tb_blog` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '���ͱ�����id',
  `blog_title` varchar(200) NOT NULL COMMENT '���ͱ���',
  `blog_sub_url` varchar(200) NOT NULL COMMENT '�����Զ���·��url',
  `blog_cover_image` varchar(200) NOT NULL COMMENT '���ͷ���ͼ',
  `blog_content` mediumtext NOT NULL COMMENT '��������',
  `blog_category_id` int(11) NOT NULL COMMENT '���ͷ���id',
  `blog_category_name` varchar(50) NOT NULL COMMENT '���ͷ���(�����ֶ�)',
  `blog_tags` varchar(200) NOT NULL COMMENT '���ͱ�ǩ',
  `blog_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-�ݸ� 1-����',
  `blog_views` bigint(20) NOT NULL DEFAULT '0' COMMENT '�Ķ���',
  `enable_comment` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-�������� 1-����������',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '�Ƿ�ɾ�� 0=�� 1=��',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���ʱ��',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog` */

insert  into `tb_blog`(`blog_id`,`blog_title`,`blog_sub_url`,`blog_cover_image`,`blog_content`,`blog_category_id`,`blog_category_name`,`blog_tags`,`blog_status`,`blog_views`,`enable_comment`,`is_deleted`,`create_time`,`update_time`) values (1,'����ʮ��','about','/admin/dist/img/rand/33.jpg','## About me\n\n����ʮ����һ��Java�����ߣ�����һ�㣬����ƽƽ������Ҳһֱ����������ͬʱҲŬ�����ţ�Ϊ�����������ź���Ҳϣ���ܹ�һֱ�����Լ�ϲ�������飬����ʱ�����ĵá�����һЩǳ���ľ��飬���Ժ��ϵò��������ˣ���˵�����Ѿ�������,��ȥ����Բ����\n\n���������λ�����Ҳ֪����ѧϰ��һ�������������ĵĹ��̣�������ʱ���Եú���������Ҳ������㣬�ɳ���������һ���п�����飬�κγɹ�������һ����ͣ���Ҫ��֡���Ҫ��������Ҫ������������ڿ��ܿ������ջ���Ϊ�Ƽ�ɵ����ķѵ�ʱ�䲻��һ�졣\n\n## Contact\n\n- �ҵ����䣺2449207463@qq.com\n- QQ��������Ⱥ��796794009\n- �ҵ���վ��http://13blog.site\n\n## Quote\n\n- Steve Jobs\n\n> Stay hungry,Stay foolish\n\n- Kahlil Gibran\n\n>The FIRST TIME WHEN I saw her being meek that she might attain height.<br>\nThe SECOND TIME WHEN I saw her limping BEFORE the crippled.<br>\nThe third TIME WHEN she was given TO choose BETWEEN the hard AND the easy, AND she chose the easy.<br>\nThe fourth TIME WHEN she COMMITTED a wrong, AND comforted herself that others also COMMIT wrong.<br>\nThe fifth TIME WHEN she forbore FOR weakness, AND attributed her patience TO strength.<br>\nThe sixth TIME WHEN she despised the ugliness of a face, AND knew NOT that it was ONE of her own masks.<br>\nAND the seventh TIME WHEN she sang a song of praise, AND deemed it a virtue.',20,'About','��������һ���ܿɰ�����,��������˾��ڿ���仰',1,219,0,0,'2017-03-12 00:31:15','2018-11-12 00:31:15');
insert  into `tb_blog`(`blog_id`,`blog_title`,`blog_sub_url`,`blog_cover_image`,`blog_content`,`blog_category_id`,`blog_category_name`,`blog_tags`,`blog_status`,`blog_views`,`enable_comment`,`is_deleted`,`create_time`,`update_time`) values (2,'������Ŀ¼','','/admin/dist/img/rand/13.jpg','<h2 id=\"springboot2\">23 ��ʵ�����������ת Spring Boot</h2>\n\n- [**��ƪ�ʣ���23 ��ʵ�����������ת Spring Boot������**](https://www.shiyanlou.com/courses/1274)\n- [��02�Σ�Spring Boot ��Ŀ���������](https://www.shiyanlou.com/courses/1274)\n- [��03�Σ����ٹ��� Spring Boot Ӧ��](https://www.shiyanlou.com/courses/1274)\n- [��04�Σ�Spring Boot �������ܿ���](https://www.shiyanlou.com/courses/1274)\n- [��05�Σ�Spring Boot ��Ŀ����֮ web ��Ŀ��������](https://www.shiyanlou.com/courses/1274)\n- [��06�Σ�Spring Boot ���� JSP ���� web ��Ŀ](https://www.shiyanlou.com/courses/1274)\n- [��07�Σ�ģ��������ܼ� Spring Boot ���� Thymeleaf](https://www.shiyanlou.com/courses/1274)\n- [��08�Σ�Thymeleaf �﷨���](https://www.shiyanlou.com/courses/1274)\n- [��09�Σ�FreeMarker ģ����������ʹ�ý̳�](https://www.shiyanlou.com/courses/1274)\n- [��10�Σ�Spring Boot �����ļ��ϴ���·������](https://www.shiyanlou.com/courses/1274)\n- [��11�Σ�Spring Boot �Զ���������Դ���������ݿ�](https://www.shiyanlou.com/courses/1274)\n- [��12�Σ�Spring Boot ���� Druid ����Դ](https://www.shiyanlou.com/courses/1274)\n- [��13�Σ�Spring Boot ���� MyBatis �������ݿ�](https://www.shiyanlou.com/courses/1274)\n- [��14�Σ�Spring Boot �е�������](https://www.shiyanlou.com/courses/1274)\n- [��15�Σ�Spring Boot ���� Redis ��������ģ��](https://www.shiyanlou.com/courses/1274)\n- [��16�Σ�Spring Boot ��Ŀ����֮ʵ�ֶ�ʱ����](https://www.shiyanlou.com/courses/1274)\n- [��17�Σ�Spring Boot �Զ������ҳ��](https://www.shiyanlou.com/courses/1274)\n- [��18�Σ�Spring Boot ���� Swagger ���ɽӿ��ĵ�](https://www.shiyanlou.com/courses/1274)\n- [��19�Σ�Spring Boot ��Ŀ����������](https://www.shiyanlou.com/courses/1274)\n- [��20�Σ�Spring Boot Admin ���ܼ�����ʹ��](https://www.shiyanlou.com/courses/1274)\n- [��21�Σ�Spring Boot ��Ѷ������Ϣϵͳ����ʵս(һ)](https://www.shiyanlou.com/courses/1274)\n- [��22�Σ�Spring Boot ��Ѷ������Ϣϵͳ����ʵս(��)](https://www.shiyanlou.com/courses/1274)\n- [��23�Σ�Spring Boot ��Ѷ������Ϣϵͳ����ʵս(��)](https://www.shiyanlou.com/courses/1274)\n- [��24�Σ�Spring Boot ��Ѷ������Ϣϵͳ����ʵս(��)](https://www.shiyanlou.com/courses/1274)\n\n<h2 id=\"springboot1\">Spring Boot ���ż�ǰ��˷�����Ŀʵ��</h2>\n\n* [��ƪ�ʣ�SpringBoot���ż�ǰ��˷�����Ŀʵ������](https://www.shiyanlou.com/courses/1244)\n* [��02�Σ�������ʶ Spring Boot ����ջ](https://www.shiyanlou.com/courses/1244)\n* [��03�Σ����������](https://www.shiyanlou.com/courses/1244)\n* [��04�Σ����ٹ��� Spring Boot Ӧ��](https://www.shiyanlou.com/courses/1244)\n* [��05�Σ�Spring Boot ֮���� web ���ܿ���](https://www.shiyanlou.com/courses/1244)\n* [��06�Σ�Spring Boot ֮���ݿ����Ӳ���](https://www.shiyanlou.com/courses/1244)\n* [��07�Σ�Spring Boot ���� MyBatis �������ݿ�](https://www.shiyanlou.com/courses/1244)\n* [��08�Σ�Spring Boot �����ļ��ϴ���·������](https://www.shiyanlou.com/courses/1244)\n* [��09�Σ�Spring Boot ��Ŀʵ��֮ǰ��˷������](https://www.shiyanlou.com/courses/1244)\n* [��10�Σ�Spring Boot ��Ŀʵ��֮ API ���](https://www.shiyanlou.com/courses/1244)\n* [��11�Σ�Spring Boot ��Ŀʵ��֮��¼ģ��ʵ��](https://www.shiyanlou.com/courses/1244)\n* [��12�Σ�Spring Boot ��Ŀʵ��֮��ҳ����ʵ��](https://www.shiyanlou.com/courses/1244)\n* [��13�Σ�Spring Boot ��Ŀʵ��֮jqgrid��ҳ����](https://www.shiyanlou.com/courses/1244)\n* [��14�Σ�Spring Boot ��Ŀʵ��֮�༭����ʵ��](https://www.shiyanlou.com/courses/1244)\n* [��15�Σ�Spring Boot ��Ŀʵ��֮�û�����ģ��ʵ��](https://www.shiyanlou.com/courses/1244)\n* [��16�Σ�Spring Boot ��Ŀʵ��֮ͼƬ����ģ��](https://www.shiyanlou.com/courses/1244)\n* [��17�Σ�Spring Boot ��Ŀʵ��֮���ı��༭�����ܼ�����](https://www.shiyanlou.com/courses/1244)\n* [��18�Σ�Spring Boot ��Ŀʵ��֮��Ϣ����ģ��ʵ��](https://www.shiyanlou.com/courses/1244)\n\n<h2 id=\"ssm4\">���㿪ʼ�һ��������ʵ�õĹ����̨</h2>\n\n- [SSM �����ʵ�õĹ���ϵͳ](http://gitbook.cn/m/mazi/comp/column?columnId=5b4dae389bcda53d07056bc9&sceneId=22778a708b0f11e8974b497483da0812)\n- [�������Լ�����ʵ�� JavaWeb ��̨����ϵͳ](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4db47e9bcda53d07056f5f)\n- [��01�Σ�Spring MVC+ Spring + Mybatis �������ܡ�����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4db5b89bcda53d070590de)\n- [��02�Σ�ǰ��׼�����������������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4eb8e701d18a561f341b72)\n- [��03�Σ������ܵ�����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4ee11c01d18a561f342c0f)\n- [��04�Σ�Tomcat 8 ��װ���𼰹��ܸ���](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1335dbb1436093a6ca17)\n- [��05�Σ���Ʒ���֮�����ʵ�õĺ�̨����ϵͳ](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1b35dbb1436093a6cc7a)\n- [��06�Σ�ǰ��ѡ�� AdminLTE3](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1b70dbb1436093a6cc87)\n- [��07�Σ���¼ģ���ϵͳ��ƺ�ʵ��](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1b80dbb1436093a6cc8e)\n- [��08�Σ�ʹ�� JqGrid ���ʵ�ַ�ҳ����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1b92dbb1436093a6cc93)\n- [��09�Σ�����������ϡ���������Ӻ��޸Ĺ���](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1bbddbb1436093a6cc9b)\n- [��10�Σ�ͼƬ����ģ��](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1bd0dbb1436093a6cca1)\n- [��11�Σ���ͼ�ϴ�����ļ���Ƭ�ϴ����ϵ�����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1bdedbb1436093a6cca2)\n- [��12�Σ��ļ����뵼������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1beddbb1436093a6cca8)\n- [��13�Σ����ı���Ϣ����ģ��](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c00dbb1436093a6ccae)\n- [��14�Σ�SweetAlert ������ϼ���������ʵ��](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c11dbb1436093a6ccb1)\n- [��15�Σ���Ŀ��������Linux �����������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c21dbb1436093a6ccb6)\n- [��16�Σ���Ŀ�Ż�ƪ֮��־���](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c30dbb1436093a6ccbb)\n- [��17�Σ���Ŀ�Ż�֮��Ԫ����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c3fdbb1436093a6ccc1)\n- [��18�Σ���Ŀ�Ż�֮���ݿ����ӳ�](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c50dbb1436093a6ccca)\n- [��19�Σ���Ŀ�Ż�֮ Druid ����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c65dbb1436093a6cccd)\n- [��20�Σ���Ŀ�Ż�֮��������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c7cdbb1436093a6ccd6)\n- [��21�Σ���վ�ܹ��ݽ��� Nginx ����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c8bdbb1436093a6ccda)\n- [��22�Σ�Nginx + Tomcat ��Ⱥ�](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c9ddbb1436093a6cce2)\n- [��23�Σ�Nginx ��������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1cb7dbb1436093a6cceb)\n\n<h2 id=\"ssm3\">SSM���Ͻ���ƪ</h2>\n\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��һ�����һ�׺õ�RESTful API](http://www.cnblogs.com/han-1034683568/p/7196345.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ������RESTful APIʵս�ʼ�(�ӿ���Ƽ�Java���ʵ��)](http://www.cnblogs.com/han-1034683568/p/7300547.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ������ʹ��ajax����ʵ��form�����ύ](http://www.cnblogs.com/han-1034683568/p/7199168.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���ģ�RESTfulʵս(ǰ�˴����޸�)](http://www.cnblogs.com/han-1034683568/p/7552007.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���壩��¼һ�´��¶������RESTful�Ĺ���](http://www.cnblogs.com/han-1034683568/p/7569870.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ������һ��ҪRESTful��](http://www.cnblogs.com/han-1034683568/p/7663641.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���ߣ�һ������Mysql���ݿ�����¹ʵļ�¼](http://www.cnblogs.com/han-1034683568/p/7787659.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���ˣ�����Mysql���ݿ�����¹ʵ�ԭ��ʹ���](http://www.cnblogs.com/han-1034683568/p/7822237.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���ţ�Linux�°�װredis��redis�ĳ�������Ͳ���](http://www.cnblogs.com/han-1034683568/p/7862188.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ��easyUI����KindEditor��ϸ�̳�](http://www.cnblogs.com/han-1034683568/p/7930542.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮһ��redis�������á���ȫ����](http://www.cnblogs.com/han-1034683568/p/7978577.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ����Spring����Redis����](http://www.cnblogs.com/han-1034683568/p/7994231.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ����MyBatis+MySQL���ز��������id](http://www.cnblogs.com/han-1034683568/p/8305122.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ�ģ�Redis��ȷ��ʹ������](http://www.cnblogs.com/han-1034683568/p/8406497.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ�壩�׶��ܽ�](http://www.cnblogs.com/han-1034683568/p/9069008.html)\n\n<h2 id=\"idea\">Intellij IDEA��رʼ�</h2>\n\n- [��β鿴IntelliJ IDEA�İ汾��Ϣ](http://www.cnblogs.com/han-1034683568/p/9135192.html)\n- [Plugin \'Lombok Plugin\' is incompatible with this installation](http://www.cnblogs.com/han-1034683568/p/9135074.html)\n- [IDEA��װLombok���ʧ�ܵĽ������](http://www.cnblogs.com/han-1034683568/p/9134980.html)\n- [Intellij IDEA debugģʽ����Ŀ������/�޷��������¼�������̼�¼](http://www.cnblogs.com/han-1034683568/p/8603588.html)\n- [Intellij IDEA�鿴���жϵ�](http://www.cnblogs.com/han-1034683568/p/8603110.html)\n- [IntelliJ IDEA ����Error:java: δ�������ַ�������](http://www.cnblogs.com/han-1034683568/p/6439723.html)\n- [IntelliJ IDEA ���ÿ�ݼ�mac��](http://www.cnblogs.com/han-1034683568/p/6492342.html)\n\n<h2 id=\"diary\">�ճ��ּ�</h2>\n\n- [����mac��ӡ��ʼǵĴ����](http://www.cnblogs.com/han-1034683568/p/9021263.html)\n- [����Ա������ô��ôæ��](http://www.cnblogs.com/han-1034683568/p/8968959.html)\n- [�¹������Ʒ�����ECS����֮���޷�ssh���ӵ����⴦��](http://www.cnblogs.com/han-1034683568/p/8856560.html)\n- [CentOS 7.2:Failed to start IPv4 firewall with iptables](http://www.cnblogs.com/han-1034683568/p/8854613.html)\n- [JDK8 stream toMap() java.lang.IllegalStateException: Duplicate key�쳣���(key�ظ�)](http://www.cnblogs.com/han-1034683568/p/8624447.html)\n- [���ڲ���԰����һ��С��](http://www.cnblogs.com/han-1034683568/p/8443428.html)\n- [��¼һ���ҵ�2017���Ķ��鵥](http://www.cnblogs.com/han-1034683568/p/8432261.html)\n- [2017�ܽ�](http://www.cnblogs.com/han-1034683568/p/8337394.html)\n- [΢�Ź��ں����⣺{\"errcode\":40125,\"errmsg\":\"invalid appsecret, view more at http:\\/\\/t.cn\\/LOEdzVq, hints: [ req_id: kL8J90219sg58 ]\"}](http://www.cnblogs.com/han-1034683568/p/8286777.html)\n- [gitɾ�����ط�֧](http://www.cnblogs.com/han-1034683568/p/8241369.html)\n- [����Ͱ�Java������Լ���p3c��ϸ�̳̼�ʹ�ø���](http://www.cnblogs.com/han-1034683568/p/7682594.html)\n- [����ٷ�Java����淶��׼������Ͱ�Java�����ֲ� �ռ��� v1.3.0������](http://www.cnblogs.com/han-1034683568/p/7680354.html)\n- [����Ա�ӽǣ�¹�Ϲ�����������ΰ�΢����ը�ģ�](http://www.cnblogs.com/han-1034683568/p/7642213.html)\n- [could not resolve host: github.com �������취](http://www.cnblogs.com/han-1034683568/p/6457894.html)\n- [ʹ��git�ָ�δ�ύ����ɾ����](http://www.cnblogs.com/han-1034683568/p/6444937.html)\n- [springboot����access_log��־���](http://www.cnblogs.com/han-1034683568/p/6963144.html)\n- [Error: Cannot find module \'gulp-clone\'����Ľ��](http://www.cnblogs.com/han-1034683568/p/6479288.html)\n- [Markdown�﷨���⼰MWebʹ�ý̳�](http://www.cnblogs.com/han-1034683568/p/6556348.html)\n- [javax.net.ssl.SSLHandshakeException: No appropriate protocol (protocol is disabled or cipher suites are inappropriate)](http://www.cnblogs.com/han-1034683568/p/7009096.html)\n- [org.springframework.data.redis.serializer.SerializationException: Cannot serialize;](http://www.cnblogs.com/han-1034683568/p/7994322.html)\n\n<h2 id=\"13blog\">My Blog</h2>\n\n- [Docker+SpringBoot+Mybatis+thymeleaf��Java����ϵͳ��Դ��](http://www.cnblogs.com/han-1034683568/p/6840493.html)\n- [My-Blog����̣������һ����վ���㵽�������߷���](http://www.cnblogs.com/han-1034683568/p/6885545.html)\n- [�����ݵĳ�ʼ���ŵ�docker�е�������������(�����¼)](http://www.cnblogs.com/han-1034683568/p/6941313.html)\n- [����Dockerfile����mysql����ʵ�����ݵĳ�ʼ����Ȩ������](http://www.cnblogs.com/han-1034683568/p/6941337.html)\n- [���Docker����ʱ����ʱ�䲻ͬ��������](http://www.cnblogs.com/han-1034683568/p/6957132.html)\n- [Java��Դ����My-Blog֮docker����������޸�](http://www.cnblogs.com/han-1034683568/p/7102765.html)\n- [����shell�ű�ʱ����\"\\[\\[ : not found\"�������](http://www.cnblogs.com/han-1034683568/p/7211392.html)\n- [shell�ű����ַ����ĳ���������\"command not found\"������(��Դ��)](http://www.cnblogs.com/han-1034683568/p/7217047.html)\n- [Java��Դ����My-Blog֮mysql�����ظ���ʼ��������bug�޸�����](http://www.cnblogs.com/han-1034683568/p/7231895.html)\n- [Mybatis-Generator����Mapper�ļ���if test=\"criteria.valid\"��������](http://www.cnblogs.com/han-1034683568/p/7281474.html)\n- [Springboot��Thymeleafģ���������ϻ����̳�](http://www.cnblogs.com/han-1034683568/p/7520012.html)\n- [thymeleafģ���������java���еķ���](http://www.cnblogs.com/han-1034683568/p/7527564.html)\n\n<h2 id=\"message-attack\">���Žӿڹ����¼�</h2>\n\n- [���ŷ��ͽӿڱ�������ʵ����繥���¼�(һ)���ŵ�����ս��ʤ](http://www.cnblogs.com/han-1034683568/p/6973269.html)\n- [���ŷ��ͽӿڱ�������ʵ����繥���¼�(��)�ⲫս-��ֹ��������](http://www.cnblogs.com/han-1034683568/p/7001785.html)\n- [���ŷ��ͽӿڱ�������ʵ����繥���¼�(��)��λ����IP����־�����ű�](http://www.cnblogs.com/han-1034683568/p/7040417.html)\n- [���ŷ��ͽӿڱ�������ʵ����繥���¼�(��)���ƪ--�WAF����ս��](http://www.cnblogs.com/han-1034683568/p/7090409.html)\n\n<h2 id=\"read\">����ʼ�</h2>\n\n- [��ʵսjava�߲���������ơ�Դ����������ʼ�](http://www.cnblogs.com/han-1034683568/p/6918160.html)\n- [��������վ�����ܹ�:����ԭ���밸������������ʼ�](http://www.cnblogs.com/han-1034683568/p/7597564.html)\n- [������վ�����ܹ�(��)--������վ�ܹ��ݻ�](http://www.cnblogs.com/han-1034683568/p/8423447.html)\n- [������վ�����ܹ�(��)--�ܹ�ģʽ](http://www.cnblogs.com/han-1034683568/p/8677349.html)\n- [������վ�����ܹ�(��)--���ļܹ�Ҫ��](http://www.cnblogs.com/han-1034683568/p/9049758.html)\n\n<h2 id=\"ssm2\">SSM�����Ż�ƪ</h2>\n\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��һ��System.out.print��Log](http://www.cnblogs.com/han-1034683568/p/6637914.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ������Log4j����������](http://www.cnblogs.com/han-1034683568/p/6641808.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ�������������](http://www.cnblogs.com/han-1034683568/p/6642306.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���ģ���Ԫ����ʵ��](http://www.cnblogs.com/han-1034683568/p/6649077.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���壩���MockMvc���з���˵ĵ�Ԫ����](http://www.cnblogs.com/han-1034683568/p/6653620.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ������easyUI�븻�ı��༭��UEditor����](http://www.cnblogs.com/han-1034683568/p/6664660.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���ߣ�ͼƬ�ϴ�����](http://www.cnblogs.com/han-1034683568/p/6692150.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���ˣ������Ż�����С�Ǽ������²�](http://www.cnblogs.com/han-1034683568/p/6706158.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���ţ����ݲ��Ż�-jdbc���ӳؼ�����druid���](http://www.cnblogs.com/han-1034683568/p/6719298.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮ�����ݲ��Ż�-����druid](http://www.cnblogs.com/han-1034683568/p/6725191.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮһ�����ݲ��Ż�-druid��ؼ���sql��¼](http://www.cnblogs.com/han-1034683568/p/6730869.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮ�������ݲ��Ż�-explain�ؼ��ּ���sql�Ż�](http://www.cnblogs.com/han-1034683568/p/6758578.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮ�������ݲ��Ż�-��淶�������Ż�](http://www.cnblogs.com/han-1034683568/p/6768807.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮ�ģ�̸̸д���͵�ԭ�����Ŀ�Ż�](http://www.cnblogs.com/han-1034683568/p/6782019.html)\n\n<h2 id=\"ssm1\">SSM���ϻ���ƪ</h2>\n\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ��һ����Ŀ����������ѡ�ͽ���](http://www.cnblogs.com/han-1034683568/p/6440090.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ������ţ��С��](http://www.cnblogs.com/han-1034683568/p/6440157.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ�����������](http://www.cnblogs.com/han-1034683568/p/6476827.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���ģ������](http://www.cnblogs.com/han-1034683568/p/6476852.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���壩��һ��maven](http://www.cnblogs.com/han-1034683568/p/6486117.html)\n- [Maven������Ŀ�ٶ�̫���Ľ���취](http://www.cnblogs.com/han-1034683568/p/6498637.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ������maven����SSM](http://www.cnblogs.com/han-1034683568/p/6507186.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���ߣ�JDBC url�����Ӳ���](http://www.cnblogs.com/han-1034683568/p/6512215.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���ˣ�mysql���Ĳ�ѯbug�޸�](http://www.cnblogs.com/han-1034683568/p/6517344.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���ţ��汾����](http://www.cnblogs.com/han-1034683568/p/6540079.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ��ʮ��SVN�](http://www.cnblogs.com/han-1034683568/p/6545751.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ��ʮһ��SVN����������](http://www.cnblogs.com/han-1034683568/p/6551498.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ��ʮ�����׶��ܽ�](http://www.cnblogs.com/han-1034683568/p/6562092.html)',24,'�ճ����','Ŀ¼',1,15,0,0,'2019-04-24 15:42:23','2019-04-24 15:42:23');
insert  into `tb_blog`(`blog_id`,`blog_title`,`blog_sub_url`,`blog_cover_image`,`blog_content`,`blog_category_id`,`blog_category_name`,`blog_tags`,`blog_status`,`blog_views`,`enable_comment`,`is_deleted`,`create_time`,`update_time`) values (3,'Spring+SpringMVC+MyBatis����ϵ��(easyUI��AdminLte3)','','/admin/dist/img/rand/36.jpg','## ʵսƪ�����ѽ̳̣�\n\n- [SSM �����ʵ�õĹ���ϵͳ](http://gitbook.cn/m/mazi/comp/column?columnId=5b4dae389bcda53d07056bc9&sceneId=22778a708b0f11e8974b497483da0812)\n- [�������Լ�����ʵ�� JavaWeb ��̨����ϵͳ](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4db47e9bcda53d07056f5f)\n- [��01�Σ�Spring MVC+ Spring + Mybatis �������ܡ�����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4db5b89bcda53d070590de)\n- [��02�Σ�ǰ��׼�����������������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4eb8e701d18a561f341b72)\n- [��03�Σ������ܵ�����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4ee11c01d18a561f342c0f)\n- [��04�Σ�Tomcat 8 ��װ���𼰹��ܸ���](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1335dbb1436093a6ca17)\n- [��05�Σ���Ʒ���֮�����ʵ�õĺ�̨����ϵͳ](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1b35dbb1436093a6cc7a)\n- [��06�Σ�ǰ��ѡ�� AdminLTE3](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1b70dbb1436093a6cc87)\n- [��07�Σ���¼ģ���ϵͳ��ƺ�ʵ��](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1b80dbb1436093a6cc8e)\n- [��08�Σ�ʹ�� JqGrid ���ʵ�ַ�ҳ����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1b92dbb1436093a6cc93)\n- [��09�Σ�����������ϡ���������Ӻ��޸Ĺ���](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1bbddbb1436093a6cc9b)\n- [��10�Σ�ͼƬ����ģ��](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1bd0dbb1436093a6cca1)\n- [��11�Σ���ͼ�ϴ�����ļ���Ƭ�ϴ����ϵ�����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1bdedbb1436093a6cca2)\n- [��12�Σ��ļ����뵼������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1beddbb1436093a6cca8)\n- [��13�Σ����ı���Ϣ����ģ��](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c00dbb1436093a6ccae)\n- [��14�Σ�SweetAlert ������ϼ���������ʵ��](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c11dbb1436093a6ccb1)\n- [��15�Σ���Ŀ��������Linux �����������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c21dbb1436093a6ccb6)\n- [��16�Σ���Ŀ�Ż�ƪ֮��־���](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c30dbb1436093a6ccbb)\n- [��17�Σ���Ŀ�Ż�֮��Ԫ����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c3fdbb1436093a6ccc1)\n- [��18�Σ���Ŀ�Ż�֮���ݿ����ӳ�](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c50dbb1436093a6ccca)\n- [��19�Σ���Ŀ�Ż�֮ Druid ����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c65dbb1436093a6cccd)\n- [��20�Σ���Ŀ�Ż�֮��������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c7cdbb1436093a6ccd6)\n- [��21�Σ���վ�ܹ��ݽ��� Nginx ����](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c8bdbb1436093a6ccda)\n- [��22�Σ�Nginx + Tomcat ��Ⱥ�](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1c9ddbb1436093a6cce2)\n- [��23�Σ�Nginx ��������](https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9/topic/5b4f1cb7dbb1436093a6cceb)\n\n## ����ƪ����ѿ�Դ��\n\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��һ�����һ�׺õ�RESTful API](http://www.cnblogs.com/han-1034683568/p/7196345.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ������RESTful APIʵս�ʼ�(�ӿ���Ƽ�Java���ʵ��)](http://www.cnblogs.com/han-1034683568/p/7300547.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ������ʹ��ajax����ʵ��form�����ύ](http://www.cnblogs.com/han-1034683568/p/7199168.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���ģ�RESTfulʵս(ǰ�˴����޸�)](http://www.cnblogs.com/han-1034683568/p/7552007.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���壩��¼һ�´��¶������RESTful�Ĺ���](http://www.cnblogs.com/han-1034683568/p/7569870.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ������һ��ҪRESTful��](http://www.cnblogs.com/han-1034683568/p/7663641.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���ߣ�һ������Mysql���ݿ�����¹ʵļ�¼](http://www.cnblogs.com/han-1034683568/p/7787659.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���ˣ�����Mysql���ݿ�����¹ʵ�ԭ��ʹ���](http://www.cnblogs.com/han-1034683568/p/7822237.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ���ţ�Linux�°�װredis��redis�ĳ�������Ͳ���](http://www.cnblogs.com/han-1034683568/p/7862188.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ��easyUI����KindEditor��ϸ�̳�](http://www.cnblogs.com/han-1034683568/p/7930542.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮһ��redis�������á���ȫ����](http://www.cnblogs.com/han-1034683568/p/7978577.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ����Spring����Redis����](http://www.cnblogs.com/han-1034683568/p/7994231.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ����MyBatis+MySQL���ز��������id](http://www.cnblogs.com/han-1034683568/p/8305122.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ�ģ�Redis��ȷ��ʹ������](http://www.cnblogs.com/han-1034683568/p/8406497.html)\n- [Spring+SpringMVC+MyBatis+easyUI���Ͻ���ƪ��ʮ�壩�׶��ܽ�](http://www.cnblogs.com/han-1034683568/p/9069008.html)\n\n\n## �Ż�ƪ����ѿ�Դ��\n\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��һ��System.out.print��Log](http://www.cnblogs.com/han-1034683568/p/6637914.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ������Log4j����������](http://www.cnblogs.com/han-1034683568/p/6641808.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ�������������](http://www.cnblogs.com/han-1034683568/p/6642306.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���ģ���Ԫ����ʵ��](http://www.cnblogs.com/han-1034683568/p/6649077.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���壩���MockMvc���з���˵ĵ�Ԫ����](http://www.cnblogs.com/han-1034683568/p/6653620.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ������easyUI�븻�ı��༭��UEditor����](http://www.cnblogs.com/han-1034683568/p/6664660.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���ߣ�ͼƬ�ϴ�����](http://www.cnblogs.com/han-1034683568/p/6692150.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���ˣ������Ż�����С�Ǽ������²�](http://www.cnblogs.com/han-1034683568/p/6706158.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ���ţ����ݲ��Ż�-jdbc���ӳؼ�����druid���](http://www.cnblogs.com/han-1034683568/p/6719298.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮ�����ݲ��Ż�-����druid](http://www.cnblogs.com/han-1034683568/p/6725191.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮһ�����ݲ��Ż�-druid��ؼ���sql��¼](http://www.cnblogs.com/han-1034683568/p/6730869.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮ�������ݲ��Ż�-explain�ؼ��ּ���sql�Ż�](http://www.cnblogs.com/han-1034683568/p/6758578.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮ�������ݲ��Ż�-��淶�������Ż�](http://www.cnblogs.com/han-1034683568/p/6768807.html)\n- [Spring+SpringMVC+MyBatis+easyUI�����Ż�ƪ��ʮ�ģ�̸̸д���͵�ԭ�����Ŀ�Ż�](http://www.cnblogs.com/han-1034683568/p/6782019.html)\n\n\n## ����ƪ����ѿ�Դ��\n\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ��һ����Ŀ���](http://www.cnblogs.com/han-1034683568/p/6440090.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ������ţ��С��](http://www.cnblogs.com/han-1034683568/p/6440157.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ�����������](http://www.cnblogs.com/han-1034683568/p/6476827.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���ģ������](http://www.cnblogs.com/han-1034683568/p/6476852.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���壩��һ��maven](http://www.cnblogs.com/han-1034683568/p/6486117.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ������maven����SSM](http://www.cnblogs.com/han-1034683568/p/6507186.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���ߣ�JDBC url�����Ӳ���](http://www.cnblogs.com/han-1034683568/p/6512215.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���ˣ�mysql���Ĳ�ѯbug�޸�](http://www.cnblogs.com/han-1034683568/p/6517344.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ���ţ��汾����](http://www.cnblogs.com/han-1034683568/p/6540079.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ��ʮ��SVN�](http://www.cnblogs.com/han-1034683568/p/6545751.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ��ʮһ��SVN����������](http://www.cnblogs.com/han-1034683568/p/6551498.html)\n- [Spring+SpringMVC+MyBatis+easyUI���ϻ���ƪ��ʮ�����׶��ܽ�](http://www.cnblogs.com/han-1034683568/p/6562092.html)\n\n\n�Ƽ�һ���Լ��Ĵ��˿Σ�����Ȥ�����ѿ��Կ�һ�£�[SSM�����ʵ�õĹ���ϵͳ](http://gitbook.cn/m/mazi/comp/column?columnId=5b4dae389bcda53d07056bc9&sceneId=22778a708b0f11e8974b497483da0812)',22,'SSM���Ͻ���ƪ','Spring,SpringMVC,MyBatis,easyUI,AdminLte3',1,55,0,0,'2019-04-24 15:46:15','2019-04-24 15:46:15');
insert  into `tb_blog`(`blog_id`,`blog_title`,`blog_sub_url`,`blog_cover_image`,`blog_content`,`blog_category_id`,`blog_category_name`,`blog_tags`,`blog_status`,`blog_views`,`enable_comment`,`is_deleted`,`create_time`,`update_time`) values (4,'SpringBootϵ�н̳�','','/admin/dist/img/rand/29.jpg','<h2 id=\"springboot2\">23 ��ʵ�����������ת Spring Boot</h2>\n\n- [**��ƪ�ʣ���23 ��ʵ�����������ת Spring Boot������**](https://www.shiyanlou.com/courses/1274)\n- [��02�Σ�Spring Boot ��Ŀ���������](https://www.shiyanlou.com/courses/1274)\n- [��03�Σ����ٹ��� Spring Boot Ӧ��](https://www.shiyanlou.com/courses/1274)\n- [��04�Σ�Spring Boot �������ܿ���](https://www.shiyanlou.com/courses/1274)\n- [��05�Σ�Spring Boot ��Ŀ����֮ web ��Ŀ��������](https://www.shiyanlou.com/courses/1274)\n- [��06�Σ�Spring Boot ���� JSP ���� web ��Ŀ](https://www.shiyanlou.com/courses/1274)\n- [��07�Σ�ģ��������ܼ� Spring Boot ���� Thymeleaf](https://www.shiyanlou.com/courses/1274)\n- [��08�Σ�Thymeleaf �﷨���](https://www.shiyanlou.com/courses/1274)\n- [��09�Σ�FreeMarker ģ����������ʹ�ý̳�](https://www.shiyanlou.com/courses/1274)\n- [��10�Σ�Spring Boot �����ļ��ϴ���·������](https://www.shiyanlou.com/courses/1274)\n- [��11�Σ�Spring Boot �Զ���������Դ���������ݿ�](https://www.shiyanlou.com/courses/1274)\n- [��12�Σ�Spring Boot ���� Druid ����Դ](https://www.shiyanlou.com/courses/1274)\n- [��13�Σ�Spring Boot ���� MyBatis �������ݿ�](https://www.shiyanlou.com/courses/1274)\n- [��14�Σ�Spring Boot �е�������](https://www.shiyanlou.com/courses/1274)\n- [��15�Σ�Spring Boot ���� Redis ��������ģ��](https://www.shiyanlou.com/courses/1274)\n- [��16�Σ�Spring Boot ��Ŀ����֮ʵ�ֶ�ʱ����](https://www.shiyanlou.com/courses/1274)\n- [��17�Σ�Spring Boot �Զ������ҳ��](https://www.shiyanlou.com/courses/1274)\n- [��18�Σ�Spring Boot ���� Swagger ���ɽӿ��ĵ�](https://www.shiyanlou.com/courses/1274)\n- [��19�Σ�Spring Boot ��Ŀ����������](https://www.shiyanlou.com/courses/1274)\n- [��20�Σ�Spring Boot Admin ���ܼ�����ʹ��](https://www.shiyanlou.com/courses/1274)\n- [��21�Σ�Spring Boot ��Ѷ������Ϣϵͳ����ʵս(һ)](https://www.shiyanlou.com/courses/1274)\n- [��22�Σ�Spring Boot ��Ѷ������Ϣϵͳ����ʵս(��)](https://www.shiyanlou.com/courses/1274)\n- [��23�Σ�Spring Boot ��Ѷ������Ϣϵͳ����ʵս(��)](https://www.shiyanlou.com/courses/1274)\n- [��24�Σ�Spring Boot ��Ѷ������Ϣϵͳ����ʵս(��)](https://www.shiyanlou.com/courses/1274)\n\n<h2 id=\"springboot1\">Spring Boot ���ż�ǰ��˷�����Ŀʵ��</h2>\n\n* [��ƪ�ʣ�SpringBoot���ż�ǰ��˷�����Ŀʵ������](https://www.shiyanlou.com/courses/1244)\n* [��02�Σ�������ʶ Spring Boot ����ջ](https://www.shiyanlou.com/courses/1244)\n* [��03�Σ����������](https://www.shiyanlou.com/courses/1244)\n* [��04�Σ����ٹ��� Spring Boot Ӧ��](https://www.shiyanlou.com/courses/1244)\n* [��05�Σ�Spring Boot ֮���� web ���ܿ���](https://www.shiyanlou.com/courses/1244)\n* [��06�Σ�Spring Boot ֮���ݿ����Ӳ���](https://www.shiyanlou.com/courses/1244)\n* [��07�Σ�Spring Boot ���� MyBatis �������ݿ�](https://www.shiyanlou.com/courses/1244)\n* [��08�Σ�Spring Boot �����ļ��ϴ���·������](https://www.shiyanlou.com/courses/1244)\n* [��09�Σ�Spring Boot ��Ŀʵ��֮ǰ��˷������](https://www.shiyanlou.com/courses/1244)\n* [��10�Σ�Spring Boot ��Ŀʵ��֮ API ���](https://www.shiyanlou.com/courses/1244)\n* [��11�Σ�Spring Boot ��Ŀʵ��֮��¼ģ��ʵ��](https://www.shiyanlou.com/courses/1244)\n* [��12�Σ�Spring Boot ��Ŀʵ��֮��ҳ����ʵ��](https://www.shiyanlou.com/courses/1244)\n* [��13�Σ�Spring Boot ��Ŀʵ��֮jqgrid��ҳ����](https://www.shiyanlou.com/courses/1244)\n* [��14�Σ�Spring Boot ��Ŀʵ��֮�༭����ʵ��](https://www.shiyanlou.com/courses/1244)\n* [��15�Σ�Spring Boot ��Ŀʵ��֮�û�����ģ��ʵ��](https://www.shiyanlou.com/courses/1244)\n* [��16�Σ�Spring Boot ��Ŀʵ��֮ͼƬ����ģ��](https://www.shiyanlou.com/courses/1244)\n* [��17�Σ�Spring Boot ��Ŀʵ��֮���ı��༭�����ܼ�����](https://www.shiyanlou.com/courses/1244)\n* [��18�Σ�Spring Boot ��Ŀʵ��֮��Ϣ����ģ��ʵ��](https://www.shiyanlou.com/courses/1244)',24,'�ճ����','SpringBoot,���Ž̳�,ʵս�̳�,spring-boot��ҵ������',1,10,0,0,'2019-05-13 09:58:54','2019-05-13 09:58:54');

/*Table structure for table `tb_blog_category` */

DROP TABLE IF EXISTS `tb_blog_category`;

CREATE TABLE `tb_blog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '���������',
  `category_name` varchar(50) NOT NULL COMMENT '���������',
  `category_icon` varchar(50) NOT NULL COMMENT '�����ͼ��',
  `category_rank` int(11) NOT NULL DEFAULT '1' COMMENT '���������ֵ ��ʹ�õ�Խ����ֵԽ��',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '�Ƿ�ɾ�� 0=�� 1=��',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog_category` */

insert  into `tb_blog_category`(`category_id`,`category_name`,`category_icon`,`category_rank`,`is_deleted`,`create_time`) values (20,'About','/admin/dist/img/category/10.png',8,0,'2018-11-12 00:28:49');
insert  into `tb_blog_category`(`category_id`,`category_name`,`category_icon`,`category_rank`,`is_deleted`,`create_time`) values (22,'SSM���Ͻ���ƪ','/admin/dist/img/category/02.png',19,0,'2018-11-12 10:42:25');
insert  into `tb_blog_category`(`category_id`,`category_name`,`category_icon`,`category_rank`,`is_deleted`,`create_time`) values (24,'�ճ����','/admin/dist/img/category/06.png',22,0,'2018-11-12 10:43:21');

/*Table structure for table `tb_blog_comment` */

DROP TABLE IF EXISTS `tb_blog_comment`;

CREATE TABLE `tb_blog_comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����id',
  `blog_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '������blog����',
  `commentator` varchar(50) NOT NULL DEFAULT '' COMMENT '����������',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '�����˵�����',
  `website_url` varchar(50) NOT NULL DEFAULT '' COMMENT '��ַ',
  `comment_body` varchar(200) NOT NULL DEFAULT '' COMMENT '��������',
  `comment_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '�����ύʱ��',
  `commentator_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '����ʱ��ip��ַ',
  `reply_body` varchar(200) NOT NULL DEFAULT '' COMMENT '�ظ�����',
  `reply_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '�ظ�ʱ��',
  `comment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '�Ƿ����ͨ�� 0-δ��� 1-���ͨ��',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '�Ƿ�ɾ�� 0-δɾ�� 1-��ɾ��',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog_comment` */

insert  into `tb_blog_comment`(`comment_id`,`blog_id`,`commentator`,`email`,`website_url`,`comment_body`,`comment_create_time`,`commentator_ip`,`reply_body`,`reply_create_time`,`comment_status`,`is_deleted`) values (26,4,'ʮ��','224683568@qq.com','','��һ������','2019-05-13 10:12:19','','','2019-05-12 21:13:31',1,0);

/*Table structure for table `tb_blog_tag` */

DROP TABLE IF EXISTS `tb_blog_tag`;

CREATE TABLE `tb_blog_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '��ǩ������id',
  `tag_name` varchar(100) NOT NULL COMMENT '��ǩ����',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '�Ƿ�ɾ�� 0=�� 1=��',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog_tag` */

insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (57,'��������һ���ܿɰ�����',0,'2018-11-12 00:31:15');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (58,'��������˾��ڿ���仰',0,'2018-11-12 00:31:15');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (66,'Spring',0,'2018-11-12 10:55:14');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (67,'SpringMVC',0,'2018-11-12 10:55:14');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (68,'MyBatis',0,'2018-11-12 10:55:14');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (69,'easyUI',0,'2018-11-12 10:55:14');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (127,'Ŀ¼',0,'2019-04-24 15:41:39');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (128,'AdminLte3',0,'2019-04-24 15:46:16');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (130,'SpringBoot',0,'2019-05-13 09:58:54');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (131,'���Ž̳�',0,'2019-05-13 09:58:54');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (132,'ʵս�̳�',0,'2019-05-13 09:58:54');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (133,'spring-boot��ҵ������',0,'2019-05-13 09:58:54');

/*Table structure for table `tb_blog_tag_relation` */

DROP TABLE IF EXISTS `tb_blog_tag_relation`;

CREATE TABLE `tb_blog_tag_relation` (
  `relation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '��ϵ��id',
  `blog_id` bigint(20) NOT NULL COMMENT '����id',
  `tag_id` int(11) NOT NULL COMMENT '��ǩid',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '���ʱ��',
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog_tag_relation` */

insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (266,1,57,'2019-05-13 09:45:42');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (267,1,58,'2019-05-13 09:45:42');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (269,2,127,'2019-05-13 09:56:49');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (270,4,130,'2019-05-13 09:58:54');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (271,4,131,'2019-05-13 09:58:54');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (272,4,132,'2019-05-13 09:58:54');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (273,4,133,'2019-05-13 09:58:54');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (274,3,66,'2019-05-13 10:07:27');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (275,3,67,'2019-05-13 10:07:27');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (276,3,68,'2019-05-13 10:07:27');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (277,3,69,'2019-05-13 10:07:27');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (278,3,128,'2019-05-13 10:07:27');

/*Table structure for table `tb_config` */

DROP TABLE IF EXISTS `tb_config`;

CREATE TABLE `tb_config` (
  `config_name` varchar(100) NOT NULL DEFAULT '' COMMENT '�����������',
  `config_value` varchar(200) NOT NULL DEFAULT '' COMMENT '�������ֵ',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '�޸�ʱ��',
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_config` */

insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerAbout','your personal blog. have fun.','2018-11-11 20:33:23','2018-11-12 11:58:06');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerCopyRight','2019 ʮ��','2018-11-11 20:33:31','2018-11-12 11:58:06');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerICP','��ICP��17008806��-3','2018-11-11 20:33:27','2018-11-12 11:58:06');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerPoweredBy','https://github.com/ZHENFENG13','2018-11-11 20:33:36','2018-11-12 11:58:06');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerPoweredByURL','https://github.com/ZHENFENG13','2018-11-11 20:33:39','2018-11-12 11:58:06');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('websiteDescription','personal blog��SpringBoot2+Thymeleaf+Mybatis����ĸ��˲�����վ.SpringBootʵս����Դ��.���˲��ʹ','2018-11-11 20:33:04','2018-11-11 22:05:14');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('websiteIcon','/admin/dist/img/favicon.png','2018-11-11 20:33:11','2018-11-11 22:05:14');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('websiteLogo','/admin/dist/img/logo2.png','2018-11-11 20:33:08','2018-11-11 22:05:14');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('websiteName','personal blog','2018-11-11 20:33:01','2018-11-11 22:05:14');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('yourAvatar','/admin/dist/img/13.png','2018-11-11 20:33:14','2019-05-07 21:56:23');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('yourEmail','2449207463@qq.com','2018-11-11 20:33:17','2019-05-07 21:56:23');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('yourName','13','2018-11-11 20:33:20','2019-05-07 21:56:23');

/*Table structure for table `tb_link` */

DROP TABLE IF EXISTS `tb_link`;

CREATE TABLE `tb_link` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '����������id',
  `link_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '������� 0-���� 1-�Ƽ� 2-������վ',
  `link_name` varchar(50) NOT NULL COMMENT '��վ����',
  `link_url` varchar(100) NOT NULL COMMENT '��վ����',
  `link_description` varchar(100) NOT NULL COMMENT '��վ����',
  `link_rank` int(11) NOT NULL DEFAULT '0' COMMENT '�����б�����',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '�Ƿ�ɾ�� 0-δɾ�� 1-��ɾ��',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '���ʱ��',
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_link` */

insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (1,0,'tqr','rqwe','rqw',0,1,'2018-10-22 18:57:52');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (2,2,'ʮ����GitHub','https://github.com/ZHENFENG13','ʮ���������ĵط�',1,0,'2018-10-22 19:41:04');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (3,2,'ʮ���Ĳ���','http://13blog.site','���˶�������13blog',14,0,'2018-10-22 19:53:34');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (4,1,'CSDN ͼ�Ŀ�','https://gitchat.csdn.net','IT��������ƽ̨',6,0,'2018-10-22 19:55:55');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (5,2,'ʮ���Ĳ���԰','https://www.cnblogs.com/han-1034683568','�ʼд���͵ĵط�',17,0,'2018-10-22 19:56:14');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (6,1,'CSDN','https://www.csdn.net/','CSDN-רҵIT������������',4,0,'2018-10-22 19:56:47');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (7,0,'�����ȵĲ���','http://blog.720ui.com','��˹���ʨ',1,0,'2018-10-22 20:01:38');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (8,0,'Գ���','http://cxytiandi.com','һ���ۺ��Ե���վ,�Գ���Գ�û�Ϊ��,�ṩ���ֿ�����ص�����',12,0,'2018-10-22 20:02:41');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (9,0,'Giraffe Home','https://yemengying.com/','Giraffe Home',0,0,'2018-10-22 20:27:04');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (10,0,'�����΢Ц','http://www.ityouknow.com','����������������',3,0,'2018-10-22 20:27:16');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (11,0,'afsdf','http://localhost:28080/admin/links','fad',0,1,'2018-10-22 20:27:26');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (12,1,'afsdf','http://localhost','fad1',0,1,'2018-10-24 14:04:18');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (13,0,'������','http://guozh.net/','�Ϲ����ֵ�',0,0,'2019-04-24 15:30:19');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (14,0,'dalaoyang','https://www.dalaoyang.cn/','dalaoyang',0,0,'2019-04-24 15:31:50');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (15,0,'mushblog','https://www.sansani.cn','����������',0,0,'2019-04-24 15:32:19');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (16,1,'ʵ��¥','https://www.shiyanlou.com/','һ��רע��IT����������ʵѵƽ̨',17,0,'2019-04-24 16:03:48');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (17,2,'��SSM �����ʵ�õĹ���ϵͳ��','https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9','Spring+SpringMVC+MyBatisʵս�γ�',18,0,'2019-04-24 16:06:52');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (18,2,'��Spring Boot ���ż�ǰ��˷�����Ŀʵ����','https://www.shiyanlou.com/courses/1244','SpringBootʵս�γ�',19,0,'2019-04-24 16:07:27');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (19,2,'����תSpring Boot ϵ�С�','https://www.shiyanlou.com/courses/1274','SpringBootʵս�γ�',20,0,'2019-04-24 16:10:30');

/*Table structure for table `tb_test` */

DROP TABLE IF EXISTS `tb_test`;

CREATE TABLE `tb_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `test_info` varchar(50) NOT NULL COMMENT '��������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_test` */

insert  into `tb_test`(`id`,`test_info`) values (1,'SpringBoot-MyBatis����');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;