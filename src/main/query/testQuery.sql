use stories_shop;

select user.*, role.roleName
from user
inner join role on user.roleId = role.roleId;

insert into user(username, password, roleId)
values (?, ?, 2);

insert into category(categoryName)
values ('Laptop Gaming'); 1

insert into category(categoryName)
values ('Laptop Văn Phòng'); 2

insert into category(categoryName)
values ('Laptop Ultrabook'); 3

insert into category(categoryName)
values ('Laptop Đồ Họa'); 4

insert into category(categoryName)
values ('Laptop Sinh Viên - Giá Rẻ'); 5

insert into brand(brandName)
values ('ASUS'); 1

insert into brand(brandName)
values ('Acer'); 2

insert into brand(brandName)
values ('Dell'); 3

insert into brand(brandName)
values ('MSI'); 4

insert into brand(brandName)
values ('Lenovo'); 5

insert into brand(brandName)
values ('Gigabyte'); 6

insert into brand(brandName)
values ('HP'); 7


