create database laptop_store;

use laptop_store;

# tao bang role
create table role
(
    roleId   int auto_increment not null,
    roleName varchar(255)       not null,
    constraint pk_role primary key (roleId)
);

# tao bang user
create table user
(
    userId   int auto_increment not null,
    username varchar(255)       not null,
    password varchar(255)       not null,
    roleId   int                not null,
    constraint pk_user primary key (userId)
);
alter table user
    add constraint fk_user_role foreign key (roleId) references role (roleId);

# tao bang category
create table category
(
    categoryId   int auto_increment not null,
    categoryName varchar(255)       not null,
    constraint pk_category primary key (categoryId)
);

# tao bang brand
create table brand
(
    brandId   int auto_increment not null,
    brandName varchar(255)       not null,
    constraint pk_category primary key (brandId)
);

# tao bang product
create table product
(
    productId   int auto_increment not null,
    productName varchar(255)       not null,
    brandId     int                not null,
    categoryId  int                not null,
    detail      text,
    quantity    int                not null,
    price       double             not null,
    constraint pk_product primary key (productId)
);

alter table product
    add constraint fk_product_brand foreign key (brandId) references brand (brandId);
alter table product
    add constraint fk_product_category foreign key (categoryId) references category (categoryId);

# tao bang image
create table image
(
    imageId   int auto_increment not null,
    productId int                not null,
    link      text               not null,
    constraint pk_image primary key (imageId)
);

alter table image
    add constraint fk_image_product foreign key (productId) references product (productId);

# ----------------------------------------------------------
# tao role
insert into role(roleName)
values ('admin');
insert into role(roleName)
values ('customer');

# tao user
insert into user(username, password, roleId)
values ('admin', 'admin', 1);
insert into user(username, password, roleId)
values ('khanh', 'khanh', 2);
insert into user(username, password, roleId)
values ('huynh', 'huynh', 2);
insert into user(username, password, roleId)
values ('quang', 'quang', 2);
insert into user(username, password, roleId)
values ('khanhnguyen', 'khanhnguyen', 2);
insert into user(username, password, roleId)
values ('dat', 'dat', 2);

# tao category
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

# tao brand
insert into brand(brandName)
values ('ASUS');
insert into brand(brandName)
values ('ACER');
insert into brand(brandName)
values ('DELL');
insert into brand(brandName)
values ('MSI');
insert into brand(brandName)
values ('LENOVO');
insert into brand(brandName)
values ('GIGABYTE');
insert into brand(brandName)
values ('HP');