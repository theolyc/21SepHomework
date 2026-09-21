USE recipes;

CREATE TABLE cuisines (
    cuisine_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE users (
    user_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE recipes (
    recipe_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    instructions TEXT NOT NULL,
    date_created DATETIME NOT NULL,
    last_updated DATETIME,
    cuisine_id INT UNSIGNED NOT NULL,
    user_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (cuisine_id) REFERENCES cuisines(cuisine_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE tags (
    tag_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE recipes_tags (
    ingredient_recipe_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    recipe_id INT UNSIGNED,
    ingredient_id INT UNSIGNED,
    FOREIGN KEY (recipe_id) REFERENCES recipes(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES tags(tag_id)
);