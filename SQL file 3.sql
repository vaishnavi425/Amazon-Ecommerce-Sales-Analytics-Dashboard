SELECT COUNT(*)
FROM `amazon sale report`
WHERE Amount IS NULL;

SELECT COUNT(*)
FROM `amazon sale report`
WHERE `ship-city` IS NULL;

SELECT COUNT(*)
FROM `amazon sale report`
WHERE `ship-state` IS NULL;

SELECT COUNT(*)
FROM `amazon sale report`
WHERE Category IS NULL;