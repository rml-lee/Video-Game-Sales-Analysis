DELIMITER $$
CREATE PROCEDURE clean_data()
BEGIN

-- Change year of release to int
ALTER TABLE video_games
MODIFY year_of_release int NULL;



-- Remove NULL values from year_of_release
DELETE
FROM
    video_games
WHERE
    year_of_release IS NULL;

END $$

DELIMITER ;