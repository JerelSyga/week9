use app;
CREATE TABLE profile (
	id int(15) not null auto_increment,
	profile_name varchar(15) not null,
	first_name varchar(15) not null,
last_name varchar(15) not null,
email varchar(15) not null,
password varchar(15) not null,
	bio varchar(100),
	primary key (id)
);

CREATE TABLE post (
id int(15) not null auto_increment,
post_id int(15) not null,
profile_id int(15) not null,
post_data varchar(280) not null,
time_posted datetime default current_timestamp,
	primary key(id, post_id),
foreign key(profile_id) references profile(id)
);

CREATE TABLE comment (
id int(15) not null auto_increment,
profile_id int(15) not null,
comment_id int(15) not null,
comment_data varchar(280) not null,
time_posted datetime default current_timestamp,
primary key(id,comment_id),
foreign key(profile_id) references profile(id),
foreign key(comment_id) references post(post_id)
);
