-- create tables that mimick classes
CREATE TABLE items(
    id SERIAL PRIMARY KEY,
    archived BOOLEAN DEFAULT 'f',
    author_id SERIAL NOT NULL,
    label_id SERIAL NOT NULL,
    genre_id SERIAL NOT NULL,
    publish_date TIMESTAMP NOT NULL,
    CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES author(id),
    CONSTRAINT label_fk FOREIGN KEY (label_id) REFERENCES label(id),
    CONSTRAINT genre_fk FOREIGN KEY (genre_id) REFERENCES genre(id)
);

CREATE TABLE author(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    items TEXT []
);

CREATE TABLE genre(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    item_id SERIAL NOT NULL,
    CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES items(id)
);

CREATE TABLE game(
    id SERIAL PRIMARY KEY,
    multiplayer VARCHAR(50),
    last_played TIMESTAMP NOT NULL,
    archived BOOLEAN DEFAULT 'f',
    publish_date TIMESTAMP NOT NULL,
    item_id SERIAL NOT NULL,
    author_id SERIAL NOT NULL,
    CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES items(id),
    CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES author(id)
);

CREATE TABLE musicalbum (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    publish_date DATE,
    archived BOOLEAN,
    on_spotify BOOLEAN DEFAULT 'f',
    genre_id INT,
    CONSTRAINT genre_fk FOREIGN KEY (genre_id) REFERENCES genre(id)
);

CREATE TABLE book (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    publisher VARCHAR(100),
    cover_state VARCHAR(4),
    publish_date DATE,
    archived BOOLEAN,
    label_id SERIAL NOT NULL,
    CONSTRAINT label_fk FOREIGN KEY (label_id) REFERENCES Label(id)
);

CREATE TABLE label (
    id SERIAL PRIMARY KEY,
    title VARCHAR(50),
    color VARCHAR(50),
    items TEXT []
);

-- Add indexes for foreign keys
CREATE INDEX label_id_asc ON book(label_id ASC);

CREATE INDEX genre_id_asc ON musicalbum(genre_id ASC);

Create INDEX author_id_asc ON game(author_id ASC);

Create INDEX item_id_asc ON game(item_id ASC);

Create INDEX genre_id_asc ON items(genre_id ASC);

Create INDEX author_id_asc ON items(author_id ASC);

Create INDEX label_id_asc ON items(label_id ASC);
