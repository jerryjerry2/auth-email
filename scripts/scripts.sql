-- =========================================
-- Drop Database If Exists
-- =========================================
DROP DATABASE IF EXISTS auth;

-- =========================================
-- Create Database
-- =========================================
CREATE DATABASE auth;

-- =========================================
-- Use Database
-- =========================================
USE auth;

-- =========================================
-- Create Users Table
-- =========================================
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,

    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    address TEXT,
    role ENUM('admin', 'customer') NOT NULL DEFAULT 'customer',
    is_active TINYINT(1) NOT NULL DEFAULT 1,
    is_verified TINYINT(1) NOT NULL DEFAULT 0,
    verification_token VARCHAR(255) DEFAULT NULL,
    verification_expires DATETIME DEFAULT NULL,
    last_login_at DATETIME DEFAULT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP
);

-- =========================================
-- Add Token Column
-- =========================================
ALTER TABLE users
ADD COLUMN token VARCHAR(255) DEFAULT NULL AFTER verification_token;