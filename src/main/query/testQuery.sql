use stories_shop;

select user.*, role.roleName
from user
inner join role on user.roleId = role.roleId;

insert into user(username, password, roleId)
values (?, ?, 2);

insert into category(categoryName)
values ('Laptop Gaming');

insert into category(categoryName)
values ('Laptop Văn Phòng');

insert into category(categoryName)
values ('Laptop Ultrabook');

insert into category(categoryName)
values ('Laptop Đồ Họa');

insert into category(categoryName)
values ('Laptop Sinh Viên - Giá Rẻ');

insert into brand(brandName)
values ('ASUS');

insert into brand(brandName)
values ('Acer');

insert into brand(brandName)
values ('Dell');

insert into brand(brandName)
values ('MSI');

insert into brand(brandName)
values ('Lenovo');

insert into brand(brandName)
values ('Gigabyte');

insert into brand(brandName)
values ('HP');


