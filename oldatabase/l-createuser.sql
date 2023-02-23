-- Connect to the MySQL server using the root user and root password
--mysql -u root -p

-- Use the 'cogip' database
USE cogip;

-- Create a new user in the 'user' table with the values (username, password, mode)
INSERT INTO user (username, password, mode)
VALUES ('newuser', 'newpassword', 'admin');
-- Grant admin privileges to the new user for the 'cogip' database
--GRANT ALL PRIVILEGES ON cogip.* TO 'secret'@'%' IDENTIFIED BY 'secret' WITH GRANT OPTION;

-- Apply the changes
FLUSH PRIVILEGES;
