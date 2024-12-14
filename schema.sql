-- Create the teams table
CREATE TABLE teams (
    team_id INT PRIMARY KEY,
    team_name VARCHAR(50),
    city VARCHAR(50),
    home_stadium VARCHAR(100)
);

-- Create the players table
CREATE TABLE players (
    player_id INT PRIMARY KEY,
    player_name VARCHAR(50),
    team_id INT,
    position VARCHAR(20),
    age INT,
    FOREIGN KEY (team_id) REFERENCES teams(team_id)
);

-- Create the matches table
CREATE TABLE matches (
    match_id INT PRIMARY KEY,
    home_team_id INT,
    away_team_id INT,
    match_date DATE,
    home_team_score INT,
    away_team_score INT,
    FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
    FOREIGN KEY (away_team_id) REFERENCES teams(team_id)
);

-- Create the player_statistics table
CREATE TABLE player_statistics (
    stat_id INT PRIMARY KEY,
    match_id INT,
    player_id INT,
    goals INT,
    assists INT,
    yellow_cards INT,
    red_cards INT,
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);
