CREATE DATABASE TELANGANA_TOURISM;

CREATE TABLE Districts (
District_id INT PRIMARY KEY,
District_Name VARCHAR(100)NOT NULL,
Ditrict_Region VARCHAR(100)
);

CREATE TABLE Attractions(
Attraction_id INT PRIMARY KEY,
Attraction_name VARCHAR(100),
Location VARCHAR(100),
Type VARCHAR(100),
Description TEXT,
District_id INT,
FOREIGN KEY (district_id) REFERENCES Districts(district_id)
);

CREATE Table Visitors(
Visitors_id INT,
Visiting_year INT,
attraction_id INT,
Domestic_visitors INT,
International_visotors INT,
FOREIGN KEY (attraction_id) REFERENCES Attractions(attraction_id)
);


CREATE TABLE Rating(
rating_id INT PRIMARY KEY,
attraction_id INT,rating_avg DECIMAL(3,2),
number_of_reviews INT,
FOREIGN KEY (attraction_id) REFERENCES attractions(attraction_id)
);


INSERT INTO Districts VALUES
(1, 'Adilabad', 'Northern Telangana'),
(2, 'Bhadradri Kothagudem', 'Eastern Telangana'),
(3, 'Hyderabad', 'Capital Region'),
(4, 'Jagtial', 'Northern Telangana'),
(5, 'Jangaon', 'Central Telangana'),
(6, 'Jayashankar Bhupalpally', 'Eastern Telangana'),
(7, 'Jogulamba Gadwal', 'Southern Telangana'),
(8, 'Kamareddy', 'Northern Telangana'),
(9, 'Karimnagar', 'Northern Telangana'),
(10, 'Khammam', 'Eastern Telangana'),
(11, 'Komaram Bheem', 'Northern Telangana'),
(12, 'Mahabubabad', 'Southern Telangana'),
(13, 'Mahabubnagar', 'Southern Telangana'),
(14, 'Mancherial', 'Northern Telangana'),
(15, 'Medak', 'Western Telangana'),
(16, 'Medchal-Malkajgiri', 'Central Telangana'),
(17, 'Mulugu', 'Eastern Telangana'),
(18, 'Nagarkurnool', 'Southern Telangana'),
(19, 'Nalgonda', 'Southern Telangana'),
(20, 'Narayanpet', 'Southern Telangana'),
(21, 'Nirmal', 'Northern Telangana'),
(22, 'Nizamabad', 'Northern Telangana'),
(23, 'Peddapalli', 'Northern Telangana'),
(24, 'Rajanna Sircilla', 'Northern Telangana'),
(25, 'Ranga Reddy', 'Central Telangana'),
(26, 'Sangareddy', 'Western Telangana'),
(27, 'Siddipet', 'Central Telangana'),
(28, 'Suryapet', 'Southern Telangana'),
(29, 'Vikarabad', 'Western Telangana'),
(30, 'Wanaparthy', 'Southern Telangana'),
(31, 'Warangal', 'Eastern Telangana'),
(32, 'Hanamkonda', 'Eastern Telangana'),
(33, 'Yadadri Bhuvanagiri', 'Central Telangana');

SELECT * FROM Districts;

