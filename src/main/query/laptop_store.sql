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

# tao bang product
create table products
(
    id       int          NOT NULL AUTO_INCREMENT,
    name     varchar(450) NOT NULL,
    category varchar(450) NOT NULL,
    price    double       NOT NULL,
    image    varchar(450) NOT NULL,
    PRIMARY KEY (`id`)
);

# tao bang order
CREATE TABLE orders
(
    o_id       int          NOT NULL AUTO_INCREMENT,
    p_id       int          NOT NULL,
    u_id       int          NOT NULL,
    o_quantity int          NOT NULL,
    o_date     varchar(450) NOT NULL,
    PRIMARY KEY (`o_id`)
);

# tao role
insert into role(roleName)
values ('admin');
insert into role(roleName)
values ('customer');

# tao use
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