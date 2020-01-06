DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS post;

create table user (
    id INTEGER PRIMARY KEY autoincrement,
    username text unique not null,
    password text not null
);

create table post (
    id integer primary key autoincrement,
    created timestamp not null default CURRENT_TIMESTAMP,
    title text not null,
    body text not null,
    author_id INTEGER
);
