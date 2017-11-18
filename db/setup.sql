CREATE TYPE role AS ENUM ('teacher','student');

CREATE TABLE users (
    cookie text PRIMARY KEY,
    library_name text,
    teacher_checkout_length integer,
    student_checkout_length integer
);

CREATE TABLE books (
    id serial PRIMARY KEY,
    name text,
    quantity integer CHECK (quantity > 0),
    user_cookie text REFERENCES users ON DELETE CASCADE
);

CREATE TABLE people (
    id serial PRIMARY KEY,
    name text,
    role role,
    user_cookie text REFERENCES users ON DELETE CASCADE
);