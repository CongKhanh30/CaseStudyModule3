use stories_shop;

select user.*, role.roleName
from user
         inner join role on user.roleId = role.roleId;

insert into user(username, password, roleId)
values (?, ?, 2);