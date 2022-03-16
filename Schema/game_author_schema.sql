CREATE TABLE items(
    id SERIAL PRIMARY KEY,
    archived BOOLEAN DEFAULT 'f',
    author_id SERIAL NOT NULL,
    label_id SERIAL NOT NULL,
    genre_id SERIAL NOT NULL,
    publish_date TIMESTAMP NOT NULL,
    CONSTRAINT author_fk FOREIGN KEY (author_id) REFERENCES author(id),
    CONSTRAINT label_fk FOREIGN KEY (label_id) REFERENCES label(id),
    CONSTRAINT genre_fk FOREIGN KEY (genre_id) REFERENCES genre(id),
);

CREATE TABLE author(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    items TEXT []
);

CREATE TABLE genre(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) item_id SERIAL NOT NULL,
    CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES items(id)
);

CREATE TABLE game(
    id SERIAL PRIMARY KEY,
    multiplayer VARCHAR(50),
    last_played TIMESTAMP NOT NULL,
    item_id SERIAL NOT NULL,
    CONSTRAINT item_fk FOREIGN KEY (item_id) REFERENCES items(id)
);

CREATE TABLE musicalbum (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    publish_date DATE,
    archived BOOLEAN,
    on_spotify VARCHAR(2) genre_id INT,
    label_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genre(id) FOREIGN KEY (label_id) REFERENCES Label(id)
);