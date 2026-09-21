USE recipes;
-- Cuisines
INSERT INTO cuisines (name) VALUES
('Italian'),
('Mexican'),
('Japanese'),
('Indian'),
('Thai'),
('French'),
('Chinese'),
('Mediterranean');

-- Users
INSERT INTO users (email, password) VALUES
('alice@example.com', '$2y$10$abcdefghijklmnopqrstuv'),
('bob@example.com',   '$2y$10$bcdefghijklmnopqrstuvw'),
('carol@example.com', '$2y$10$cdefghijklmnopqrstuvwx'),
('dave@example.com',  '$2y$10$defghijklmnopqrstuvwxy'),
('erin@example.com',  '$2y$10$efghijklmnopqrstuvwxyz');

-- Tags
INSERT INTO tags (name) VALUES
('Vegetarian'),
('Vegan'),
('Gluten-Free'),
('Quick'),
('Dessert'),
('Spicy'),
('Comfort Food'),
('Low-Carb'),
('Breakfast'),
('High-Protein');

-- Recipes
INSERT INTO recipes (title, instructions, date_created, last_updated, cuisine_id, user_id) VALUES
('Spaghetti Carbonara',
 'Boil pasta. Fry pancetta. Whisk eggs with cheese. Combine off heat. Season and serve.',
 '2024-01-15 09:30:00', '2024-02-01 14:20:00', 1, 1),
('Chicken Tikka Masala',
 'Marinate chicken in yogurt and spices. Grill. Simmer in tomato-cream sauce. Serve with rice.',
 '2024-01-20 11:00:00', NULL, 4, 2),
('Vegetable Sushi Rolls',
 'Cook sushi rice. Lay on nori. Add cucumber, avocado, carrot. Roll and slice.',
 '2024-02-05 08:15:00', '2024-03-10 16:45:00', 3, 3),
('Beef Tacos',
 'Brown beef with taco seasoning. Warm tortillas. Assemble with toppings.',
 '2024-02-12 18:00:00', NULL, 2, 1),
('Pad Thai',
 'Soak noodles. Stir-fry shrimp, tofu, egg. Add sauce, noodles, peanuts, lime.',
 '2024-02-28 19:30:00', '2024-03-15 10:00:00', 5, 4),
('Ratatouille',
 'Sauté eggplant, zucchini, peppers, onion. Simmer with tomatoes and herbs.',
 '2024-03-03 12:45:00', NULL, 6, 5),
('Chocolate Lava Cake',
 'Melt chocolate and butter. Mix with eggs, sugar, flour. Bake until edges set.',
 '2024-03-18 20:00:00', NULL, 6, 3),
('Chicken Stir-Fry',
 'Marinate chicken. Stir-fry with broccoli, bell pepper, soy-ginger sauce.',
 '2024-04-01 17:20:00', '2024-04-05 09:10:00', 7, 2),
('Greek Salad',
 'Chop cucumber, tomato, onion, olives. Toss with feta, olive oil, oregano.',
 '2024-04-10 13:00:00', NULL, 8, 5),
('Spicy Ramen',
 'Simmer broth with chili and miso. Cook noodles. Top with egg, scallions, pork.',
 '2024-04-22 21:15:00', NULL, 3, 4);

-- Recipes_Tags (recipe ↔ tag associations)
INSERT INTO recipes_tags (recipe_id, ingredient_id) VALUES
(1, 7),   -- Carbonara: Comfort Food
(1, 10),  -- Carbonara: High-Protein
(2, 6),   -- Tikka Masala: Spicy
(2, 10),  -- Tikka Masala: High-Protein
(3, 1),   -- Sushi Rolls: Vegetarian
(3, 2),   -- Sushi Rolls: Vegan
(3, 3),   -- Sushi Rolls: Gluten-Free
(4, 4),   -- Tacos: Quick
(4, 10),  -- Tacos: High-Protein
(5, 4),   -- Pad Thai: Quick
(5, 6),   -- Pad Thai: Spicy
(6, 1),   -- Ratatouille: Vegetarian
(6, 2),   -- Ratatouille: Vegan
(6, 8),   -- Ratatouille: Low-Carb
(7, 5),   -- Lava Cake: Dessert
(8, 4),   -- Stir-Fry: Quick
(8, 9),   -- Stir-Fry: Breakfast (example)
(9, 1),   -- Greek Salad: Vegetarian
(9, 3),   -- Greek Salad: Gluten-Free
(9, 8),   -- Greek Salad: Low-Carb
(10, 6),  -- Ramen: Spicy
(10, 10); -- Ramen: High-Protein