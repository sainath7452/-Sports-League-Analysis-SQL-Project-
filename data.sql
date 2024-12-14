-- Insert data into teams
INSERT INTO teams VALUES
(1, 'Eagles', 'New York', 'Eagle Stadium'),
(2, 'Tigers', 'Chicago', 'Tiger Arena'),
(3, 'Sharks', 'San Francisco', 'Shark Tank'),
(4, 'Lions', 'Los Angeles', 'Lion Field');

-- Insert data into players
INSERT INTO players VALUES
(1, 'John Doe', 1, 'Forward', 25),
(2, 'Jane Smith', 1, 'Midfielder', 23),
(3, 'Mike Brown', 2, 'Defender', 30),
(4, 'Emily Davis', 3, 'Goalkeeper', 28),
(5, 'Chris Wilson', 4, 'Forward', 27);

-- Insert data into matches
INSERT INTO matches VALUES
(1, 1, 2, '2023-11-01', 2, 1),
(2, 3, 4, '2023-11-02', 1, 1),
(3, 1, 3, '2023-11-03', 3, 2);

-- Insert data into player_statistics
INSERT INTO player_statistics VALUES
(1, 1, 1, 2, 1, 0, 0),
(2, 1, 2, 0, 1, 1, 0),
(3, 2, 3, 0, 0, 0, 0),
(4, 3, 4, 1, 0, 0, 0),
(5, 3, 5, 2, 1, 0, 0);
