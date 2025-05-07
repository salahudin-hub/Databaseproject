-- Authors
INSERT INTO author (name) VALUES 
('J.K. Rowling'), 
('George Orwell'),
('F. Scott Fitzgerald');

-- Users
INSERT INTO user (name, email) VALUES
('John Doe', 'john@example.com'),
('Jane Smith', 'jane@example.com');

-- Books (with proper author_id references)
INSERT INTO book (title, author_id, is_available) VALUES
('Harry Potter', 1, TRUE),
('1984', 2, TRUE),
('The Great Gatsby', 3, TRUE);