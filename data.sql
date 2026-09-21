INSERT INTO cuisines (name) VALUES
('Italian'),
('Mexican'),
('Japanese');

INSERT INTO users (email, password) VALUES
('alice@example.com', 'password123'),
('bob@example.com', 'password456');

INSERT INTO recipes (title, instructions, date_created, last_updated, cuisine_id, user_id) VALUES
('Spaghetti Carbonara', 'Cook pasta. Mix eggs and cheese. Combine with pancetta.', NOW(), NOW(), 1, 1),
('Tacos', 'Cook beef with spices. Serve in tortillas with toppings.', NOW(), NOW(), 2, 2),
('Sushi Rolls', 'Prepare rice. Add fillings. Roll with nori.', NOW(), NOW(), 3, 1);

INSERT INTO tags (name) VALUES
('Quick'),
('Vegetarian'),
('Spicy');

INSERT INTO recipes_tags (recipe_id, ingredient_id) VALUES
(1, 1),
(2, 3),
(3, 2);