INSERT INTO Attractions VALUES
(1, 'Charminar', 'Hyderabad', 'Historical', 'Iconic monument in the heart of Hyderabad.', 3),
(2, 'Golconda Fort', 'Hyderabad', 'Historical', 'Famous for its acoustics and structure.', 3),
(3, 'Ramoji Film City', 'Hyderabad', 'Entertainment', 'One of the world’s largest film cities.', 3),
(4, 'Hussain Sagar Lake', 'Hyderabad', 'Natural', 'Famous lake with a Buddha statue.', 3),
(5, 'KBR Park', 'Hyderabad', 'Natural', 'Urban forest and jogging park.', 3),
(6, 'Warangal Fort', 'Warangal', 'Historical', 'Kakatiya dynasty fort with sculptures.', 31),
(7, 'Ramappa Temple', 'Mulugu', 'Historical', 'UNESCO heritage site.', 17),
(8, 'Laknavaram Lake', 'Mulugu', 'Natural', 'Scenic lake with hanging bridge.', 17),
(9, 'Elgandal Fort', 'Karimnagar', 'Historical', 'Historic fort on hillock.', 9),
(10, 'Lower Manair Dam', 'Karimnagar', 'Natural', 'Dam with garden and boating.', 9),
(11, 'Vemulawada Temple', 'Karimnagar', 'Spiritual', 'Famous Shiva temple.', 9),
(12, 'Jagityal Fort', 'Jagtial', 'Historical', 'European styled fort with moat.', 4),
(13, 'Kuntala Waterfalls', 'Adilabad', 'Natural', 'Tallest waterfall in Telangana.', 1),
(14, 'Pochera Waterfalls', 'Adilabad', 'Natural', 'Scenic natural waterfalls.', 1),
(15, 'Basar Saraswati Temple', 'Nirmal', 'Spiritual', 'Temple of Goddess of learning.', 21),
(16, 'Medak Cathedral', 'Medak', 'Religious', 'Gothic-style largest church in India.', 15),
(17, 'Ethipothala Falls', 'Nalgonda', 'Natural', 'Picturesque waterfalls.', 19),
(18, 'Yadagirigutta Temple', 'Yadadri', 'Spiritual', 'Temple dedicated to Narasimha Swamy.', 33),
(19, 'Bhongir Fort', 'Yadadri', 'Historical', 'Fort on unique monolithic rock.', 33),
(20, 'Nagarjunasagar Dam', 'Nalgonda', 'Natural', 'One of the largest dams.', 19),
(21, 'Kawal Tiger Reserve', 'Mancherial', 'Wildlife', 'Protected area with tigers.', 14),
(22, 'Domakonda Fort', 'Kamareddy', 'Historical', 'Fort surrounded by water.', 8),
(23, 'Jalavihar', 'Hyderabad', 'Entertainment', 'Family water park.', 3),
(24, 'Snow World', 'Hyderabad', 'Entertainment', 'Indoor snow-themed park.', 3),
(25, 'Bhadrakali Temple', 'Warangal', 'Spiritual', 'Ancient temple of Goddess Bhadrakali.', 31),
(26, 'Pakhal Lake', 'Warangal', 'Natural', 'Artificial lake and wildlife refuge.', 31),
(27, 'Surendrapuri', 'Yadadri', 'Cultural', 'Mythological museum complex.', 33),
(28, 'Bhadrachalam Temple', 'Bhadradri Kothagudem', 'Spiritual', 'Sree Sita Ramachandra Swamy Temple.', 2),
(29, 'Koil Sagar Dam', 'Jogulamba Gadwal', 'Natural', 'Scenic reservoir for irrigation.', 7),
(30, 'Jurala Dam', 'Jogulamba Gadwal', 'Natural', 'Hydroelectric and tourist site.', 7),
(31, 'Kollapur Palace', 'Nagarkurnool', 'Historical', 'Old palace and gardens.', 18),
(32, 'Eegalapenta Viewpoint', 'Nagarkurnool', 'Natural', 'Scenic spot over Srisailam.', 18),
(33, 'Kinnerasani Wildlife Sanctuary', 'Khammam', 'Wildlife', 'Forest reserve near Paloncha.', 10),
(34, 'Bogatha Waterfalls', 'Jayashankar Bhupalpally', 'Natural', 'Known as Telangana Niagara.', 6),
(35, 'Pillalamarri', 'Mahabubnagar', 'Natural', 'Ancient banyan tree and park.', 13),
(36, 'Mayuri Park', 'Mahabubnagar', 'Natural', 'Urban park and biodiversity spot.', 13),
(37, 'Edupayala Temple', 'Sangareddy', 'Spiritual', 'Unique temple with 7 streams.', 26),
(38, 'Pocharam Lake', 'Medak', 'Natural', 'Dam and birdwatching site.', 15),
(39, 'Komaram Bheem Park', 'Komaram Bheem', 'Historical', 'Memorial for tribal leader.', 11),
(40, 'Nizamabad Fort', 'Nizamabad', 'Historical', 'Historic hilltop fort.', 22),
(41, 'Ali Sagar Reservoir', 'Nizamabad', 'Natural', 'Picnic spot with boating.', 22),
(42, 'Shamirpet Lake', 'Medchal-Malkajgiri', 'Natural', 'Peaceful lake for birds.', 16),
(43, 'Keesaragutta Temple', 'Medchal-Malkajgiri', 'Spiritual', 'Ramayana-period temple.', 16),
(44, 'Rachakonda Fort', 'Ranga Reddy', 'Historical', 'Hilltop fort with trekking.', 25),
(45, 'Anantagiri Hills', 'Vikarabad', 'Natural', 'Forest hills for trekking.', 29),
(46, 'Koheda Fort', 'Siddipet', 'Historical', 'Fort with scenic valley view.', 27),
(47, 'Komati Cheruvu', 'Peddapalli', 'Natural', 'Lakefront urban recreation spot.', 23),
(48, 'Sri Rajarajeshwara Temple', 'Rajanna Sircilla', 'Spiritual', 'Historic Shiva temple.', 24),
(49, 'Ranganayaka Sagar Reservoir', 'Siddipet', 'Natural', 'Irrigation reservoir & spot.', 27),
(50, 'Hanamkonda Bhadrakali Lake', 'Hanamkonda', 'Natural', 'Urban lake & garden.', 32);

