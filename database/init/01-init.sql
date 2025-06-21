-- Create tables for the starter project
CREATE TABLE IF NOT EXISTS users (
                                   id SERIAL PRIMARY KEY,
                                   username VARCHAR(50) UNIQUE NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

CREATE TABLE IF NOT EXISTS user_profiles (
                                           id SERIAL PRIMARY KEY,
                                           user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  bio TEXT,
  avatar_url VARCHAR(255),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
  );

-- Insert sample data
INSERT INTO users (username, email, password_hash) VALUES
                                                     ('john_doe', 'john@example.com', '$2b$10$placeholder_hash'),
                                                     ('jane_smith', 'jane@example.com', '$2b$10$placeholder_hash');

INSERT INTO user_profiles (user_id, first_name, last_name, bio) VALUES
                                                                  (1, 'John', 'Doe', 'Software Developer'),
                                                                  (2, 'Jane', 'Smith', 'UI/UX Designer');
