USE internshaladb_ass2;
select * from internshaladb_ass2.games;
-- 1. Insert a new game
INSERT INTO Games (GameID, GameTitle, Genre, ReleaseDate, Developer)
SELECT MAX_ID + 1, 'Future Racing', 'Racing', '2024-10-01', 'Speed Studios'
FROM (SELECT MAX(GameID) AS MAX_ID FROM Games) AS temp;

--  2. Update price of GameID 2 on PlayStation to 60
SET SQL_SAFE_UPDATES = 0;
UPDATE `game sales`
SET Price = 60
WHERE GameID = 2 AND Platform = 'PlayStation';

-- 3. Delete record of GameID 5 from game sales safely
DELETE FROM `game sales`
WHERE GameID = 5
LIMIT 1;

-- 4. Total units sold for each game (READ-ONLY, safe)
SELECT gs.GameID, g.GameTitle, SUM(gs.UnitsSold) AS TotalUnitsSold
FROM `game sales` gs
JOIN games g ON gs.GameID = g.GameID
GROUP BY gs.GameID, g.GameTitle;

--  5. Game with the highest units sold in North America
SELECT g.GameTitle, gs.GameID, gs.UnitsSold
FROM `game sales` gs
JOIN games g ON gs.GameID = g.GameID
WHERE gs.SalesRegion = 'North America'
ORDER BY gs.UnitsSold DESC
LIMIT 1;

-- 6. Titles, platforms, sales regions, units sold
SELECT g.GameTitle, gs.Platform, gs.SalesRegion, gs.UnitsSold
FROM `game sales` gs
JOIN games g ON gs.GameID = g.GameID;

-- 7. All games, including those without sales
SELECT g.GameID, g.GameTitle, gs.Platform, gs.SalesRegion, gs.UnitsSold
FROM games g
LEFT JOIN `game sales` gs ON g.GameID = gs.GameID;

-- 8. Sales records with missing game details
SELECT gs.*
FROM `game sales` gs
LEFT JOIN games g ON gs.GameID = g.GameID
WHERE g.GameID IS NULL;

--  9. North America & Europe sales, removing duplicates
SELECT DISTINCT *
FROM `game sales`
WHERE SalesRegion IN ('North America', 'Europe');

-- 10. North America & Europe sales, with duplicates
SELECT *
FROM `game sales`
WHERE SalesRegion IN ('North America', 'Europe');










