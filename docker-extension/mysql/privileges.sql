use mysql;

select host, user from user;

drop user tale@'%'; 
flush privileges; 

create user tale identified by '123456';

grant all on tale.* to tale@'%' identified by '123456' with grant option;

flush privileges;

-- privileges.sql