create table user_data(
  shop_id     varchar       primary key,
  username    varchar(254)  not null,
  password    varchar(254)  not null,
  phone_no    varchar(10)   not null unique,
  email       varchar(254)  unique,
  joined_time timestamp     not null
);
