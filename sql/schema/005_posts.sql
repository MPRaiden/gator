-- +goose Up
CREATE TABLE posts (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    title TEXT,
    url VARCHAR(255) UNIQUE NOT NULL,
    description TEXT ,
    published_at TIMESTAMP NOT NULL,
    feed_id UUID,
    FOREIGN KEY (feed_id) REFERENCES feeds(id)
);

-- +goose Down
DROP TABLE posts;
