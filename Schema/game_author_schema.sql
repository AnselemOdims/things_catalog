CREATE TABLE items(
    id SERIAL PRIMARY KEY,
    archived BOOL DEFAULT 'f',
    author_id SERIAL NOT NULL,
    publish_date TIMESTAMP NOT NULL,
    CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES Author(id),
);

CREATE TABLE author(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    items TEXT []
);

CREATE TABLE game(
    id SERIAL PRIMARY KEY,
    multiplayer VARCHAR(50),
    last_played TIMESTAMP NOT NULL,
    item_id SERIAL NOT NULL,
    CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES items(id)
);