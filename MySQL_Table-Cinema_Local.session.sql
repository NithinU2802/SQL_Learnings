# Create Table Cinema
CREATE TABLE Cinema (
    id INT,
    movie VARCHAR(255),
    description VARCHAR(255),
    rating FLOAT
);

# Inserting Values
INSERT INTO Cinema (id, movie, description, rating) VALUES
(1, 'War', 'great 3D', 8.9);


# Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
SELECT id,movie,description,rating FROM Cinema
WHERE id%2!=0 AND description!='boring' 
ORDER BY rating DESC;
