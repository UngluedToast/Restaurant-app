create table users (
    id serial primary key,
    first_name varchar(100),  
    last_name varchar(100),
    email varchar(200),
    password varchar(500)
);


create table restaurants (
    id serial primary key,
    name varchar(200),
    address varchar(200),
    street varchar(200),
    state varchar(200),
    phone varchar(20),
    menu varchar(200),
    picture varchar(500)
);

create table reviews (
    id serial primary key,
    score integer,
    content text,
    -- a single review belongs to a snigle restaurants
    restaurant_id integer references restaurants(id),
    user_id integer references users(id)
);

-- this is a "linking table" which describes the following relationships:
-- users can have many favorites
-- restaurants can ahve many favorites
-- restaurants have many users through favorites
-- users have many restaurants through favorites

create table favorites (
    id serial primary key,                          -- this id is optional
    user_id integer references users(id),           -- this is a foreign key to users
    restaurant_id integer references restaurants(id) -- FK to restaurants
    -- reviews text -- this is "metadata" about the relationship
                -- uh oh, this field has a plural name.
                -- that's no good.
);