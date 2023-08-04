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

select *
from brand;

select *
from category;

select *
from product;

update product
set productName=?,
    brandId=?,
    categoryId=?,
    detail=?,
    quantity=?,
    price=?
where productId = ?;

select *
from role;

update user
set username=?,
    password=?,
    roleId=?
where userId = ?;

insert into import(userId, productId, quantityImport, dateImport)
values (1, 1, 10, now());

select import.*, user.username, product.productName
from (import inner join user on import.userId = user.userId)
         inner join product on import.productId = product.productId
order by importId;