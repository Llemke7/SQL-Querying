-- Comments in SQL Start with dash-dash --

--1--
SELECT * FROM analytics WHERE id = 1880;
 1880 | Web Browser for Android | PRODUCTIVITY |    4.3 |  144879 | Varies with device |     10000000 |     0 | Everyone       | {Productivity} | 2016-01-24   | 3.5.0           | Varies with device
(1 row)

--2--
SELECT * FROM analytics WHERE last_updated = '2018-08-01';
  10 | Clash Royale                                                                      | COMMUNICATION       |      4 | 56646578 | Varies with device |   1000000000 |     0 | Everyone       | {Communication}                 | 2018-08-01   | Varies with device | Varies with device
   11 | Candy Crush Saga                                                                  | COMMUNICATION       |      4 | 56642847 | Varies with device |   1000000000 |     0 | Everyone       | {Communication}                 | 2018-08-01   | Varies with device | Varies with device
   12 | UC Browser - Fast Download Private & Secure                                       | COMMUNICATION       |      4 | 56642847 | Varies with device |   1000000000 |     0 | Everyone       | {Communication}                 | 2018-08-01   | Varies with device | Varies with device
   74 | Score! Hero  

--3--
SELECT category, COUNT(*) FROM analytics GROUP BY category;
      category       | count
---------------------+-------
 BOOKS_AND_REFERENCE |   191
 COMMUNICATION       |   342
 BEAUTY              |    46
 EVENTS              |    52
 PARENTING           |    59
 PHOTOGRAPHY         |   313
 GAME                |  1110
 BUSINESS            |   313
 SOCIAL              |   269
 MEDICAL             |   350
 TOOLS               |   753
 TRAVEL_AND_LOCAL    |   234
 ART_AND_DESIGN      |    63
 LIFESTYLE           |   319

 --4--
  SELECT app_name, reviews FROM analytics ORDER BY reviews DESC LIMIT 5;
                 app_name                 | reviews
------------------------------------------+----------
 Facebook                                 | 78158306
 WhatsApp Messenger                       | 78128208
 Instagram                                | 69119316
 Messenger – Text and Video Chat for Free | 69119316
 Clash of Clans                           | 69109672
(5 rows)

--5--
SELECT app_name, rating FROM analytics WHERE rating <= 4.8;
_name                                                                                              | rating
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------
 Facebook                                                                                                                                                                                           |    4.1
 WhatsApp Messenger                                                                                                                                                                                 |    4.1
 Instagram                                                                                                                                                                                          |    4.4
 Messenger – Text and Video Chat for Free  

 --6--
 SELECT AVG(rating), category FROM analytics GROUP BY category ORDER BY category DESC;
         avg         |      category
--------------------+---------------------
   4.24399998664856 | WEATHER
  4.059748438919115 | VIDEO_PLAYERS
   4.10179372753263 | TRAVEL_AND_LOCAL
  4.050627608678331 | TOOLS
  4.233333332576449 | SPORTS
  4.245669291244717 | SOCIAL
  4.253648051376507 | SHOPPING
  4.212173904543338 | PRODUCTIVITY
  4.196116511489967 | PHOTOGRAPHY
    4.3283387457509 | PERSONALIZATION
  4.285714266251545 | PARENTING
  4.130131007281974 | NEWS_AND_MAGAZINES
 4.1926829182520144 | MEDICAL
  4.058196711735647 | MAPS_AND_NAVIGATION

  --7--
SELECT app_name, rating, price FROM analytics WHERE rating < 3;
                          app_name                        | rating | price
