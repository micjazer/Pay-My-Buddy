
-- ? Ce fichier contient les données d'exemple pour les environnements de développement et de test.

-- ! Exécuter ce script SQL dans pgAdmin après celui des tables et avant celui des triggers.


-- =======================================================================================================
-- =======================================================================================================
-- * DATA POUR L'ENVIRONNEMENT DE DEVELOPPEMENT
-- =======================================================================================================
-- =======================================================================================================


SET search_path TO dev;

---------------------------------------------------
-- Insérer cinq utilisateurs
---------------------------------------------------
INSERT INTO users (username, email, password)
VALUES ('Jean', 'jean@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Pierre', 'pierre@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Paul', 'paul@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Jacques', 'jacques@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Denis', 'denis@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Yannick', 'yannick@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly');
-- ! Le mdp des utilisateurs est Abc123@!

---------------------------------------------------
-- Insérer des connexions entre utilisateurs
---------------------------------------------------
INSERT INTO relationships (requester_id, receiver_id, created_at, validated_at)
VALUES (1, 2, '2025-05-01 10:00:00', '2023-01-02 10:00:00'),
       (2, 3, '2025-05-01 11:00:00', '2023-02-02 11:00:00'),
       (3, 4, '2025-05-01 12:00:00', '2023-03-02 12:00:00'),
       (4, 5, '2025-05-01 13:00:00', '2023-04-02 13:00:00'),
       (5, 1, '2025-05-01 14:00:00', '2023-05-02 14:00:00'),
       (6, 1, '2025-05-01 14:00:00', NULL);

---------------------------------------------------
-- Insérer des comptes pour chaque utilisateur
---------------------------------------------------
INSERT INTO accounts (user_id, balance)
VALUES (1, 1100.00),
       (2, 2200.00),
       (3, 1300.00),
       (4, 3400.00),
       (5, 2500.00),
       (6, 0.00);

---------------------------------------------------
-- Insérer des transactions entre utilisateurs
---------------------------------------------------
INSERT INTO transactions (sender_id, receiver_id, amount, description, processed_at)
VALUES (1, 2, 50.00, '', '2025-06-01 15:00:00'),
  

-- =======================================================================================================
-- =======================================================================================================
-- * DATA POUR L'ENVIRONNEMENT DE TEST
-- =======================================================================================================
-- =======================================================================================================


SET search_path TO test;

---------------------------------------------------
-- Insérer cinq utilisateurs
---------------------------------------------------
INSERT INTO users (username, email, password)
VALUES ('Jean', 'jean@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Pierre', 'pierre@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Paul', 'paul@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Jacques', 'jacques@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Denis', 'denis@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly'),
       ('Yannick', 'yannick@gmail.com', '$2a$10$QWDIWUBgiITPXVTEJZ8goeZGmgVuEM6pyhsia1zZ2BLeyznBbNWly');
-- ! Le mdp des utilisateurs est Abc123@!


---------------------------------------------------
-- Insérer des connexions entre utilisateurs
---------------------------------------------------
INSERT INTO relationships (requester_id, receiver_id, created_at, validated_at)
VALUES (1, 2, '2025-05-01 10:00:00', '2025-05-02 10:00:00'),
       (2, 3, '2025-05-01 11:00:00', '2025-05-02 11:00:00'),
       (3, 4, '2025-05-01 12:00:00', '2025-05-02 12:00:00'),
       (4, 5, '2025-05-01 13:00:00', '2025-05-02 13:00:00'),
       (5, 1, '2025-05-01 14:00:00', '2025-05-02 14:00:00'),
       (6, 1, '2025-05-01 14:00:00', NULL);


---------------------------------------------------
-- Insérer des comptes pour chaque utilisateur
---------------------------------------------------
INSERT INTO accounts (user_id, balance)
VALUES (1, 1100.00),
       (2, 2200.00),
       (3, 1300.00),
       (4, 3400.00),
       (5, 2500.00),
       (6, 0.00);


---------------------------------------------------
-- Insérer des transactions entre utilisateurs
---------------------------------------------------
INSERT INTO transactions (sender_id, receiver_id, amount, description, processed_at)
VALUES (1, 2, 50.00, '', '2025-05-01 15:00:00');