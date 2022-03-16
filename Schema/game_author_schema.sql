CREATE TABLE items(
    id SERIAL PRIMARY KEY,
    archived BOOLEAN DEFAULT 'f',
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

CREATE TABLE genre(
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
    name VARCHAR(100)
    item_id SERIAL NOT NULL,
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
    on_spotify BOOLEAN DEFAULT 'f',
    genre_id INT,
    label_id INT,
    FOREIGN KEY (genre_id) REFERENCES Genre(id)  
    FOREIGN KEY (label_id) REFERENCES Label(id)
);

CREATE TABLE book (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    publisher VARCHAR(100),
    cover_state VARCHAR(4),
    publish_date DATE,
    archived BOOLEAN,
    label_id SERIAL NOT NULL,
    FOREIGN KEY (label_id) REFERENCES Label(id)
);