--------------------------------------------------------+--------+--------
 The Wall Street Journal: Business & Market News        |    2.8 |      0
 Vikings: an Archer’s Journey                           |    2.9 |      0
 Shoot Em Down Free                                     |    2.4 |      0
 NoBuffDating - Free Dating App                         |    2.7 |      0
 Morse Code Reader                                      |    2.9 |      0
 Surah Al-Waqiah                                        |    2.7 |      0
 WPTV 5 West Palm Beach                                 |    2.5 |      0
 Papyrus Ex                                             |    2.5 |      0
 AE Jewels                                              |    2.8 |      0
 Gas Prices (Germany only)                              |    2.9 |      0
 CCP DZ : Fill out a check | Number in letters DZD      |    1.8 |      0
 EZ File Manager(Root Explorer)                         |    2.8 |      0
 Two Nights at jumpscare                                |    2.7 |      0
 Job CV Maker & Portfolio Maker                         |    2.9 |      0

 --8--
SELECT * FROM analytics WHERE min_installs <=50 ORDER BY rating DESC;
 ----+--------------------+--------------------
 9518 | EI App 1                                         | COMMUNICATION       |        |       4 | 3.4M               |           10 |  0.99 | Mature 17+     | {Communication}       | 2018-02-12   | 11                 | 4.0.3 and up
 8999 | Cryptocurrency Trading - How To Trade Crypto     | TOOLS               |        |      10 | 13M                |           50 |     0 | Everyone       | {Tools}               | 2018-07-30   | 5.1                | 4.1 and up
 9205 | Ako ay may lobo Pinoy Kid Song Offline           | FAMILY              |        |       7 | 28M                |           10 |  0.99 | Everyone       | {Casual}              | 2018-05-21   | 1.01               | 4.1 and up
 9213 | PROFESSOR SEE-BA LINGUAGENS E SUAS TECNOLOGIAS   | BOOKS_AND_REFERENCE |        |       7:

 --9--
 SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;
                    app_name
-------------------------------------------------
 The Wall Street Journal: Business & Market News
 Vikings: an Archer’s Journey
 Shoot Em Down Free
(3 rows)

--10--
SELECT app_name, reviews FROM analytics WHERE price >= .10 AND price <= 1.00 ORDER BY reviews DESC LIMIT 10;
                  app_name                   | reviews
---------------------------------------------+---------
 Free Slideshow Maker & Video Editor         |  408292
 Couple - Relationship App                   |   85468
 Anime X Wallpaper                           |   84114
 Dance On Mobile                             |   61264
 Marvel Unlimited                            |   58617
 FastMeet: Chat, Dating, Love                |   58614
 IHG®: Hotel Deals & Rewards                 |   48754
 Live Weather & Daily Local Weather Forecast |   38419
 DreamMapper                                 |   32496
 Můj T-Mobile Business                       |   32344
(10 rows)

--11-- ????? 
SELECT app_name, MAX(last_updated) FROM analytics GROUP BY app_name;
_name                                                                                              |    max
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------
 E-NUM                                                                                                                                                                                              | 2018-08-06
 retteMi.ch                                                                                                                                                                                         | 2018-07-28
 Cardboard                                                                                                                                                                                          | 2018-05-30
 Fashion Girls Dress up Makeup                                                                   :

--12-- ?????
SELECT app_name, MAX(price) FROM analytics GROUP BY app_name;
_name                                                                                              |  max
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------
 E-NUM                                                                                                                                                                                              |      0
 retteMi.ch                                                                                                                                                                                         |      0
 Cardboard                                                                                                                                                                                          |      0
 Fashion Girls Dress up Makeup                                                                   :

 --13--
  SELECT SUM(reviews) FROM analytics;
    sum
------------
 4814575866
(1 row)

--14--
SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
    category
-----------------
 COMMUNICATION
 PHOTOGRAPHY
 GAME
 BUSINESS
 MEDICAL
 TOOLS
 LIFESTYLE
 PRODUCTIVITY
 PERSONALIZATION
 FINANCE
 SPORTS
 FAMILY
(12 rows)

--15--  ????????
SELECT app_name, reviews, min_installs FROM analytics WHERE min_installs >= 100000 ORDER BY app_name LIMIT 1;
          app_name          | reviews | min_installs
----------------------------+---------+--------------
 - Free Comics - Comic Apps |     631 |       100000
(1 row)