create table users (
    username varchar(255) not null primary key,
    password varchar(255) not null,
    enabled boolean not null
);

create table authorities (
    username varchar(255) not null,
    authority varchar(255) not null,
    foreign key (username) references users (username),
    unique (username, authority)
);

insert into users (username, password, enabled) values ('admin', '{bcrypt}somepass', true);

insert into authorities (username, authority) values ('admin', 'ROLE_ADMIN');