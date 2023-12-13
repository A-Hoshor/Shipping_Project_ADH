SELECT  container_id, pName, pCity, ship_name
FROM containers c
JOIN ships s ON s.ship_name = c.sName
JOIN ports p ON p.pName = s.port_name
WHERE ship_name = "Hue City";

SELECT ships.ship_name, ships.port_name, ships.port_city, containers.container_id
FROM ships
JOIN containers
ON ships.ship_name = containers.sName
WHERE containers.height > 8;

SELECT  container_id, pName, pCity, ship_name
FROM containers c
JOIN ships s ON s.ship_name = c.sName
JOIN ports p ON p.pName = s.port_name
WHERE ship_name = "Kitty Hawk" OR ship_name = "Essex"
ORDER BY container_id;

SELECT height * width * length as "container volume", p.pName, ship_name
FROM containers c
JOIN ships s ON s.ship_name=c.sName
JOIN ports p ON p.pName = s.port_name
WHERE pname="Port of San Diego";

SELECT captains_first_name, captains_last_name, ship_name, COUNT(container_id)
FROM ships s
JOIN containers c
ON s.ship_name=c.sName
GROUP BY ship_name;


SELECT container_id, sname
FROM containers
WHERE containers.sname IN
(SELECT ships.ship_name
FROM ships 
WHERE ships.port_name = "JAXPORT");

SELECT sname, COUNT(container_id)
FROM containers
GROUP BY sname;

SELECT container_id, height * width * length as "container volume"
FROM containers
WHERE sname = "Essex";

SELECT ships.captains_first_name, ships.captains_last_name, ships.crew_total, COUNT(containers.container_id)
FROM ships
JOIN containers ON ships.ship_name = containers.sName
GROUP BY ship_name;

SELECT SUM(ships.displacement) as "Total Tons Displaced", ports.pName
FROM ships
JOIN ports ON ports.pName = ships.port_name
GROUP BY ports.pName;