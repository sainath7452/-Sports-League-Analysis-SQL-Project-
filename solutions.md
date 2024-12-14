#### solutions.sql
```sql
-- 1. List all teams and their home stadiums
SELECT team_name, home_stadium
FROM teams;

-- 2. Top goal scorer across all matches
SELECT p.player_name, SUM(ps.goals) AS total_goals
FROM player_statistics ps
JOIN players p ON ps.player_id = p.player_id
GROUP BY ps.player_id, p.player_name
ORDER BY total_goals DESC
LIMIT 1;

-- 3. Total goals scored by each team
SELECT t.team_name, SUM(ps.goals) AS total_team_goals
FROM player_statistics ps
JOIN players p ON ps.player_id = p.player_id
JOIN teams t ON p.team_id = t.team_id
GROUP BY t.team_name
ORDER BY total_team_goals DESC;

-- 4. Match results (Winner or Draw)
SELECT m.match_id, 
       t1.team_name AS home_team, 
       t2.team_name AS away_team, 
       CASE 
           WHEN m.home_team_score > m.away_team_score THEN t1.team_name
           WHEN m.home_team_score < m.away_team_score THEN t2.team_name
           ELSE 'Draw'
       END AS result
FROM matches m
JOIN teams t1 ON m.home_team_id = t1.team_id
JOIN teams t2 ON m.away_team_id = t2.team_id;

-- 5. Players with the most yellow cards
SELECT p.player_name, SUM(ps.yellow_cards) AS total_yellow_cards
FROM player_statistics ps
JOIN players p ON ps.player_id = p.player_id
GROUP BY ps.player_id, p.player_name
ORDER BY total_yellow_cards DESC
LIMIT 5;