SELECT * FROM Attractions;


INSERT INTO Visitors VALUES
(1, 2024, 1, 1200000, 80000),
(2, 2024, 2, 950000, 50000),
(3, 2024, 3, 1100000, 90000),
(4, 2024, 4, 850000, 30000),
(5, 2024, 5, 600000, 20000),
(6, 2024, 6, 450000, 15000),
(7, 2024, 7, 500000, 12000),
(8, 2024, 8, 300000, 8000),
(9, 2024, 9, 220000, 5000),
(10, 2024, 10, 270000, 7000),
(11, 2024, 11, 400000, 10000),
(12, 2024, 12, 180000, 3000),
(13, 2024, 13, 550000, 11000),
(14, 2024, 14, 330000, 9000),
(15, 2024, 15, 390000, 8000),
(16, 2024, 16, 320000, 8500),
(17, 2024, 17, 410000, 6000),
(18, 2024, 18, 720000, 13000),
(19, 2024, 19, 290000, 7000),
(20, 2024, 20, 370000, 9500),
(21, 2024, 21, 280000, 6500),
(22, 2024, 22, 200000, 4000),
(23, 2024, 23, 480000, 12000),
(24, 2024, 24, 470000, 11000),
(25, 2024, 25, 250000, 5000),
(26, 2024, 26, 310000, 4000),
(27, 2024, 27, 260000, 3000),
(28, 2024, 28, 540000, 13000),
(29, 2024, 29, 230000, 3500),
(30, 2024, 30, 240000, 4000),
(31, 2024, 31, 150000, 2000),
(32, 2024, 32, 170000, 2500),
(33, 2024, 33, 300000, 8000),
(34, 2024, 34, 360000, 7500),
(35, 2024, 35, 220000, 3000),
(36, 2024, 36, 210000, 2500),
(37, 2024, 37, 270000, 4500),
(38, 2024, 38, 260000, 4200),
(39, 2024, 39, 190000, 1500),
(40, 2024, 40, 280000, 3000),
(41, 2024, 41, 230000, 2800),
(42, 2024, 42, 310000, 3500),
(43, 2024, 43, 390000, 4700),
(44, 2024, 44, 250000, 3000),
(45, 2024, 45, 420000, 5500),
(46, 2024, 46, 160000, 1900),
(47, 2024, 47, 185000, 2400),
(48, 2024, 48, 260000, 2800),
(49, 2024, 49, 275000, 2900),
(50, 2024, 50, 340000, 3300);

SELECT * FROM Visitors;

INSERT INTO Rating VALUES
(1, 1, 4.8, 9500),
(2, 2, 4.6, 8800),
(3, 3, 4.7, 9100),
(4, 4, 4.5, 7800),
(5, 5, 4.4, 6700),
(6, 6, 4.3, 5900),
(7, 7, 4.7, 6200),
(8, 8, 4.2, 5100),
(9, 9, 4.1, 4600),
(10, 10, 4.3, 4900),
(11, 11, 4.5, 5500),
(12, 12, 4.0, 4200),
(13, 13, 4.6, 7000),
(14, 14, 4.3, 6000),
(15, 15, 4.5, 6300),
(16, 16, 4.6, 6100),
(17, 17, 4.3, 5200),
(18, 18, 4.7, 7900),
(19, 19, 4.2, 5400),
(20, 20, 4.4, 5800),
(21, 21, 4.1, 5000),
(22, 22, 4.0, 4700),
(23, 23, 4.6, 6900),
(24, 24, 4.7, 7300),
(25, 25, 4.2, 4100),
(26, 26, 4.3, 4300),
(27, 27, 4.1, 3900),
(28, 28, 4.6, 7500),
(29, 29, 4.2, 3600),
(30, 30, 4.3, 3700),
(31, 31, 4.0, 3500),
(32, 32, 4.1, 3600),
(33, 33, 4.4, 5700),
(34, 34, 4.5, 5800),
(35, 35, 4.1, 3400),
(36, 36, 4.0, 3300),
(37, 37, 4.2, 4000),
(38, 38, 4.3, 4100),
(39, 39, 4.0, 2900),
(40, 40, 4.1, 3600),
(41, 41, 4.2, 3900),
(42, 42, 4.3, 4100),
(43, 43, 4.4, 4500),
(44, 44, 4.1, 3700),
(45, 45, 4.6, 6000),
(46, 46, 4.0, 2800),
(47, 47, 4.1, 3000),
(48, 48, 4.5, 5200),
(49, 49, 4.3, 4900),
(50, 50, 4.4, 5300);

