select "init start ...";

-- 设置 root 用户可以外网访问
use mysql;
SET SQL_SAFE_UPDATES = 0; --  解除安全模式
update user set host = '%' where user = 'root';
flush privileges;
ALTER USER 'root'@'localhost' INENTIFIED WITH mysql_native_password BY 'Mysql_2019';
flush privileges;

select "init end ...";