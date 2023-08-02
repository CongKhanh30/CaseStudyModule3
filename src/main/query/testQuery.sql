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

insert into product(name, categoryID, brandId, detail, quantity, price)
values ('Dell Vostro 5630', 2, 3, 'Core i5-1340P, 16GB, 512GB, Iris Xe Graphic, 16inch FHD+', 2, 17500000);

insert into product(name, categoryID, brandId, detail, quantity, price)
values ('Lenovo ThinkBook 14 G4', 3, 5, 'Core i7-1255U, 8GB, 512GB, Intel Iris Xe,14inch FHD', 3, 22000000);

insert into product(name, categoryID, brandId, detail, quantity, price)
values ('Acer Nitro 16 2023', 1, 2, 'Core i5-13500H, 16GB, 512GB, RTX 4050 6GB, 16inch FHD+ IPS 165Hz', 1, 26000000);

insert into product(name, categoryID, brandId, detail, quantity, price)
values ('Gigabyte G5 GE-51VN213SH', 4, 6, 'Core i5-12500H, 16GB, 512GB, RTX 3050 4GB, 15.6inch FHD', 2, 20000000);

insert into product(name, categoryID, brandId, detail, quantity, price)
values ('Acer Aspire 3 A315-58-589K', 5, 2, 'Core i5-1135G7, 8GB, 256GB, Intel Iris Xe, 15.6inch FHD', 1, 11500000);

