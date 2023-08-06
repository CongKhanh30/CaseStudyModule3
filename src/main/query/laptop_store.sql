drop database if exists laptop_store;

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
    detail      text               not null,
    quantity    int                not null,
    price       double             not null,
    image       text               not null,
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

# tao bang import
create table import
(
    importId       int auto_increment not null,
    userId         int                not null,
    productId      int                not null,
    quantityImport int                not null,
    dateImport     datetime           not null,
    constraint pk_import primary key (importId)
);
alter table import
    add constraint fk_import_user foreign key (userId) references user (userId);
alter table import
    add constraint fk_import_product foreign key (productId) references product (productId);

# tao trigger khi import product
delimiter //
create trigger update_quantity_after_insert_import
    after insert
    on import
    for each row
begin
    declare product_quantity int;
    select product.quantity into product_quantity from product where product.productId = NEW.productId;
    if product_quantity is not null then
        update product
        set product.quantity=product.quantity + NEW.quantityImport
        where product.productId = NEW.productId;
    end if;
end;
// delimiter ;


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

# tao product
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Dell Vostro 5630', 3, 2, 'Core i5-1340P, 16GB, 512GB, Iris Xe Graphic, 16inch FHD+', 50, 17500000,
        'https://lh3.googleusercontent.com/Zuk5cnlhTQD5jMp2owReNtZePMfzoFSEDC7xGQew1lIYsGglIL0i4bgb-ghfV1KT_pRTQD2MYJBCRFhsQFxPl8MJDP2IQtI=w500-rw');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Lenovo ThinkBook 14 G4', 5, 3, 'Core i7-1255U, 8GB, 512GB, Intel Iris Xe,14inch FHD', 50, 22000000,
        'https://anphat.com.vn/media/product/45205_7.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Acer Nitro 16 2023', 2, 1, 'Core i5-13500H, 16GB, 512GB, RTX 4050 6GB, 16inch FHD+ IPS 165Hz', 50, 26000000,
        'https://anphat.com.vn/media/product/45877_laptop_gaming_acer_nitro_16_phoenix_an16_41_r76e.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Gigabyte G5 GE-51VN213SH', 6, 4, 'Core i5-12500H, 16GB, 512GB, RTX 3050 4GB, 15.6inch FHD', 50, 20000000,
        'https://anphat.com.vn/media/product/43417_laptop_gigabyte_g5_ge_51vn213sh__1_.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Acer Aspire 3 A315-58-589K', 2, 5, 'Core i5-1135G7, 8GB, 256GB, Intel Iris Xe, 15.6inch FHD', 50, 11500000,
        'https://anphat.com.vn/media/product/44732_laptop_acer_aspire_3_a315_58_589k_nx_am0sv__6_.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Asus ROG Strix SCAR 17', 1, 1, 'R9-7945HX, RAM 32GB, 1TB SSD, RTX 4080, 17.3 inch WQHD', 50, 79600000,
        'https://anphat.com.vn/media/product/44654_laptop_asus_rog_strix_scar_17_g733pz_ll980w__1_.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Acer Swift 3 SF314-512-56QN', 2, 3, 'Core i5-1240P,RAM 16GB, 512GB, Intel Iris Xe, 14 inch QHD IPS', 50,
        18500000, 'https://anphat.com.vn/media/product/42871_laptop_acer_swift_3_sf314_512_56qn__2_.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('HP Pavilion 15-eg2084TU', 7, 3, 'Intel Core i5-1240P,RAM 8GB, 256GB, Intel Iris Xe, 15.6 inch FHD', 50,
        15500000, 'https://anphat.com.vn/media/product/45401_laptop_hp_pavilion_15_eg2084tu_7c0q6pa__1_.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('HP Envy 16-h0033TX 6K7F9PA', 7, 1,
        'Core i9-12900H,RAM 16GB, 512GB, GeForce RTX 3060 6GB, 16 inch WQXGA IPS 120Hz', 50, 59000000,
        'https://anphat.com.vn/media/product/42992_laptop_hp_envy_16_h0033tx_6k7f9pa__4_.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Gigabyte G5 KF-E3VN333SH', 6, 1, 'Core i5-12500H,RAM 8GB, 512GB, RTX 4060 8GB, 15.6 inch FHD 144Hz', 50,
        25200000, 'https://anphat.com.vn/media/product/45085_laptop_gigabyte_g5_kf_e3vn333sh.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Lenovo Ideapad 5 Pro 16ARH7', 5, 2, 'Ryzen 5 6600HS,RAM 16GB, 512GB, RTX 3050 4GB, 16 inch 2.5K', 50,
        22500000, 'https://anphat.com.vn/media/product/44943_laptop_lenovo_ideapad_5_pro_16arh7_82sn00b0vn__3_.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('MSI Modern 14 C11M-011VN', 4, 5, 'Core i3-1115G4,RAM 8GB, 512GB, Intel UHD, 14 inch FHD', 50, 9900000,
        'https://anphat.com.vn/media/product/44521_laptop_msi_modern_14_c11m_011vn__core_i3___3_.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Dell Inspiron 14 5430 20DY3', 3, 4, '(Intel Core i7-1355U,RAM 16GB, 512GB, Intel Iris Xe, 14.0 inch FHD+', 50,
        26000000, 'https://anphat.com.vn/media/product/45591_laptop_dell_xps_9320_13_plus_71013325.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('ASUS TUF Gaming A15 FA507XI', 1, 1, 'Ryzen™ 9 7940HS,RAM 8GB, 512G, RTX™ 4070 8GB, 15.6-inch FHD 144Hz', 50,
        38500000, 'https://anphat.com.vn/media/product/44499_laptop_asus_tuf_gaming_a15_fa507xi_lp420w.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('Acer Predator Helios Neo PHN16', 2, 1, 'Intel Core i7-13700HX,RAM 16GB, 512GB, RTX 4060 8GB, 16 inch WQXGA',
        50,
        40000000, 'https://anphat.com.vn/media/product/45072_4.jpg');
insert into product(productName, brandId, categoryId, detail, quantity, price, image)
values ('MSI Stealth 16 Mercedes AMG A13VG', 4, 1, 'Intel Core i9-13900H, 32GB, 2TB, RTX 4070 8GB, 16 inch UHD+', 10,
        81000000, 'https://anphat.com.vn/media/product/46015_1.jpg');