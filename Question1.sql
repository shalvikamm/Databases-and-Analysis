----------------------------Part 1-----------------------------------
SELECT * FROM Animal WHERE ACategory = 'rare' ORDER BY Timetofeed ASC;

----------------------------Part 2-----------------------------------
SELECT Aname, Acategory FROM Animal WHERE Aname like '%bear%';

----------------------------Part 3-----------------------------------
SELECT Aname FROM Animal WHERE Aname like '%tiger%' AND Acategory != 'common';

----------------------------Part 4-----------------------------------
SELECT Aname FROM Animal WHERE Aname NOT like '%tiger%';

----------------------------Part 5-----------------------------------
SELECT Animal.AName, Handles.ZooKeepID FROM Animal, Handles WHERE Animal.AID = Handles.AnimalID;

----------------------------Part 6-----------------------------------
SELECT Animal.AName, Handles.ZooKeepID FROM Animal LEFT OUTER JOIN Handles ON Animal.AID = Handles.AnimalID;

----------------------------Part 7-----------------------------------
SELECT ZooKeeper.ZName, AVG(Animal.TimeToFeed) AS AveragegFeedingTime 
FROM ZooKeeper JOIN Handles
ON ZooKeeper.ZID = Handles.ZooKeepID 
JOIN Animal
ON Handles.AnimalID = Animal.AID 
GROUP BY ZooKeeper.ZName
ORDER BY AveragegFeedingTime ASC; 


----------------------------Part 8-----------------------------------
SELECT Handles.Assigned, ZooKeeper.ZName, Animal.AName
FROM ZooKeeper JOIN Handles
ON ZooKeeper.ZID = Handles.ZooKeepID
JOIN Animal
ON Handles.AnimalID = Animal.AID
ORDER BY Handles.Assigned ASC;



