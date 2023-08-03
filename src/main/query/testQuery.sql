use laptop_store;

select user.*, role.roleName
from user
         inner join role on user.roleId = role.roleId;

insert into user(username, password, roleId)
values (?, ?, 2);

select product.*, brand.brandName, category.categoryName
from (product inner join brand on brand.brandId = product.brandId)
         inner join category on product.categoryId = category.categoryId
order by productId;

insert into product(productName, brandId, categoryId, detail, quantity, price)
values (?, ?, ?, ?, ?, ?);

select * from brand;

select * from category;