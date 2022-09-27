create table if not exists auto_user (
  id serial primary key,
  login varchar(50) unique,
  password varchar(50) not null
);

create table if not exists auto_post (
    id serial primary key,
	text varchar(255) not null,
	created timestamp not null,
	auto_user_id int not null,
	foreign key (auto_user_id) references auto_user (id)
);