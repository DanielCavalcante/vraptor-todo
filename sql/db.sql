create table tasks (
	id BIGSERIAL NOT NULL,
	title TEXT NOT NULL,
	done BOOLEAN DEFAULT FALSE,
	created_on DATE,
	CONSTRAINT pk_tasks PRIMARY KEY (id)
);

create table users (
	id BIGSERIAL NOT NULL,
	name VARCHAR(40) NOT NULL,
	email VARCHAR(30) NOT NULL,
	password VARCHAR(16) NOT NULL,
	CONSTRAINT pk_users PRIMARY KEY (id)
);