select * from Rating;

--QURIES
--Total visitors per attraction
SELECT attraction_name,(v.domestic_visitors + v.International_visotors) AS total_visitors
FROM attractions a
JOIN visitors v ON a.attraction_id = v.attraction_id;


--Average rating per district
SELECT District_Name,
ROUND(AVG(r.rating_avg), 2) AS avg_rating
FROM rating r
JOIN attractions a ON r.attraction_id = a.attraction_id
JOIN districts d ON a.district_id = d.district_id
GROUP BY District_Name
ORDER BY avg_rating DESC;

--Count of attractions by type
SELECT type, COUNT(*) AS number_of_attractions
FROM attractions
GROUP BY type
ORDER BY number_of_attractions DESC;

--Total reviews per district
SELECT 
district_name,
SUM(r.number_of_reviews) AS total_reviews
FROM rating r
JOIN attractions a ON r.attraction_id = a.attraction_id
JOIN districts d ON a.district_id = d.district_id
GROUP BY District_Name
ORDER BY total_reviews DESC;



--Attractions with above average rating
SELECT 
attraction_name,
r.rating_avg
FROM attractions a
JOIN rating r ON a.attraction_id = r.attraction_id
WHERE r.rating_avg > (SELECT AVG(rating_avg) FROM rating)
ORDER BY r.rating_avg DESC;


-- Most popular attraction per district (by total visitors
SELECT DISTINCT d.District_Name, a.Attraction_name, t.total_visitors FROM (
    SELECT 
        a.attraction_id,
        a.Attraction_name,
        a.district_id,
        (v.domestic_visitors + v.international_visotors) AS total_visitors,
        RANK() OVER (PARTITION BY a.district_id ORDER BY (v.domestic_visitors + v.international_visotors) DESC) AS rank
    FROM attractions a
    JOIN visitors v ON a.attraction_id = v.attraction_id
) t
JOIN districts d ON d.district_id = t.district_id
JOIN attractions a ON a.attraction_id = t.attraction_id
WHERE t.rank = 1
ORDER BY District_Name;


--Average number ofinternational visitors by attraction type
SELECT 
    a.type,
    ROUND(AVG(v.international_visotors), 0) AS avg_international_visotors
FROM attractions a
JOIN visitors v ON a.attraction_id = v.attraction_id
GROUP BY a.type
ORDER BY avg_international_visotors DESC;


--Districts with more than 2 attractions rated above 4.5
SELECT 
District_Name AS district_name,
    COUNT(*) AS high_rated_attractions
FROM attractions a
JOIN rating r ON a.attraction_id = r.attraction_id
JOIN districts d ON a.district_id = d.district_id
WHERE r.rating_avg > 4.0
GROUP BY District_Name
HAVING COUNT(*) > 2
ORDER BY high_rated_attractions DESC;


--Converting individual tables into single table
SELECT 
    d.district_id,
    d.district_name,
    d.ditrict_region,
    a.attraction_id,
    a.attraction_name,
    a.location,
    a.type,
    a.description,
    v.Visiting_year,
    v.domestic_visitors,
    v.international_visotors,
    (v.domestic_visitors + v.international_visotors) AS total_visitors,
    r.rating_avg,
    r.number_of_reviews
FROM districts d
JOIN attractions a ON d.district_id = a.district_id
JOIN visitors v ON a.attraction_id = v.attraction_id
JOIN rating r ON a.attraction_id = r.attraction_id;
