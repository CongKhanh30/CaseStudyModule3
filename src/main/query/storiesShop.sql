create database stories_shop;

use stories_shop;

# tao bang role
create table role
(
    roleId   int auto_increment not null,
    roleName varchar(255)       not null,
    constraint pk_role primary key (roleId)
);

insert into role(roleName)
values ('admin');
insert into role(roleName)
values ('customer');

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

# tao bang category
create table category
(
    categoryId   int auto_increment not null,
    categoryName varchar(255)       not null,
    constraint fk_category primary key (categoryId)
);

# tao bang story
create table story
(
    storyId   int auto_increment not null,
    name      varchar(255)       not null,
    author    varchar(255)       not null,
    publisher varchar(255)       not null,
    quantity  int                not null,
    price     double             not null,
    detail    text,
    constraint fk_story primary key (storyId)
);
alter table story
    add image text not null after price;

# tao bang category_detail
create table category_detail
(
    CDId       int auto_increment not null,
    storyId    int                not null,
    categoryId int                not null,
    constraint fk_category_detail primary key (CDId)
);

alter table category_detail
    add constraint fk_category_detail_story foreign key (storyId) references story (storyId);
alter table category_detail
    add constraint fk_category_detail_category foreign key (categoryId) references category (categoryId);