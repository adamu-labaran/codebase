Select the title and release_year of all films released in 1990 or 2000 that were longer than two hours.

Take Hint (-10 XP)
2
Select the title and language of all films in English, Spanish, or French using IN.
3
Select the title, certification and language of all films certified NC-17 or R that are in English, Italian, or Greek.

To solve these SQL queries, let's assume we have a table named films with the following columns: title, release_year, length, language, and certification.

Here are the SQL queries to address the tasks:

Query 1:
Select the title and release_year of all films released in 1990 or 2000 that were longer than two hours.

sql
Copy code
SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 2000)
  AND length > 120;
Query 2:
Select the title and language of all films in English, Spanish, or French using IN.

sql
Copy code
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');
Query 3:
Select the title, certification, and language of all films certified NC-17 or R that are in English, Italian, or Greek.

sql
Copy code
SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17', 'R')
  AND language IN ('English', 'Italian', 'Greek');
These queries will retrieve the desired information based on the specified criteria from the films table.

SELECT title, release_year
FROM films
WHERE (release_year = 1990 OR release_year = 2000)
  AND length > 120;

SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');

SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17', 'R')
  AND language IN ('English', 'Italian', 'Greek');

-- Find the title and release_year for all films over two hours in length released in 1990 and 2000

SELECT title, release_year
FROM films
WHERE release_year IN (1990, 2000)
	AND duration > 120;
    
    -- Find the title and language of all films in English, Spanish, and French
SELECT title, language
FROM films
WHERE language IN ('English', 'Spanish', 'French');


-- Find the title, certification, and language all films certified NC-17 or R that are in English, Italian, or Greek
SELECT title, certification, language
FROM films
WHERE certification IN ('NC-17', 'R')
  AND language IN ('English', 'Italian', 'Greek');

-- Count the unique titles
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE release_year BETWEEN 1990 AND 1999
-- Filter to English-language films
  AND language = 'English'
-- Narrow it down to G, PG, and PG-13 certifications
  AND certification IN ('G', 'PG', 'PG-13');

Combining filtering and selecting
Time for a little challenge. So far, your SQL vocabulary from this course includes COUNT(), DISTINCT, LIMIT, WHERE, OR, AND, BETWEEN, LIKE, NOT LIKE, and IN. In this exercise, you will try to use some of these together. Writing more complex queries will be standard for you as you become a qualified SQL programmer.

As this query will be a little more complicated than what you've seen so far, we've included a bit of code to get you started. You will be using DISTINCT here too because, surprise, there are two movies named 'Hamlet' in this dataset!

Follow the instructions to find out what 90's films we have in our dataset that would be suitable for English-speaking teens.

Instructions
100 XP
Instructions
100 XP
Count the unique titles from the films database and use the alias provided.
Filter to include only movies with a release_year from 1990 to 1999, inclusive.
Add another filter narrowing your query down to English-language films.
Add a final filter to select only films with 'G', 'PG', 'PG-13' certifications.


ChatGPT
To craft an SQL query that counts the unique titles of films released in the 1990s, in English, and suitable for teens (with certifications 'G', 'PG', or 'PG-13'), you need to combine several SQL commands effectively. Here's the step-by-step breakdown of how to approach this query:

SELECT DISTINCT titles: To ensure we only count unique film titles.
COUNT(): To get the count of these unique titles.
FROM films: Indicating the table we're querying from.
WHERE: To apply the necessary filters:
release_year BETWEEN 1990 AND 1999: To select films from the 1990s.
language = 'English': To filter for English-language films.
certification IN ('G', 'PG', 'PG-13'): To select films with the specified certifications.
Combining all these elements, the final query looks like this:

sql
Copy code
SELECT COUNT(DISTINCT title) AS unique_90s_english_teen_friendly_films
FROM films
WHERE release_year BETWEEN 1990 AND 1999
  AND language = 'English'
  AND certification IN ('G', 'PG', 'PG-13');
This query will give you the count of unique film titles that meet all the specified criteria.

-- Count the unique titles
SELECT ___ AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE ___
-- Filter to English-language films
___
-- Narrow it down to G, PG, and PG-13 certifications
___;

csharp
Copy code
Count the unique titles from the films database and use the alias provided.
Filter to include only movies with a release_year from 1990 to 1999, inclusive.
Add another filter narrowing your query down to English-language films.
Add a final filter to select only films with 'G', 'PG', 'PG-13' certifications.

ChatGPT
Let's fill in the blanks in your SQL query template to achieve the desired outcome:

sql
Copy code
-- Count the unique titles
SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens
FROM films
-- Filter to release_years to between 1990 and 1999
WHERE release_year BETWEEN 1990 AND 1999
-- Filter to English-language films
  AND language = 'English'
-- Narrow it down to G, PG, and PG-13 certifications
  AND certification IN ('G', 'PG', 'PG-13');
Here’s the breakdown of each part:

COUNT(DISTINCT title): Counts the number of unique film titles.
AS nineties_english_films_for_teens: Provides an alias for the resulting count.
FROM films: Specifies the table to query.
WHERE release_year BETWEEN 1990 AND 1999: Filters films released between 1990 and 1999.
AND language = 'English': Filters films in English.
AND certification IN ('G', 'PG', 'PG-13'): Filters films with certifications suitable for teens.




import pandas as pd
spotify = pd.read_csv("spotify_top_music.csv", index_col=0)
print(spotify.shape)
spotify.head(100)

import pandas as pd
austin = pd.read_csv("data/listings_austin.csv", index_col=0)
austin.head(100)

import pandas as pd
bookings = pd.read_csv("hotel_bookings_clean.csv")
print(bookings.shape)
bookings.head(100)

import pandas as pd
seoul = pd.read_csv("data/SeoulBikeData.csv")
seoul.head(100)



import pandas as pd
stock = pd.read_csv("stock_data.csv", index_col=None)
print(stock.shape)
stock.head(100)


import pandas as pd

measles = pd.read_csv("data/measles.csv")
print(measles.shape)
measles.head(100)


import pandas as pd
gdp_data = pd.read_csv("gdp_data.csv", index_col=None)
print(gdp_data.head)
gdp_data.head(100)


# Grid Coordinates for States
# Source: https://github.com/hrbrmstr/statebins/blob/master/R/aaa.R
state_coords = pd.read_csv('state_coords.csv')
state_coords.head(100)


# Covid Cases by State
covid_cases = pd.read_csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-states.csv")
covid_cases.head(100)

# Load packages
import pandas as pd
import matplotlib.pyplot as plt
%config InlineBackend.figure_format = 'retina'
import seaborn as sns

SELECT *
FROM 'data.csv'


import pandas as pd
sleep_data = pd.read_csv('data.csv')
sleep_data


SELECT 
	country_name AS "country_name",
    SUM(quantity) AS "total_inventory",
    SUM(CASE WHEN category_name = 'Video Card' THEN quantity
        ELSE 0 END) AS "video_card",
    SUM(CASE WHEN category_name = 'Mother Board' THEN quantity
        ELSE 0 END) AS "motherboard",
    SUM(CASE WHEN category_name = 'CPU' THEN quantity
		ELSE 0 END) AS "cpu",
    SUM(CASE WHEN category_name = 'Storage' THEN quantity
        ELSE 0 END) AS "storage"
FROM inventories
INNER JOIN warehouses using(warehouse_id)
INNER JOIN locations using(location_id)
INNER JOIN countries using(country_id)
INNER JOIN products using(product_id)
INNER JOIN product_categories using (category_id)
GROUP BY country_name

Netflix! What started in 1997 as a DVD rental service has since exploded into one of the largest entertainment and media companies.

Given the large number of movies and series available on the platform, it is a perfect opportunity to flex your exploratory data analysis skills and dive into the entertainment industry. Our friend has also been brushing up on their Python skills and has taken a first crack at a CSV file containing Netflix data. They believe that the average duration of movies has been declining. Using your friends initial research, you'll delve into the Netflix data to see if you can determine whether movie lengths are actually getting shorter and explain some of the contributing factors, if any.

You have been supplied with the dataset netflix_data.csv , along with the following table detailing the column names and descriptions. This data does contain null values and some outliers, but handling these is out of scope for the project. Feel free to experiment after submitting!

The data netflix_data.csv Column Description show_id The ID of the show type Type of show title Title of the show director Director of the show cast Cast of the show country Country of origin date_added Date added to Netflix release_year Year of Netflix release duration Duration of the show in minutes description Description of the show genre Show genre

1
# Importing pandas and matplotlib
2
import pandas as pd
3
import matplotlib.pyplot as plt
1
# Load the CSV file and store as netflix_df
2
netflix_df = pd.read_csv('netflix_data.csv')
3
netflix_df[0:5]
show_id
type
title
director
cast
country
date_added
release_year
duration
description
genre
0
s1
TV Show
3%
null
João Miguel, Bianca Comparato, Michel Gomes, Rodolfo Valente, Vaneza Oliveira, Rafael Lozano, Viviane Porto, Mel Fronckowiak, Sergio Mamberti, Zezé Motta, Celso Frateschi
Brazil
August 14, 2020
2020
4
In a future where the elite inhabit an island paradise far from the crowded slums, you get one chance to join the 3% saved from squalor.
International TV
1
s2
Movie
7:19
Jorge Michel Grau
Demián Bichir, Héctor Bonilla, Oscar Serrano, Azalia Ortiz, Octavio Michel, Carmen Beato
Mexico
December 23, 2016
2016
93
After a devastating earthquake hits Mexico City, trapped survivors from all walks of life wait to be rescued while trying desperately to stay alive.
Dramas
2
s3
Movie
23:59
Gilbert Chan
Tedd Chan, Stella Chung, Henley Hii, Lawrence Koh, Tommy Kuan, Josh Lai, Mark Lee, Susan Leong, Benjamin Lim
Singapore
December 20, 2018
2011
78
When an army recruit is found dead, his fellow soldiers are forced to confront a terrifying secret that's haunting their jungle island training camp.
Horror Movies
3
s4
Movie
9
Shane Acker
Elijah Wood, John C. Reilly, Jennifer Connelly, Christopher Plummer, Crispin Glover, Martin Landau, Fred Tatasciore, Alan Oppenheimer, Tom Kane
United States
November 16, 2017
2009
80
In a postapocalyptic world, rag-doll robots hide in fear from dangerous machines out to exterminate them, until a brave newcomer joins the group.
Action
4
s5
Movie
21
Robert Luketic
Jim Sturgess, Kevin Spacey, Kate Bosworth, Aaron Yoo, Liza Lapira, Jacob Pitts, Laurence Fishburne, Jack McGee, Josh Gad, Sam Golzari, Helen Carey, Jack Gilpin
United States
January 1, 2020
2008
123
A brilliant group of students become card-counting experts with the intent of swindling millions out of Las Vegas casinos by playing blackjack.
Dramas
1
# Filter the data to remove TV shows and store as netflix_subset.
2
netflix_subset = netflix_df[netflix_df['type'] == 'Movie']
3
netflix_subset
‌
‌
‌
‌
‌
‌
‌
‌
‌
‌
1
#Investigate and subset the Netflix movie data, keeping only the columns "title" "country", "genre", "release_year" "duration", and saving this into a new DataFrame called netflix_movies.
2
netflix_movies = netflix_subset[['title', 'country', 'genre', 'release_year', 'duration']]
3
netflix_subset
‌
‌
‌
‌
‌
‌
‌
‌
‌
‌
1
# Filter netflix_movies to find the movies that are strictly shorter than 60 minutes, saving the resulting DataFrame as short_movies
2
short_movies = netflix_movies[netflix_movies.duration < 60]
3
short_movies[0:20]
‌
‌
‌
‌
‌
‌
‌
‌
‌
‌
1
# assign colors to genre groups and create a scatter plot for movie duration by release year
2
colors = []
3
for label, row in netflix_movies.iterrows() :
4
    if row['genre'] == 'Children' :
5
        colors.append('red')
6
    elif row['genre'] == 'Documentaries' :
7
        colors.append('yellow')
8
    elif row['genre'] == 'Stand-Up' :
9
        colors.append('blue')
10
    else : 
11
        colors.append('green')
12
colors[:10]
13
fig = plt.figure(figsize = (12, 8))
14
plt.scatter(netflix_movies.release_year, netflix_movies.duration, c=colors)
15
plt.xlabel('Release year')
16
plt.ylabel('Duration (min)')
17
plt.title('Movie Duration by Year of Release')
18
plt.show()
‌
‌
‌
‌
1
# Are we certain that movies are getting shorter?
2
answer = 'no'

# assign colors to genre groups and create a scatter plot for movie duration by release year
colors = []
for label, row in netflix_movies.iterrows() :
    if row['genre'] == 'Children' :
        colors.append('red')
    elif row['genre'] == 'Documentaries' :
        colors.append('yellow')
    elif row['genre'] == 'Stand-Up' :
        colors.append('blue')
    else : 
        colors.append('green')
colors[:10]
fig = plt.figure(figsize = (12, 8))
plt.scatter(netflix_movies.release_year, netflix_movies.duration, c=colors)
plt.xlabel('Release year')
plt.ylabel('Duration (min)')
plt.title('Movie Duration by Year of Release')
plt.show()

# Load the CSV file and store as netflix_df
netflix_df = pd.read_csv('netflix_data.csv')
netflix_df[0:5]
# Importing pandas and matplotlib
import pandas as pd
import matplotlib.pyplot as plt


SELECT show_title, MAX(cumulative_weeks_in_top_10) as max_cumulative_weeks_in_top_10
FROM 'netflix_top10_country.csv'
WHERE country_name = 'Argentina'
GROUP BY show_title
ORDER BY max_cumulative_weeks_in_top_10 DESC
LIMIT 3;

import pandas as pd
global_top_10 = pd.read_csv("netflix_top10.csv", index_col=0)
print(global_top_10.shape)
global_top_10.head()

countries_top_10 = pd.read_csv("netflix_top10_country.csv", index_col=0)
print(countries_top_10.shape)
countries_top_10.head()

# Import libraries
import pandas as pd
import plotly.express as px

# Create choropleth map
fig = px.choropleth(
    hardware_inventory,
    locations="country_name",
    color="total_inventory",
    locationmode="country names",
    custom_data=[
        "country_name",
        "total_inventory",
        "video_card",
        "motherboard",
        "cpu",
        "storage",
    ],
    color_continuous_scale=px.colors.sequential.Viridis,
)

# Customize data to show
fig.update_traces(
    hovertemplate="<br>".join(
        [
            "<b>%{customdata[0]}</b>",
            "<br>",
            "<b>Total Inventory:</b> %{customdata[1]}",
            "<b>Video card:</b> %{customdata[2]}",
            "<b>Motherboard:</b> %{customdata[3]}",
            "<b>CPU:</b> %{customdata[4]}",
            "<b>Storage:</b> %{customdata[5]}",
        ]
    ),
)

# Create labels and show plot
fig.update_layout(
    title="Worldwide Computer Hardware Inventory<br><sup>Total Quantity and by Category</sup>",
    title_x=0.5,
    template="plotly_dark",
    coloraxis_colorbar_title_text="Total Inventory",
)

fig.show()

SELECT 
	country_name AS "country_name",
    SUM(quantity) AS "total_inventory",
    SUM(CASE WHEN category_name = 'Video Card' THEN quantity
        ELSE 0 END) AS "video_card",
    SUM(CASE WHEN category_name = 'Mother Board' THEN quantity
        ELSE 0 END) AS "motherboard",
    SUM(CASE WHEN category_name = 'CPU' THEN quantity
		ELSE 0 END) AS "cpu",
    SUM(CASE WHEN category_name = 'Storage' THEN quantity
        ELSE 0 END) AS "storage"
FROM inventories
INNER JOIN warehouses using(warehouse_id)
INNER JOIN locations using(location_id)
INNER JOIN countries using(country_id)
INNER JOIN products using(product_id)
INNER JOIN product_categories using (category_id)
GROUP BY country_name

WITH past_employees AS (
	SELECT 
    	emp_no,
        Min(from_date) AS start_date,
        Max(to_date) AS end_date
    FROM salaries
    WHERE to_date != (SELECT MAX(to_date) FROM salaries)
    GROUP BY emp_no),
    
employee_tenures AS (
	SELECT 
		emp_no,
        start_date,
        end_date,
        DATEDIFF(end_date, start_date) / 365 AS employee_tenure
    FROM past_employees)

SELECT 
	title,
    AVG(employee_tenure) AS avg_employee_tenure
FROM employee_tenures
INNER JOIN titles
    ON employee_tenures.emp_no = titles.emp_no
    AND employee_tenures.end_date = titles.to_date
GROUP BY title
ORDER BY avg_employee_tenure

# Import libraries
import pandas as pd
import plotly.express as px

# Create bar chart
fig = px.bar(employee_tenures, x="avg_employee_tenure", y="title")

# Create labels and show plot
fig.update_layout(
    title="Average Employee Tenure<br><sup>By Last Held Position</sup>",
    title_x=0.5,
    xaxis_title="Average Tenure",
    yaxis_title="Position",
    legend_title="Position",
    template="plotly_dark",
)
fig.show()

# Import libraries
import pandas as pd
import plotly.express as px

# Create bar chart
fig = px.bar(
    bicycle_sales,
    x=bicycle_sales["model_year"].astype(str),
    y="total",
    color="category_name",
)

# Create labels and show plot
fig.update_layout(
    title="Bicycle Inventory<br><sup>By Quantity and Category of Product</sup>",
    title_x=0.5,
    xaxis_title="Year",
    yaxis_title="Quantity in Stock",
    legend_title="Bicycle Category",
    template="plotly_dark",
)
fig.show()

WITH star_wars_sets AS (
	SELECT set_num
    FROM themes 
	INNER JOIN sets
    	ON themes.id = sets.theme_id
    WHERE parent_id = (
        SELECT id FROM themes 
        WHERE name = 'Star Wars' 
        	AND parent_id IS NULL)
),

star_wars_sets_info AS (
    SELECT
    	set_num,
    	set_name, 
    	year, 
    	num_parts, 
    	color_name, 
    	rgb,
		ROW_NUMBER() OVER(PARTITION BY set_num ORDER BY number_per_color DESC) AS color_rank
    FROM (
        SELECT
        	sets.set_num AS set_num,
            rgb, 
            colors.name AS color_name, 
            sets.name AS set_name, 
            year, 
            num_parts, 
            SUM(quantity) AS number_per_color
		FROM inventory_parts
            INNER JOIN inventories
                ON inventory_parts.inventory_id = inventories.id
            INNER JOIN sets
                ON inventories.set_num = sets.set_num
            INNER JOIN colors
                ON inventory_parts.color_id = colors.id
		WHERE sets.set_num IN (SELECT set_num FROM star_wars_sets)
		GROUP BY sets.set_num, rgb, color_name, set_name, year, num_parts) AS sub
)

SELECT * FROM star_wars_sets_info 
WHERE color_rank = 1

import plotly.express as px

# Create color map
colors = dict(zip(star_wars_sets.set_num, star_wars_sets.rgb.apply(lambda x: "#" + x)))

# Create a strip plot of the data
fig = px.strip(
    star_wars_sets,
    x="year",
    y="num_parts",
    color="set_num",
    color_discrete_map=colors,
    custom_data=["set_name", "year", "num_parts", "color_name"],
).update_traces(dict(marker_line_width=0.5, marker_line_color="black"))

# Customize data to show
fig.update_traces(
    hovertemplate="<br>".join(
        [
            "<b>%{customdata[0]}</b>",
            "<b>Year:</b> %{customdata[1]}",
            "<b>Number of parts:</b> %{customdata[2]}",
            "<b>Most common color in set:</b> %{customdata[3]}<extra></extra>",
        ]
    ),
)

# Update the layout and show the figure
fig.update_layout(
    title="Star Wars Lego Sets<br><sup>Year of Release, Number of Parts, and Most Common Color</sup>",
    title_x=0.5,
    xaxis_title="Year of Release",
    yaxis_title="Number of Parts",
    template="plotly_white",
    coloraxis_colorbar_title_text="Total Inventory",
    showlegend=False
)

fig.show()

SELECT 
    caldate, 
    eventname,  
    catgroup, 
    priceperticket,
    SUM(qtysold) AS qtysold
FROM event
INNER JOIN category USING(catid)
INNER JOIN date USING(dateid)
INNER JOIN sales USING(eventid)
INNER JOIN listing USING(eventid)
GROUP BY caldate, eventname, catgroup, priceperticket
ORDER BY qtysold DESC
LIMIT 100

# Import libraries
import pandas as pd
import plotly.express as px

# Create scatter plot
fig = px.scatter(
    ticket_prices,
    x="caldate",
    y="qtysold",
    color="catgroup",
    size="priceperticket",
    hover_data=["eventname"],
)

# Create labels and show plot
fig.update_layout(
    title="Biggest Concerts and Shows over Time<br><sup>By Quantity Sold and Price of Tickets</sup>",
    title_x=0.5,
    xaxis_title="Date",
    yaxis_title="Quantity Sold",
    legend_title="Category",
    template="plotly_dark",
)
fig.show()

%%capture
# Load packages
import pandas as pd
import matplotlib.pyplot as plt
%config InlineBackend.figure_format = 'retina'
import seaborn as sns

teams = pd.read_csv('teams.csv')[['yearID', 'franchID', 'name', 'G', 'SO']] 
teams.head(100)


-- world nation datasets
WITH world_languages AS (
    SELECT 
        countries.name AS country, 
        continents.name AS continent,  
		year,
    	population,
    	COUNT(*) AS number_of_languages,
		ROW_NUMBER() OVER(PARTITION BY country ORDER BY year DESC) AS year_index
	FROM countries
	INNER JOIN country_languages USING(country_id)
    INNER JOIN languages USING(language_id)
    INNER JOIN country_stats USING(country_id)
    INNER JOIN regions USING(region_id)
    INNER JOIN continents USING(continent_id)
    GROUP BY 1, 2, 3, 4)

SELECT * FROM world_languages
WHERE year_index = 1

# Import libraries
import pandas as pd
import plotly.express as px

# Create scatter plot
fig = px.scatter(
    country_languages,
    x="population",
    y="number_of_languages",
    color="continent",
    hover_name="country",
    log_x=True,
)

# Create labels and show plot
fig.update_layout(
    title="Number of Languages Spoken in a Country by Population<br><sup>Interactive Chart</sup>",
    title_x=0.5,
    xaxis_title="Population (Log)",
    yaxis_title="Number of Languages",
    legend_title="Continent",
    template="plotly_dark",
)

fig.show()

-- telecom customer churn
import pandas as pd
churn = pd.read_csv("data/customer_churn.csv")
print(churn.shape)
churn.head(100)

-- sms span collection
import pandas as pd
spam = pd.read_csv("SMSSpamCollection.csv", header=None)
print(spam.shape)
spam.head(100)

-- credit card fraud
import pandas as pd 
ccf = pd.read_csv('credit_card_fraud.csv') 
ccf.head(100)

-- stock prices
import pandas as pd
aapl = pd.read_csv("data/AAPL.csv")
print(aapl.shape)
aapl.head(100)

--  world population data
import pandas as pd
world_pop = pd.read_csv("world_pop_data.csv")
world_pop

country_data = pd.read_csv('metadata_country.csv')
country_data

-- ecommerce data
import pandas as pd
retail = pd.read_csv("online_retail.csv")
retail.head(100)

-- playstore data
import pandas as pd

apps_data = pd.read_csv("apps_data.csv")
print(apps_data.shape)
apps_data.head(100)

review_data = pd.read_csv('review_data.csv')
print(review_data.shape)
review_data.head(100)

-- world internet users
SELECT *
FROM 'internet_users.csv'
LIMIT 10


import pandas as pd
internet_users = pd.read_csv('internet_users.csv')
print(internet_users.shape)
internet_users.head()

adoption = pd.read_csv('adoption.csv')
print(adoption.shape)
adoption.head()


/*
world internet acccess
Internet: A Global Phenomenon
This dataset contains information on internet access around the world.

The workspace is set up with two CSV files containing information on global internet access for years ranging from 1990 to 2020.

internet_users.csv
users - The number of people who have used the internet in the last three months
share - The share of the entity's population who have used the internet in the last three months
adoption.csv
fixed_telephone_subs - The number of people who have a telephone landline connection
fixed_telephone_subs_share - The share of the entity's population who have a telephone landline connection
fixed_broadband_subs - The number of people who have a broadband internet landline connection
fixed_broadband_subs_share - The share of the entity's population who have a broadband internet landline connection
mobile_cell_subs - The number of people who have a mobile subscription
mobile_cell_subs_share - The share of the entity's population who have a mobile subscription
Both data files are indexed on the following 3 attributes:

entity - The name of the country, region, or group.
code - Unique id for the country (null for other entities).
year - Year from 1990 to 2020.
Check out the guiding questions or the scenario described below to get started with this dataset! Feel free to make this workspace yours by adding and removing cells, or editing any of the existing cells.

Source: Our World In Data

🌎 Some guiding questions to help you explore this data:
What are the top 5 countries with the highest internet use (by population share)?
What are the top 5 countries with the highest internet use for some large regions?
What is the correlation between internet usage (population share) and broadband subscriptions for 2020?
Note: This is how the World Bank defines the different regions.

📊 Visualization ideas
Line chart: Display internet usage over time of the top 5 countries.
Map: Vividly illustrate the internet usage around the world in a certain year on a map. Leveraging, for example, GeoPandas or Folium.
🔍 Scenario: Identify emerging markets for a global internet provider
This scenario helps you develop an end-to-end project for your portfolio.

Background: You work for a global internet provider on a mission to provide affordable Internet access to everybody around the world using satellites. You are tasked with identifying which markets (regions or countries) are most worthwhile to focus efforts on.

Objective: Construct a top 5 list of countries where there is a big opportunity to roll out our services. Try to consider the amount of people not having access to (good) wired or mobile internet and their spending power.

You can query the pre-loaded CSV files using SQL directly. Here’s a sample query:

Dataframes and CSVs
DataFrame available as
df
SELECT *
FROM 'internet_users.csv'
LIMIT 10
SELECT *
FROM 'internet_users.csv'
LIMIT 10
entity
code
year
users
share
0
Afghanistan
AFG
1991
0
0
1
Afghanistan
AFG
1992
0
0
2
Afghanistan
AFG
1993
0
0
3
Afghanistan
AFG
1994
0
0
4
Afghanistan
AFG
2001
930
0.004722568
5
Afghanistan
AFG
2003
19903
0.08789125
6
Afghanistan
AFG
2004
24922
0.10580903
7
Afghanistan
AFG
2005
298829
1.224148
8
Afghanistan
AFG
2006
536114
2.1071236
9
Afghanistan
AFG
2007
492163
1.9
import pandas as pd
internet_users = pd.read_csv('internet_users.csv')
print(internet_users.shape)
internet_users.head()
import pandas as pd
internet_users = pd.read_csv('internet_users.csv')
print(internet_users.shape)
internet_users.head()
(6379, 5)
entity
code
year
users
share
0
Afghanistan
AFG
1991
0
0
1
Afghanistan
AFG
1992
0
0
2
Afghanistan
AFG
1993
0
0
3
Afghanistan
AFG
1994
0
0
4
Afghanistan
AFG
2001
930
0.004722568
adoption = pd.read_csv('adoption.csv')
print(adoption.shape)
adoption.head()
adoption = pd.read_csv('adoption.csv')
print(adoption.shape)
adoption.head()
(12938, 9)
entity
code
year
fixed_telephone_subs
fixed_telephone_subs_share
fixed_broadband_subs
fixed_broadband_subs_share
mobile_cell_subs
mobile_cell_subs_share
0
Afghanistan
AFG
1960
7700
0.0893016
null
null
0
0
1
Afghanistan
AFG
1961
7700
0.0855843
null
null
null
null
2
Afghanistan
AFG
1962
7700
0.0855843
null
null
null
null
3
Afghanistan
AFG
1963
7700
0.0855843
null
null
null
null
4
Afghanistan
AFG
1964
7700
0.0855843
null
null
null
null
*/
-- soccer data
import pandas as pd
soccer = pd.read_csv("soccer18-19.csv")
print(soccer.shape)
soccer.head(100)

SELECT rideable_type, start_station_name
FROM '202307-divvy-tripdata.parquet'
LIMIT 100
import pandas as pd
divvy_jan2023 = pd.read_parquet("202307-divvy-tripdata.parquet")
divvy_jan2023.head(100)

-- loan data
import pandas as pd
loan_data = pd.read_csv("loan_data.csv")
print(loan_data.shape)
loan_data.head(100)


/*
Loan Data
This dataset consists of more than 9,500 loans with information on the loan structure, the borrower, and whether the loan was pain back in full. This data was extracted from LendingClub.com, which is a company that connects borrowers with investors.

Not sure where to begin? Scroll to the bottom to find challenges!

import pandas as pd
loan_data = pd.read_csv("loan_data.csv")
print(loan_data.shape)
loan_data.head(100)
import pandas as pd
loan_data = pd.read_csv("loan_data.csv")
print(loan_data.shape)
loan_data.head(100)
(9578, 14)
credit.policy
purpose
int.rate
installment
log.annual.inc
dti
fico
days.with.cr.line
revol.bal
revol.util
inq.last.6mths
delinq.2yrs
pub.rec
not.fully.paid
0
1
debt_consolidation
0.1189
829.1
11.35040654
19.48
737
5639.958333
28854
52.1
0
0
0
0
1
1
credit_card
0.1071
228.22
11.08214255
14.29
707
2760
33623
76.7
0
0
0
0
2
1
debt_consolidation
0.1357
366.86
10.37349118
11.63
682
4710
3511
25.6
1
0
0
0
3
1
debt_consolidation
0.1008
162.34
11.35040654
8.1
712
2699.958333
33667
73.2
1
0
0
0
4
1
credit_card
0.1426
102.92
11.29973224
14.97
667
4066
4740
39.5
0
1
0
0
5
1
credit_card
0.0788
125.13
11.90496755
16.98
727
6120.041667
50807
51
0
0
0
0
6
1
debt_consolidation
0.1496
194.02
10.71441777
4
667
3180.041667
3839
76.8
0
0
1
1
7
1
all_other
0.1114
131.22
11.00209984
11.08
722
5116
24220
68.6
0
0
0
1
8
1
home_improvement
0.1134
87.19
11.40756495
17.25
682
3989
69909
51.1
1
0
0
0
9
1
debt_consolidation
0.1221
84.12
10.20359214
10
707
2730.041667
5630
23
1
0
0
0
Data dictionary
Variable	Explanation
0	credit_policy	1 if the customer meets the credit underwriting criteria; 0 otherwise.
1	purpose	The purpose of the loan.
2	int_rate	The interest rate of the loan (more risky borrowers are assigned higher interest rates).
3	installment	The monthly installments owed by the borrower if the loan is funded.
4	log_annual_inc	The natural log of the self-reported annual income of the borrower.
5	dti	The debt-to-income ratio of the borrower (amount of debt divided by annual income).
6	fico	The FICO credit score of the borrower.
7	days_with_cr_line	The number of days the borrower has had a credit line.
8	revol_bal	The borrower's revolving balance (amount unpaid at the end of the credit card billing cycle).
9	revol_util	The borrower's revolving line utilization rate (the amount of the credit line used relative to total credit available).
10	inq_last_6mths	The borrower's number of inquiries by creditors in the last 6 months.
11	delinq_2yrs	The number of times the borrower had been 30+ days past due on a payment in the past 2 years.
12	pub_rec	The borrower's number of derogatory public records.
13	not_fully_paid	1 if the loan is not fully paid; 0 otherwise.
Source of dataset.

Don't know where to start?
Challenges are brief tasks designed to help you practice specific skills:

🗺️ Explore: Generate a correlation matrix between the numeric columns. What columns are positively and negatively correlated with each other? Does it change if you segment it by the purpose of the loan?
📊 Visualize: Plot histograms for every numeric column with a color element to segment the bars by not_fully_paid.
🔎 Analyze: Do loans with the same purpose have similar qualities not shared by loans with differing purposes? You can consider only fully paid loans.
Scenarios are broader questions to help you develop an end-to-end project for your portfolio:

You recently got a job as a machine learning scientist at a startup that wants to automate loan approvals. As your first project, your manager would like you to build a classifier to predict whether a loan will be paid back based on this data. There are two things to note. First, there is class imbalance; there are fewer examples of loans not fully paid. Second, it's more important to accurately predict whether a loan will not be paid back rather than if a loan is paid back. Your manager will want to know how you accounted for this in training and evaluation your model.

-- netflix
import pandas as pd
nf = pd.read_csv("netflix_dataset.csv", index_col=0)
print(nf.shape)
nf.head(100)

You will need to prepare a report that is accessible to a broad audience. It will need to outline your motivation, analysis steps, findings, and conclusions.
*/

-- netflix movies
Netflix Movie Data
This dataset contains more than 8,500 Netflix movies and TV shows, including cast members, duration, and genre. It contains titles added as recently as late September 2021.

Not sure where to begin? Scroll to the bottom to find challenges!

import pandas as pd
nf = pd.read_csv("netflix_dataset.csv", index_col=0)
print(nf.shape)
nf.head(100)
(8807, 11)
show_id
type
title
director
cast
country
date_added
release_year
rating
duration
listed_in
description
s1
Movie
Dick Johnson Is Dead
Kirsten Johnson
null
United States
September 25, 2021
2020
PG-13
90 min
Documentaries
As her father nears the end of his life, filmmaker Kirsten Johnson stages his death in inventive and comical ways to help them both face the inevitable.
s2
TV Show
Blood & Water
null
Ama Qamata, Khosi Ngema, Gail Mabalane, Thabang Molaba, Dillon Windvogel, Natasha Thahane, Arno Greeff, Xolile Tshabalala, Getmore Sithole, Cindy Mahlangu, Ryle De Morny, Greteli Fincham, Sello Maake Ka-Ncube, Odwa Gwanya, Mekaila Mathys, Sandi Schultz, Duane Williams, Shamilla Miller, Patrick Mofokeng
South Africa
September 24, 2021
2021
TV-MA
2 Seasons
International TV Shows, TV Dramas, TV Mysteries
After crossing paths at a party, a Cape Town teen sets out to prove whether a private-school swimming star is her sister who was abducted at birth.
s3
TV Show
Ganglands
Julien Leclercq
Sami Bouajila, Tracy Gotoas, Samuel Jouy, Nabiha Akkari, Sofia Lesaffre, Salim Kechiouche, Noureddine Farihi, Geert Van Rampelberg, Bakary Diombera
null
September 24, 2021
2021
TV-MA
1 Season
Crime TV Shows, International TV Shows, TV Action & Adventure
To protect his family from a powerful drug lord, skilled thief Mehdi and his expert team of robbers are pulled into a violent and deadly turf war.
s4
TV Show
Jailbirds New Orleans
null
null
null
September 24, 2021
2021
TV-MA
1 Season
Docuseries, Reality TV
Feuds, flirtations and toilet talk go down among the incarcerated women at the Orleans Justice Center in New Orleans on this gritty reality series.
s5
TV Show
Kota Factory
null
Mayur More, Jitendra Kumar, Ranjan Raj, Alam Khan, Ahsaas Channa, Revathi Pillai, Urvi Singh, Arun Kumar
India
September 24, 2021
2021
TV-MA
2 Seasons
International TV Shows, Romantic TV Shows, TV Comedies
In a city of coaching centers known to train India’s finest collegiate minds, an earnest but unexceptional student and his friends navigate campus life.
s6
TV Show
Midnight Mass
Mike Flanagan
Kate Siegel, Zach Gilford, Hamish Linklater, Henry Thomas, Kristin Lehman, Samantha Sloyan, Igby Rigney, Rahul Kohli, Annarah Cymone, Annabeth Gish, Alex Essoe, Rahul Abburi, Matt Biedel, Michael Trucco, Crystal Balint, Louis Oliver
null
September 24, 2021
2021
TV-MA
1 Season
TV Dramas, TV Horror, TV Mysteries
The arrival of a charismatic young priest brings glorious miracles, ominous mysteries and renewed religious fervor to a dying town desperate to believe.
s7
Movie
My Little Pony: A New Generation
Robert Cullen, José Luis Ucha
Vanessa Hudgens, Kimiko Glenn, James Marsden, Sofia Carson, Liza Koshy, Ken Jeong, Elizabeth Perkins, Jane Krakowski, Michael McKean, Phil LaMarr
null
September 24, 2021
2021
PG
91 min
Children & Family Movies
Equestria's divided. But a bright-eyed hero believes Earth Ponies, Pegasi and Unicorns should be pals — and, hoof to heart, she’s determined to prove it.
s8
Movie
Sankofa
Haile Gerima
Kofi Ghanaba, Oyafunmike Ogunlano, Alexandra Duah, Nick Medley, Mutabaruka, Afemo Omilami, Reggie Carter, Mzuri
United States, Ghana, Burkina Faso, United Kingdom, Germany, Ethiopia
September 24, 2021
1993
TV-MA
125 min
Dramas, Independent Movies, International Movies
On a photo shoot in Ghana, an American model slips back in time, becomes enslaved on a plantation and bears witness to the agony of her ancestral past.
s9
TV Show
The Great British Baking Show
Andy Devonshire
Mel Giedroyc, Sue Perkins, Mary Berry, Paul Hollywood
United Kingdom
September 24, 2021
2021
TV-14
9 Seasons
British TV Shows, Reality TV
A talented batch of amateur bakers face off in a 10-week competition, whipping up their best dishes in the hopes of being named the U.K.'s best.
s10
Movie
The Starling
Theodore Melfi
Melissa McCarthy, Chris O'Dowd, Kevin Kline, Timothy Olyphant, Daveed Diggs, Skyler Gisondo, Laura Harrier, Rosalind Chao, Kimberly Quinn, Loretta Devine, Ravi Kapoor
United States
September 24, 2021
2021
PG-13
104 min
Comedies, Dramas
A woman adjusting to life after a loss contends with a feisty bird that's taken over her garden — and a husband who's struggling to find a way forward.
Source of dataset.

Don't know where to start?
Challenges are brief tasks designed to help you practice specific skills:

🗺️ Explore: How much variety exists in Netflix's offering? Base this on three variables: type, country, and listed_in.
📊 Visualize: Build a word cloud from the movie and TV shows descriptions. Make sure to remove stop words!
🔎 Analyze: Has Netflix invested more in certain genres (see listed_in) in recent years? What about certain age groups (see ratings)?
Scenarios are broader questions to help you develop an end-to-end project for your portfolio:

A talent agency has hired you to analyze patterns in the professional relationships of cast members and directors. The key deliverable is a network graph where each node represents a cast member or director. An edge represents a movie or TV show worked on by both nodes in this undirected graph. You can limit the actors to the first four names listed in cast. The client is interested in any insights you can derive from your Netflix network analysis, such as actor/actor and actor/director pairs that work most closely together, most popular actors and directors to work with, and graph differences over time.


Your recent learnings
When you left 4 days ago, you worked on Filtering Records, chapter 2 of the course Intermediate SQL. Here is what you covered in your last lesson:

You learned about filtering textual data in SQL, focusing on the use of the WHERE clause to narrow down search results based on specific patterns or sets of criteria. Key points include:

The LIKE operator allows for pattern matching within text fields, using % to match any sequence of characters and _ to match any single character. For instance, to find names that start with "A" and end with "e", you would use WHERE name LIKE 'A%e'.
NOT LIKE is used to exclude records that match a specified pattern.
The IN operator simplifies queries by allowing you to specify multiple values in a WHERE clause, making it easier to filter records based on a list of criteria.
Additionally, you practiced combining various SQL keywords and operators to write more complex queries. For example, you learned how to count unique movie titles from the 1990s that are suitable for English-speaking teens with specific film certifications, using a combination of COUNT(DISTINCT), WHERE, BETWEEN, and IN:

-- Count the unique titles SELECT COUNT(DISTINCT title) AS nineties_english_films_for_teens FROM films -- Filter to release_years to between 1990 and 1999 WHERE release_year BETWEEN 1990 AND 1999 -- Filter to English-language films AND language = 'English' -- Narrow it down to G, PG, and PG-13 certifications AND certification IN ('G', 'PG', 'PG-13');
This lesson equipped you with valuable tools for filtering and analyzing textual data in SQL databases.

The goal of the next lesson is to learn how to handle NULL values in SQL for accurate data analysis, including filtering, excluding, and counting these values.

-- List all film titles with missing budgets
SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL;
-- Count the number of films we have language data for
SELECT COUNT(language) AS count_language_known
FROM films
WHERE language IS NOT NULL;
-- aggrgate function count(), avg(), min(), max(), sum()

-- Calculate the average duration of all films
SELECT AVG(duration) AS average_duration
FROM films;

-- Find the duration of the shortest film
SELECT MIN(duration) AS shortest_film
FROM films;

-- Calculate the sum of gross from the year 2000 or later
SELECT SUM(gross) AS total_gross
FROM films
WHERE release_year >= 2000;

-- Calculate the average gross of films that start with A
SELECT AVG(gross) AS avg_gross_A
FROM films
WHERE title LIKE 'A%';

-- Calculate the lowest gross film in 1994
SELECT MIN(gross) AS lowest_gross
FROM films
WHERE release_year = 1994;

-- Calculate the highest gross film released between 2000-2012
SELECT MAX(gross) AS highest_gross
FROM films
WHERE release_year BETWEEN 2000 AND 2012;

-- Round the average number of facebook_likes to one decimal place
SELECT ROUND(AVG(facebook_likes), 1) AS avg_facebook_likes
FROM reviews;

-- Calculate the average budget rounded to the thousands
SELECT ROUND(AVG(budget) / 1000) * 1000 AS avg_budget_thousands
FROM films;

-- Calculate the title and duration_hours from films
SELECT 
    title,
    duration / 60.0 AS duration_hours
FROM films;

-- Calculate the percentage of people who are no longer alive

SELECT 
    COUNT(CASE WHEN alive_status = 'deceased' THEN 1 END) * 100.0 / COUNT(*) AS percentage_dead
FROM people;

-- Calculate the percentage of people who are no longer alive
SELECT COUNT(deathdate) * 100.0 / COUNT(*) AS percentage_dead
FROM people;

-- Find the number of decades in the films table
SELECT (MAX(release_year) - MIN(release_year)) / 10.0 AS number_of_decades
FROM films;

-- -- Round duration_hours to two decimal places
-- SELECT title, duration / 60.0 AS duration_hours
-- FROM films;


SELECT 
    title, 
    ROUND(duration / 60.0, 2) AS duration_hours
FROM films;

-- sorting function
-- Select name from people and sort alphabetically
SELECT name
FROM people
ORDER BY name ASC;

-- Select the title and duration from longest to shortest film
SELECT title, duration
FROM films
ORDER BY duration DESC;

-- Select the release year, duration, and title sorted by release year and duration
SELECT release_year, duration, title
FROM films
ORDER BY release_year, duration;

-- Select the certification, release year, and title sorted by certification and release year
SELECT certification, release_year, title
FROM films
ORDER BY certification ASC, release_year DESC;

-- Find the release_year and film_count of each year
SELECT release_year, COUNT(*) AS film_count
FROM films
GROUP BY release_year;

-- Find the release_year and average duration of films for each year
SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year;

-- Find the release_year, country, and max_budget, then group and order by release_year and country
SELECT release_year, country, MAX(budget) AS max_budget
FROM films
GROUP BY release_year, country
ORDER BY release_year, country;

SELECT release_year, COUNT(DISTINCT language) AS language_diversity
FROM films
GROUP BY release_year
ORDER BY language_diversity DESC
LIMIT 1;


-- Select the country and distinct count of certification as certification_count
SELECT country, COUNT(DISTINCT certification) AS certification_count
FROM films

-- Group by country
GROUP BY country


-- Filter results to countries with more than 10 different certifications
HAVING COUNT(DISTINCT certification) > 10;

-- Select the country and average_budget from films
SELECT 
    country,
    ROUND(AVG(budget), 2) AS average_budget
FROM films
-- Group by country
GROUP BY country
-- Filter to countries with an average_budget of more than one billion
HAVING AVG(budget) > 1000000000
-- Order by descending order of the aggregated budget
ORDER BY average_budget DESC;

-- Select the release_year for films released after 1990 grouped by year
SELECT release_year
FROM films
WHERE release_year > 1990
GROUP BY release_year;

-- Modify the query to also list the average budget and average gross
SELECT 
    release_year,
    ROUND(AVG(budget), 2) AS avg_budget,
    ROUND(AVG(gross), 2) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;


-- Modify the query to also list the average budget and average gross
SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;


SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
-- Modify the query to see only years with an avg_budget of more than 60 million
HAVING AVG(budget) > 60;



-- SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
-- FROM films
-- WHERE release_year > 1990
-- GROUP BY release_year
-- -- Modify the query to see only years with an avg_budget of more than 60 million

SELECT 
    release_year, 
    AVG(budget) AS avg_budget, 
    AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000;  -- Adjusted to 60 million


SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ORDER BY avg_gross DESC
LIMIT 1;


/*

Practice with NULLs
Well done. Now that you know what NULL means and what it's used for, it's time for some more practice!

Let's explore the films table again to better understand what data you have.

Instructions 1/2
50 XP
1
Select the title of every film that doesn't have a budget associated with it and use the alias no_budget_info.

Take Hint (-15 XP)
2
Count the number of films with a language associated with them and use the alias count_language_known
ChatGPT
Let's dive into the practice by performing the tasks described. The films table contains information about various films, including their titles, budgets, and languages.

Task 1: Select the title of every film that doesn't have a budget associated with it and use the alias no_budget_info.
To achieve this, we'll select the titles of the films where the budget is NULL.

sql
Copy code
SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL;
Task 2: Count the number of films with a language associated with them and use the alias count_language_known.
To count the number of films where the language is not NULL, we'll use the COUNT function and ensure that the language column is not NULL.

sql
Copy code
SELECT COUNT(language) AS count_language_known
FROM films
WHERE language IS NOT NULL;
These queries will help us understand the distribution of data in the films table regarding missing budget and language information.


Select the title of every film that doesn't have a budget associated with it and use the alias no_budget_info
ChatGPT
To select the title of every film that doesn't have a budget associated with it and use the alias no_budget_info, you can use the following SQL query:

sql
Copy code
SELECT title AS no_budget_info
FROM films
WHERE budget IS NULL;
This query selects the title of films from the films table where the budget column is NULL, and it renames the selected column to no_budget_info.

Count the number of films with a language associated with them and use the alias count_language_known.
ChatGPT
To count the number of films with a language associated with them and use the alias count_language_known, you can use the following SQL query:

sql
Copy code
SELECT COUNT(language) AS count_language_known
FROM films
WHERE language IS NOT NULL;
This query counts the number of rows in the films table where the language column is not NULL and uses the alias count_language_known for the result.

Use the SUM() function to calculate the total duration of all films and alias with total_duration
ChatGPT
To calculate the total duration of all films using the SUM() function and alias the result with total_duration, you can use the following SQL query:

sql
Copy code
SELECT SUM(duration) AS total_duration
FROM films;
This query sums up the values in the duration column of the films table and renames the result to total_duration.

Calculate the average duration of all films and alias with average_duration
ChatGPT
To calculate the average duration of all films using the AVG() function and alias the result with average_duration, you can use the following SQL query:

sql
Copy code
SELECT AVG(duration) AS average_duration
FROM films;
This query calculates the average of the values in the duration column of the films table and renames the result to average_duration.

Find the most recent release_year in the films table, aliasing as latest_year
ChatGPT
To find the most recent release_year in the films table and alias it as latest_year, you can use the following SQL query:

sql
Copy code
SELECT MAX(release_year) AS latest_year
FROM films;
This query selects the maximum value from the release_year column and aliases the result as latest_year.

Find the duration of the shortest film and use the alias shortest_film.
ChatGPT
To find the duration of the shortest film and use the alias shortest_film, you can use the following SQL query:

sql
Copy code
SELECT MIN(duration) AS shortest_film
FROM films;
This query selects the minimum value from the duration column of the films table and aliases the result as shortest_film.

Use SUM() to calculate the total gross for all films made in the year 2000 or later, and use the alias total_gross
ChatGPT
To calculate the total gross for all films made in the year 2000 or later using the SUM() function and alias the result as total_gross, you can use the following SQL query:

sql
Copy code
SELECT SUM(gross) AS total_gross
FROM films
WHERE release_year >= 2000;
This query sums the values in the gross column for films released in the year 2000 or later and aliases the result as total_gross.

Calculate the average amount grossed by all films whose titles start with the letter 'A' and alias with avg_gross_A
ChatGPT
To calculate the average amount grossed by all films whose titles start with the letter 'A' and alias the result as avg_gross_A, you can use the following SQL query:

sql
Copy code
SELECT AVG(gross) AS avg_gross_A
FROM films
WHERE title LIKE 'A%';
This query calculates the average gross of films whose titles start with the letter 'A' and aliases the result as avg_gross_A. The LIKE 'A%' condition ensures that only titles beginning with 'A' are considered.

Calculate the lowest gross film in 1994 and use the alias lowest_gross
ChatGPT
To calculate the lowest grossing film in 1994 and use the alias lowest_gross, you can use the following SQL query:

sql
Copy code
SELECT MIN(gross) AS lowest_gross
FROM films
WHERE release_year = 1994;
This query selects the minimum value from the gross column for films released in the year 1994 and aliases the result as lowest_gross.

Calculate the highest gross film between 2000 and 2012, inclusive, and use the alias highest_gross
ChatGPT
To calculate the highest grossing film between 2000 and 2012 (inclusive) and alias the result as highest_gross, you can use the following SQL query:

sql
Copy code
SELECT MAX(gross) AS highest_gross
FROM films
WHERE release_year BETWEEN 2000 AND 2012;
This query selects the maximum value from the gross column for films released between the years 2000 and 2012 (inclusive) and aliases the result as highest_gross. The BETWEEN operator is used here to specify the range of release years.

Calculate the average facebook_likes to one decimal place and assign to the alias, avg_facebook_likes
ChatGPT
To calculate the average facebook_likes to one decimal place and assign it to the alias avg_facebook_likes, you can use the ROUND() function in SQL to achieve this precision. Here's how you can write the query:

sql
Copy code
SELECT ROUND(AVG(facebook_likes), 1) AS avg_facebook_likes
FROM films;
Explanation:

AVG(facebook_likes): Calculates the average of the facebook_likes column across all rows in the films table.
ROUND(..., 1): Rounds the average result to one decimal place.
AS avg_facebook_likes: Assigns the rounded average value to the alias avg_facebook_likes for the result.
This query will give you the average facebook_likes rounded to one decimal place and labeled as avg_facebook_likes. Adjustments can be made to the precision by changing the second parameter of the ROUND function if more or fewer decimal places are desired.

Check the highlighted code. The checker expected to find reviews in there.

 
ChatGPT
It seems like there might be a misunderstanding or a missing context in your query or requirement. If the checker expected to find "reviews" in the code you provided, it suggests that you might need to include a query that involves reviews in some way.

Here are a couple of interpretations and possible queries based on common scenarios involving reviews in films:

Scenario 1: Counting the number of reviews
If you need to count the number of reviews for films, you might write a query like this:

sql
Copy code
SELECT film_id, COUNT(*) AS review_count
FROM reviews
GROUP BY film_id;
This query counts the number of reviews (COUNT(*)) for each film (film_id) from the reviews table.

Scenario 2: Joining films and reviews
If you need to retrieve data from both the films and reviews tables, you might use a query like this:

sql
Copy code
SELECT f.title, f.release_year, r.review_text
FROM films f
JOIN reviews r ON f.film_id = r.film_id;
In this query:

films f and reviews r are aliases for the films and reviews tables, respectively.
f.film_id = r.film_id specifies the join condition where the film ID matches between films and reviews.
f.title, f.release_year, and r.review_text are columns selected from films and reviews.
Conclusion
To better assist you, please provide more context or specify the exact scenario or query where you are encountering the issue related to "reviews". This will help in giving you a more accurate and relevant solution.


2/2

Calculate the average budget from the films table, aliased as avg_budget_thousands, and round to the nearest thousand.
ChatGPT
To calculate the average budget from the films table, alias it as avg_budget_thousands, and round it to the nearest thousand, you can use the ROUND() function in SQL. Here's how you can construct the query:

sql
Copy code
SELECT ROUND(AVG(budget) / 1000) * 1000 AS avg_budget_thousands
FROM films;
Explanation:

AVG(budget): Calculates the average of the budget column across all rows in the films table.
/ 1000: Divides the average budget by 1000 to convert it to thousands.
ROUND(...) with no second argument rounds the result to the nearest whole number.
* 1000: Multiplies the rounded result by 1000 to bring it back to the scale of thousands.
AS avg_budget_thousands: Assigns the rounded and scaled average value to the alias avg_budget_thousands for the result.
This query will give you the average budget from the films table rounded to the nearest thousand and labeled as avg_budget_thousands. Adjustments can be made to the precision by changing the parameters of the ROUND() function if different rounding behavior is desired.

Using arithmetic
SQL arithmetic comes in handy when your table is missing a metric you want to review. Suppose you have some data on movie ticket sales, but the table only has fields for ticket price and discount. In that case, you could combine these by subtracting the discount from the ticket price to get the amount the film-goer paid.

You have seen that SQL can act strangely when dividing integers. What is the result if you divide a discount of two dollars by the paid_price of ten dollars to get the discount percentage?
ChatGPT
When dealing with arithmetic operations in SQL, particularly with integers, the result of division can behave differently depending on the context and the types involved. Let's break down the scenario you've described:

Discount: Suppose you have a discount of $2.
Paid Price: Suppose the film-goer paid $10.
To calculate the discount percentage, you typically divide the discount amount by the original price (before discount) and then multiply by 100 to get the percentage.

In SQL, if both the discount and paid price are integers, and you want to calculate the discount percentage, you need to handle the division carefully to avoid integer division truncation. Here's how you would do it:

sql
Copy code
SELECT (discount * 100.0 / paid_price) AS discount_percentage
FROM your_table;
In this query:

discount is the amount of discount ($2 in your case).
paid_price is the amount paid by the film-goer ($10 in your case).
100.0 ensures that the division is performed using floating-point arithmetic, which avoids integer division truncation.
discount_percentage is the alias for the result, which gives you the percentage of the discount relative to the paid price.
So, if you apply this to your example:

sql
Copy code
SELECT (2 * 100.0 / 10) AS discount_percentage;
The result would be:

Copy code
20.0
This means the discount of $2 on a paid price of $10 corresponds to a discount percentage of 20%.

Note:
Always consider the data types involved in your calculations in SQL to ensure accurate results, especially when dealing with division and percentages.
Using 100.0 ensures that the division treats numbers as floating-point, preventing integer division truncation that could skew your results.
Aliasing with functions
Aliasing can be a lifesaver, especially as we start to do more complex SQL queries with multiple criteria. Aliases help you keep your code clean and readable. For example, if you want to find the MAX() value of several fields without aliasing, you'll end up with the result with several columns called max and no idea which is which. You can fix this with aliasing.

Now, it's over to you to clean up the following queries.
ChatGPT
Certainly! Let's refine and alias some example queries to make them clearer and more readable.

Example 1: Finding the MAX value without aliasing
Suppose we have a query to find the maximum values of several fields without aliasing:

sql
Copy code
SELECT MAX(column1), MAX(column2), MAX(column3)
FROM your_table;
This query returns the maximum values of column1, column2, and column3. However, the result columns will be named MAX(column1), MAX(column2), and MAX(column3), which can be confusing.

Refining with aliasing:
To improve readability and clarity, we can alias each result column appropriately:

sql
Copy code
SELECT 
    MAX(column1) AS max_column1,
    MAX(column2) AS max_column2,
    MAX(column3) AS max_column3
FROM your_table;
In this refined query:

MAX(column1) AS max_column1 aliases the result of MAX(column1) as max_column1.
MAX(column2) AS max_column2 aliases the result of MAX(column2) as max_column2.
MAX(column3) AS max_column3 aliases the result of MAX(column3) as max_column3.
Example 2: Using aliases to clarify calculations
Suppose we want to calculate the discount percentage as discussed earlier:

sql
Copy code
SELECT (2 * 100.0 / 10) AS discount_percentage;
This calculates the discount percentage and aliases the result column as discount_percentage. Here, we directly alias the calculation result without multiple columns issue.

Conclusion:
Using aliases in SQL queries helps maintain clarity and readability by giving meaningful names to the columns or calculated results. It's a good practice to use aliases especially when dealing with aggregate functions like MAX(), MIN(), AVG(), and when performing calculations or transformations on data. This makes the intent of your queries clear and makes it easier to understand and maintain your SQL code.

Select the title and duration in hours for all films and alias as duration_hours; since the current durations are in minutes, you'll need to divide duration by 60.0
ChatGPT
To select the title and duration of all films in hours (where the current duration is in minutes) and alias the result as duration_hours, you need to divide the duration by 60.0 to convert minutes to hours. Here's how you can construct the query:

sql
Copy code
SELECT 
    title,
    duration / 60.0 AS duration_hours
FROM films;
Explanation:

title: Selects the title of the films.
duration / 60.0: Divides the duration column by 60.0 to convert the duration from minutes to hours.
AS duration_hours: Aliases the result of duration / 60.0 as duration_hours.
This query will give you the title of each film along with its duration converted to hours and aliased as duration_hours. This aliasing helps in maintaining clarity and understanding when working with the query results. Adjustments to the calculation, such as rounding or formatting, can be made as needed based on further requirements.

-- Calculate the percentage of people who are no longer alive
SELECT ___ * 100.0 / ___ AS percentage_dead
FROM ___;
ChatGPT
To calculate the percentage of people who are no longer alive, assuming you have a table where this information is stored, you would typically count the number of deceased individuals and divide that by the total number of individuals. Here’s how you can construct the query:

sql
Copy code
-- Assuming you have a table named 'people' with columns 'id' and 'alive_status'
SELECT 
    COUNT(CASE WHEN alive_status = 'deceased' THEN 1 END) * 100.0 / COUNT(*) AS percentage_dead
FROM people;
Explanation:

COUNT(CASE WHEN alive_status = 'deceased' THEN 1 END): Counts the number of individuals whose alive_status is marked as 'deceased'.
COUNT(*): Counts the total number of individuals in the people table.
* 100.0 / COUNT(*): Calculates the percentage of deceased individuals by dividing the count of deceased individuals by the total count of individuals.
AS percentage_dead: Aliases the result of the percentage calculation as percentage_dead.
In this query:

Replace people with the actual name of your table where you store information about people and their alive status.
Adjust alive_status = 'deceased' to match how deceased individuals are identified in your data (it could be 'dead', 'deceased', '0', etc., depending on your schema).
This query will give you the percentage of people who are no longer alive based on the data in your people table. Adjustments can be made based on the specific structure and naming conventions of your database schema.

Calculate the percentage of people who are no longer alive and alias the result as percentage_dead
ChatGPT
To calculate the percentage of people who are no longer alive and alias the result as percentage_dead, you can use the following SQL query:

sql
Copy code
SELECT 
    COUNT(CASE WHEN alive_status = 'deceased' THEN 1 END) * 100.0 / COUNT(*) AS percentage_dead
FROM people;
Explanation:

COUNT(CASE WHEN alive_status = 'deceased' THEN 1 END): Counts the number of individuals whose alive_status is marked as 'deceased'.
COUNT(*): Counts the total number of individuals in the people table.
* 100.0 / COUNT(*): Calculates the percentage of deceased individuals by dividing the count of deceased individuals by the total count of individuals.
AS percentage_dead: Aliases the result of the percentage calculation as percentage_dead.
This query calculates the percentage of people who are no longer alive based on their alive_status in the people table and aliases the result column as percentage_dead for clarity and readability in the output. Adjust the alive_status condition to match how deceased individuals are identified in your specific data schema.

-- Calculate the percentage of people who are no longer alive

SELECT 
    COUNT(CASE WHEN alive_status = 'deceased' THEN 1 END) * 100.0 / COUNT(*) AS percentage_dead
FROM people;

Check the highlighted code. Could not find the first entry in the fields.
column "alive_status" does not exist
LINE 4:     COUNT(CASE WHEN alive_status = 'deceased' THEN 1 END) * ...
                            ^
ChatGPT
It seems that the alive_status column does not exist in your people table based on the error message you received. This issue commonly occurs when the column name specified in the query does not match the actual column name in the database table.

To resolve this issue, you should verify the correct column name that stores information about whether a person is alive or deceased in your people table. Let's assume the column name is status instead of alive_status. Here’s how you can adjust your query:

sql
Copy code
SELECT 
    COUNT(CASE WHEN status = 'deceased' THEN 1 END) * 100.0 / COUNT(*) AS percentage_dead
FROM people;
Explanation:

COUNT(CASE WHEN status = 'deceased' THEN 1 END): Counts the number of individuals whose status is marked as 'deceased'.
COUNT(*): Counts the total number of individuals in the people table.
* 100.0 / COUNT(*): Calculates the percentage of deceased individuals by dividing the count of deceased individuals by the total count of individuals.
AS percentage_dead: Aliases the result of the percentage calculation as percentage_dead.
Make sure to replace status with the correct column name that reflects the status of whether a person is alive or deceased in your people table. Adjust the condition 'deceased' if deceased individuals are identified differently in your data schema (e.g., 'dead', '0', etc.).

By correcting the column name and the condition, the query should now accurately calculate the percentage of people who are no longer alive based on your data. Adjustments can be made based on the specific structure and naming conventions of your database schema.

Find how many decades (period of ten years) the films table covers by using MIN() and MAX(); alias as number_of_decades
ChatGPT
To find out how many decades (periods of ten years) the films table covers, you can use the MIN() and MAX() functions on the release_year column. Here’s how you can construct the query:

sql
Copy code
SELECT 
    CEIL((MAX(release_year) - MIN(release_year) + 1) / 10.0) AS number_of_decades
FROM films;
Explanation:

MIN(release_year): Retrieves the smallest (earliest) value in the release_year column.
MAX(release_year): Retrieves the largest (latest) value in the release_year column.
MAX(release_year) - MIN(release_year) + 1: Calculates the total number of years covered by subtracting the smallest release year from the largest release year and adding 1 to include both endpoints.
/ 10.0: Divides the total number of years by 10.0 to determine how many complete decades are covered.
CEIL(...): Rounds up the result to the nearest whole number, ensuring that any partial decade is counted as a complete decade.
AS number_of_decades: Aliases the result column as number_of_decades for clarity in the output.
This query will give you the number of decades (periods of ten years) that the films table covers based on the range of release years present in the data. Adjustments may be needed based on how your release_year data is structured and what specific years it covers in your dataset.

-- Find the number of decades in the films table
SELECT ___ / 10.0 AS ___
FROM films;

Find how many decades (period of ten years) the films table covers by using MIN() and MAX(); alias as number_of_decades
ChatGPT
To find out how many decades (periods of ten years) the films table covers using MIN() and MAX(), and aliasing the result as number_of_decades, you can structure your query as follows:

sql
Copy code
SELECT 
    CEIL((MAX(release_year) - MIN(release_year) + 1) / 10.0) AS number_of_decades
FROM films;
Explanation:

MIN(release_year): Finds the earliest release year in the films table.
MAX(release_year): Finds the latest release year in the films table.
MAX(release_year) - MIN(release_year) + 1: Calculates the total number of years covered by subtracting the earliest release year from the latest release year and adding 1 to include both endpoints.
/ 10.0: Divides the total number of years by 10.0 to determine how many complete decades are covered.
CEIL(...): Rounds up the result to the nearest whole number, ensuring that any partial decade is counted as a complete decade.
AS number_of_decades: Aliases the result column as number_of_decades for clarity in the output.
This query effectively calculates and aliases the number of decades covered by the films table based on the range of release years present in the dataset. Adjustments may be needed depending on specific requirements or the structure of your films table.

fill in the gap using min(), max()
-- Find the number of decades in the films table
SELECT ___ / 10.0 AS ___
FROM films;

Find how many decades (period of ten years) the films table covers by using MIN() and MAX(); alias as number_of_decades
ChatGPT
To find the number of decades (periods of ten years) covered by the films table using MIN() and MAX() functions on the release_year column, and alias the result as number_of_decades, you can construct the query as follows:

sql
Copy code
SELECT 
    CEIL((MAX(release_year) - MIN(release_year) + 1) / 10.0) AS number_of_decades
FROM films;
Explanation:

MIN(release_year): Retrieves the earliest (minimum) value in the release_year column.
MAX(release_year): Retrieves the latest (maximum) value in the release_year column.
MAX(release_year) - MIN(release_year) + 1: Calculates the total number of years covered by subtracting the minimum release year from the maximum release year and adding 1 to include both endpoints.
/ 10.0: Divides the total number of years by 10.0 to determine how many complete decades are covered.
CEIL(...): Rounds up the result to the nearest whole number, ensuring that any partial decade is counted as a complete decade.
AS number_of_decades: Aliases the result column as number_of_decades for clarity in the output.
This query will accurately calculate the number of decades (periods of ten years) that the films table covers based on the range of release years present in the data. Adjustments may be needed based on the specific structure and contents of your films table.

-- Round duration_hours to two decimal places
SELECT title, duration / 60.0 AS duration_hours
FROM films;

Update the query by adding ROUND() around the calculation and round to two decimal places.
ChatGPT
To update the query by adding the ROUND() function around the calculation and round to two decimal places, you can modify the query as follows:

sql
Copy code
SELECT 
    title, 
    ROUND(duration / 60.0, 2) AS duration_hours
FROM films;
Explanation:

duration / 60.0: Converts the duration from minutes to hours.
ROUND(..., 2): Rounds the result of the duration conversion to two decimal places.
AS duration_hours: Aliases the rounded result as duration_hours.
This query will provide the title of each film along with its duration in hours, rounded to two decimal places.

Sorting text
SQL provides you with the ORDER BY keyword to sort one or more fields from your data. It can do this multi-directionally and helps make results easy to interpret.

How does ORDER BY sort a column of text values by default?

Answer the question
50XP
Possible Answers
Select one answer

Alphabetically (A-Z)
PRESS
1

Reverse alphabetically (Z-A)
PRESS
2

There's no natural ordering to text data
PRESS
3

By number of characters (fewest to most)
ChatGPT
The correct answer is:

Alphabetically (A-Z)
When you use the ORDER BY keyword to sort a column of text values in SQL, it sorts the values alphabetically by default (from A to Z).

Sorting single fields
Now that you understand how ORDER BY works, you'll put it into practice. In this exercise, you'll work on sorting single fields only. This can be helpful to extract quick insights such as the top-grossing or top-scoring film.

The following exercises will help you gain further insights into the film database.

Instructions 1/2
50 XP
1
Select the name of each person in the people table, sorted alphabetically.
ChatGPT
To select the name of each person in the people table and sort the results alphabetically, you can use the following SQL query:

sql
Copy code
SELECT name
FROM people
ORDER BY name ASC;
Explanation:

SELECT name: Selects the name column from the people table.
FROM people: Specifies the table from which to select the data.
ORDER BY name ASC: Sorts the results alphabetically by the name column in ascending order (A-Z). The ASC keyword is optional because ascending order is the default sorting order for ORDER BY.
Select the title and duration for every film, from longest duration to shortest.
ChatGPT
To select the title and duration for every film and sort the results from the longest duration to the shortest, you can use the following SQL query:

sql
Copy code
SELECT title, duration
FROM films
ORDER BY duration DESC;
Explanation:

SELECT title, duration: Selects the title and duration columns from the films table.
FROM films: Specifies the table from which to select the data.
ORDER BY duration DESC: Sorts the results by the duration column in descending order (from longest to shortest). The DESC keyword ensures that the results are sorted in descending order.
Select the release_year, duration, and title of films ordered by their release year and duration, in that order
ChatGPT
To select the release_year, duration, and title of films ordered by their release_year first and then by duration, you can use the following SQL query:

sql
Copy code
SELECT release_year, duration, title
FROM films
ORDER BY release_year, duration;
Explanation:

SELECT release_year, duration, title: Selects the release_year, duration, and title columns from the films table.
FROM films: Specifies the table from which to select the data.
ORDER BY release_year, duration: Orders the results first by release_year and then by duration in ascending order. The default order is ascending (ASC), so there's no need to specify it explicitly unless you want to sort in descending order for any of these columns.
Select the certification, release_year, and title from films ordered first by certification (alphabetically) and second by release year, starting with the most recent year.
ChatGPT
To select the certification, release_year, and title from the films table and order the results first by certification alphabetically and then by release_year in descending order (starting with the most recent year), you can use the following SQL query:

sql
Copy code
SELECT certification, release_year, title
FROM films
ORDER BY certification ASC, release_year DESC;
Explanation:

SELECT certification, release_year, title: Selects the certification, release_year, and title columns from the films table.
FROM films: Specifies the table from which to select the data.
ORDER BY certification ASC, release_year DESC: Orders the results first by certification alphabetically (ASC is optional as it's the default), and then by release_year in descending order (DESC). This ensures that within each certification category, the films are sorted from the most recent to the oldest release year.
GROUP BY single fields
GROUP BY is a SQL keyword that allows you to group and summarize results with the additional use of aggregate functions. For example, films can be grouped by the certification and language before counting the film titles in each group. This allows you to see how many films had a particular certification and language grouping.

In the following steps, you'll summarize other groups of films to learn more about the films in your database.

Instructions 1/2
50 XP
1
Select the release_year and count of films released in each year aliased as film_count.
ChatGPT
To select the release_year and count the number of films released in each year, aliased as film_count, you can use the following SQL query:

sql
Copy code
SELECT release_year, COUNT(*) AS film_count
FROM films
GROUP BY release_year;
Explanation:

SELECT release_year, COUNT(*) AS film_count: Selects the release_year and counts the number of films released in each year, aliasing the count as film_count.
FROM films: Specifies the table from which to select the data.
GROUP BY release_year: Groups the results by release_year, so that the count of films is calculated for each year.

Select the release_year and average duration aliased as avg_duration of all films, grouped by release_year
ChatGPT
To select the release_year and calculate the average duration of all films, aliased as avg_duration, grouped by release_year, you can use the following SQL query:

sql
Copy code
SELECT release_year, AVG(duration) AS avg_duration
FROM films
GROUP BY release_year;
Explanation:

SELECT release_year, AVG(duration) AS avg_duration: Selects the release_year and calculates the average duration of films for each year, aliasing the average as avg_duration.
FROM films: Specifies the table from which to select the data.
GROUP BY release_year: Groups the results by release_year, so the average duration is calculated for each year.
GROUP BY multiple fields
GROUP BY becomes more powerful when used across multiple fields or combined with ORDER BY and LIMIT.

Perhaps you're interested in learning about budget changes throughout the years in individual countries. You'll use grouping in this exercise to look at the maximum budget for each country in each year there is data available.

Instructions
100 XP
Select the release_year, country, and the maximum budget aliased as max_budget for each year and each country; sort your results by release_year and country.
ChatGPT
To select the release_year, country, and the maximum budget (aliased as max_budget) for each year and each country, and then sort the results by release_year and country, you can use the following SQL query:

sql
Copy code
SELECT release_year, country, MAX(budget) AS max_budget
FROM films
GROUP BY release_year, country
ORDER BY release_year, country;
Explanation:

SELECT release_year, country, MAX(budget) AS max_budget: Selects the release_year, country, and calculates the maximum budget for each combination of year and country, aliasing the maximum budget as max_budget.
FROM films: Specifies the table from which to select the data.
GROUP BY release_year, country: Groups the results by both release_year and country to calculate the maximum budget for each group.
ORDER BY release_year, country: Sorts the grouped results first by release_year and then by country.
Answering business questions
In the real world, every SQL query starts with a business question. Then it is up to you to decide how to write the query that answers the question. Let's try this out.

Which release_year had the most language diversity?

Take your time to translate this question into code. We'll get you started then it's up to you to test your queries in the console.

"Most language diversity" can be interpreted as COUNT(DISTINCT ___). Now over to you.
ChatGPT
To determine which release_year had the most language diversity, you need to count the number of distinct languages for each release year and then identify the year with the highest count. Here's how you can translate this business question into a SQL query:

sql
Copy code
SELECT release_year, COUNT(DISTINCT language) AS language_diversity
FROM films
GROUP BY release_year
ORDER BY language_diversity DESC
LIMIT 1;
Explanation:

SELECT release_year, COUNT(DISTINCT language) AS language_diversity: Selects the release_year and counts the number of distinct languages for each release year, aliasing the count as language_diversity.
FROM films: Specifies the table from which to select the data.
GROUP BY release_year: Groups the results by release_year to calculate the distinct language count for each year.
ORDER BY language_diversity DESC: Sorts the grouped results by language_diversity in descending order so that the year with the highest language diversity appears first.
LIMIT 1: Limits the result to only the top entry, which corresponds to the year with the highest language diversity.
This query will give you the release year that had the most language diversity based on the data in the films table.

Filter with HAVING
Your final keyword is HAVING. It works similarly to WHERE in that it is a filtering clause, with the difference that HAVING filters grouped data.

Filtering grouped data can be especially handy when working with a large dataset. When working with thousands or even millions of rows, HAVING will allow you to filter for just the group of data you want, such as films over two hours in length!

Practice using HAVING to find out which countries (or country) have the most varied film certifications.

Instructions
100 XP
Select country from the films table, and get the distinct count of certification aliased as certification_count.
Group the results by country.
Filter the unique count of certifications to only results greater than 10.
ChatGPT
To find out which countries have the most varied film certifications, where "varied" means having a distinct count of certifications greater than 10, you can use the HAVING clause along with COUNT(DISTINCT ...) in your SQL query. Here's how you can do it:

sql
Copy code
SELECT country, COUNT(DISTINCT certification) AS certification_count
FROM films
GROUP BY country
HAVING COUNT(DISTINCT certification) > 10;
Explanation:

SELECT country, COUNT(DISTINCT certification) AS certification_count: Selects the country column and counts the number of distinct certifications for each country, aliasing the count as certification_count.
FROM films: Specifies the table from which to select the data.
GROUP BY country: Groups the results by country to calculate the distinct count of certifications for each country.
HAVING COUNT(DISTINCT certification) > 10: Filters the grouped data to include only those countries where the distinct count of certifications is greater than 10.
This query will return the countries where the film certifications are the most varied, based on having more than 10 distinct certifications. Adjust the number 10 in the HAVING clause as needed based on your specific requirements or dataset.

-- Select the country and average_budget from films
___
-- Group by country
___
-- Filter to countries with an average_budget of more than one billion
___
-- Order by descending order of the aggregated budget
___

Select the country and the average budget as average_budget, rounded to two decimal, from films.
Group the results by country.
Filter the results to countries with an average budget of more than one billion (1000000000).
Sort by descending order of the average_budget.
ChatGPT
To achieve the desired result of selecting the country and the average budget (rounded to two decimal places) from the films table, grouping by country, filtering to countries with an average budget of more than one billion (1,000,000,000), and sorting by descending order of the average budget, you can structure your SQL query as follows:

sql
Copy code
SELECT 
    country,
    ROUND(AVG(budget), 2) AS average_budget
FROM films
GROUP BY country
HAVING AVG(budget) > 1000000000
ORDER BY average_budget DESC;
Explanation:

SELECT country, ROUND(AVG(budget), 2) AS average_budget: Selects the country and calculates the average budget for each country from the films table. The ROUND(..., 2) function rounds the average budget to two decimal places.
FROM films: Specifies the table from which to select the data.
GROUP BY country: Groups the results by country to calculate the average budget for each country.
HAVING AVG(budget) > 1000000000: Filters the grouped results to include only countries where the average budget is greater than one billion (1,000,000,000).
ORDER BY average_budget DESC: Orders the results by average_budget in descending order, so that countries with the highest average budget appear first.
This query will provide you with the countries that have an average budget of more than one billion dollars, sorted from highest to lowest average budget. Adjust the threshold value (1000000000) as needed based on your specific requirements or dataset.

All together now
It's time to use much of what you've learned in one query! This is good preparation for using SQL in the real world where you'll often be asked to write more complex queries since some of the basic queries can be answered by playing around in spreadsheet applications.

In this exercise, you'll write a query that returns the average budget and gross earnings for films each year after 1990 if the average budget is greater than 60 million.

This will be a big query, but you can handle it!

Instructions 1/4
25 XP
1
Select the release_year for each film in the films table, filter for records released after 1990, and group by release_year.
ChatGPT
To construct the query that returns the average budget and gross earnings for films each year after 1990, given that the average budget is greater than 60 million, you can follow these steps:

Select the release_year for each film in the films table, filter for records released after 1990, and group by release_year:
sql
Copy code
SELECT release_year
FROM films
WHERE release_year > 1990
GROUP BY release_year;
Explanation:

SELECT release_year: Selects the release_year column from the films table.
FROM films: Specifies the table from which to select the data.
WHERE release_year > 1990: Filters the records to include only films released after the year 1990.
GROUP BY release_year: Groups the results by release_year to prepare for aggregating the average budget and gross earnings.
Next, we'll extend this query step by step to include the average budget and gross earnings calculations, as well as the conditions specified. Let's proceed to the next steps.

-- Modify the query to also list the average budget and average gross
SELECT release_year, ___
FROM films
WHERE release_year > 1990
GROUP BY release_year;

Modify the query to include the average budget aliased as avg_budget and average gross aliased as avg_gross for the results we have so far.
ChatGPT
To modify the query to include the average budget aliased as avg_budget and average gross aliased as avg_gross for films released after 1990 and grouped by release_year, you can use the following SQL query:

sql
Copy code
SELECT 
    release_year,
    ROUND(AVG(budget), 2) AS avg_budget,
    ROUND(AVG(gross), 2) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;
Explanation:

SELECT release_year: Selects the release_year column from the films table.
ROUND(AVG(budget), 2) AS avg_budget: Calculates the average budget (AVG(budget)) for each release_year and rounds it to two decimal places (ROUND(..., 2)). Aliases the result as avg_budget.
ROUND(AVG(gross), 2) AS avg_gross: Calculates the average gross (AVG(gross)) for each release_year and rounds it to two decimal places (ROUND(..., 2)). Aliases the result as avg_gross.
FROM films: Specifies the table from which to select the data.
WHERE release_year > 1990: Filters the records to include only films released after the year 1990.
GROUP BY release_year: Groups the results by release_year to aggregate the average budget and average gross for each year.
This query will now return the release_year, avg_budget, and avg_gross for films released after 1990, where the average budget is greater than 60 million. Adjustments can be made to the WHERE clause if you want to include additional conditions based on your specific requirements.

Check the highlighted code. The checker expected to find AVG in there.
ChatGPT
It seems like there was an oversight in the query provided earlier. Let's correct it to ensure it includes the average calculations using AVG() for both budget and gross, as the checker expected.

Here's the corrected query:

sql
Copy code
SELECT 
    release_year,
    ROUND(AVG(budget), 2) AS avg_budget,
    ROUND(AVG(gross), 2) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;
Explanation:

SELECT release_year: Selects the release_year column from the films table.
ROUND(AVG(budget), 2) AS avg_budget: Calculates the average budget (AVG(budget)) for each release_year and rounds it to two decimal places (ROUND(..., 2)). Aliases the result as avg_budget.
ROUND(AVG(gross), 2) AS avg_gross: Calculates the average gross (AVG(gross)) for each release_year and rounds it to two decimal places (ROUND(..., 2)). Aliases the result as avg_gross.
FROM films: Specifies the table from which to select the data.
WHERE release_year > 1990: Filters the records to include only films released after the year 1990.
GROUP BY release_year: Groups the results by release_year to aggregate the average budget and average gross for each year.
This query will correctly compute the average budget and average gross for films released after 1990, grouped by release_year, as required. Adjustments can be made to the rounding precision (ROUND(..., 2)) as necessary for your specific needs.

Modify the query to include the average budget aliased as avg_budget and average gross aliased as avg_gross for the results we have so far.
ChatGPT
To modify the query to include the average budget aliased as avg_budget and average gross aliased as avg_gross for the results we have so far (films released after 1990 and grouped by release_year), you need to complete the query as follows:

sql
Copy code
SELECT 
    release_year,
    ROUND(AVG(budget), 2) AS avg_budget,
    ROUND(AVG(gross), 2) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year;
Explanation:

SELECT release_year: Selects the release_year column from the films table.
ROUND(AVG(budget), 2) AS avg_budget: Calculates the average budget (AVG(budget)) for each release_year and rounds it to two decimal places (ROUND(..., 2)). Aliases the result as avg_budget.
ROUND(AVG(gross), 2) AS avg_gross: Calculates the average gross (AVG(gross)) for each release_year and rounds it to two decimal places (ROUND(..., 2)). Aliases the result as avg_gross.
FROM films: Specifies the table from which to select the data.
WHERE release_year > 1990: Filters the records to include only films released after the year 1990.
GROUP BY release_year: Groups the results by release_year to aggregate the average budget and average gross for each year.
This query will compute the average budget (avg_budget) and average gross (avg_gross) for films released after 1990, grouped by release_year. Adjustments can be made to the rounding precision (ROUND(..., 2)) as necessary for your specific requirements.

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
-- Modify the query to see only years with an avg_budget of more than 60 million

ChatGPT
To modify the query to filter and see only years where the average budget (avg_budget) is more than 60 million, you can use the HAVING clause instead of WHERE. The HAVING clause is used with aggregate functions like AVG() because WHERE cannot be used with aggregated results directly. Here's how you can adjust the query:

sql
Copy code
SELECT 
    release_year, 
    AVG(budget) AS avg_budget, 
    AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000;  -- Adjusted to 60 million
Explanation:

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross: Selects the release_year, average budget (AVG(budget)), and average gross (AVG(gross)) for films released after 1990.
FROM films: Specifies the table from which to select the data.
WHERE release_year > 1990: Filters the records to include only films released after the year 1990.
GROUP BY release_year: Groups the results by release_year to calculate the average budget and average gross for each year.
HAVING AVG(budget) > 60000000: Filters the grouped results to include only those years where the average budget is greater than 60 million. The HAVING clause is used here instead of WHERE because we are filtering based on an aggregate function (AVG(budget)).
This query will now show only the release_year, avg_budget, and avg_gross for years where the average budget exceeds 60 million. Adjust the threshold (60000000) if you want to filter based on a different value.

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
-- Order the results from highest to lowest average gross and limit to one
ChatGPT
To order the results from highest to lowest average gross (avg_gross) and limit the output to one row, you can extend your query with an ORDER BY clause and a LIMIT clause. Here's how you can do it:

sql
Copy code
SELECT 
    release_year, 
    AVG(budget) AS avg_budget, 
    AVG(gross) AS avg_gross
FROM films
WHERE release_year > 1990
GROUP BY release_year
HAVING AVG(budget) > 60000000
ORDER BY avg_gross DESC
LIMIT 1;
Explanation:

SELECT release_year, AVG(budget) AS avg_budget, AVG(gross) AS avg_gross: Selects the release_year, average budget (AVG(budget)), and average gross (AVG(gross)) for films released after 1990.
FROM films: Specifies the table from which to select the data.
WHERE release_year > 1990: Filters the records to include only films released after the year 1990.
GROUP BY release_year: Groups the results by release_year to calculate the average budget and average gross for each year.
HAVING AVG(budget) > 60000000: Filters the grouped results to include only those years where the average budget is greater than 60 million.
ORDER BY avg_gross DESC: Orders the results by avg_gross in descending order, so the year with the highest average gross appears first.
LIMIT 1: Limits the result to only one row, which corresponds to the year with the highest average gross.
This query will give you the release_year, avg_budget, and avg_gross for the year after 1990 with the highest average gross among years where the average budget exceeds 60 million. Adjust the HAVING clause condition (AVG(budget) > 60000000) and the ORDER BY clause direction (DESC for descending) based on your specific requirements.

Throughout this course, you'll be working with the countries database, which contains information about the most populous world cities in the world, along with country-level economic, population, and geographic data. The database also contains information on languages spoken in each country.

You can see the different tables in this database to get a sense of what they contain by clicking on the corresponding tabs. Click through them and familiarize yourself with the fields that seem to be shared across tables before you continue with the course.

In this exercise, you'll use the cities and countries tables to build your first inner join. You'll start off by selecting all columns in step 1, performing your join in step 2, and then refining your join to choose specific columns in step 3.
ChatGPT
Sure, let's outline the steps to work with the cities and countries tables, starting with selecting all columns, performing an inner join, and then refining the join to choose specific columns:

Step 1: Selecting all columns from both tables
sql
Copy code
-- Step 1: Select all columns from cities and countries
SELECT *
FROM cities
JOIN countries ON cities.country_code = countries.code;
Explanation:

SELECT *: Selects all columns from both the cities and countries tables.
FROM cities: Specifies the primary table from which to select data.
JOIN countries ON cities.country_code = countries.code: Performs an inner join between the cities and countries tables using the country_code column from cities and the code column from countries as the join condition.
Step 2: Performing the inner join
sql
Copy code
-- Step 2: Perform the inner join between cities and countries
SELECT *
FROM cities
JOIN countries ON cities.country_code = countries.code;
Explanation:

This query performs the inner join between cities and countries based on the common column country_code in cities and code in countries.
Step 3: Refining the join to choose specific columns
sql
Copy code
-- Step 3: Refine the join to select specific columns
SELECT cities.name AS city_name, countries.name AS country_name, cities.population
FROM cities
JOIN countries ON cities.country_code = countries.code;
Explanation:

SELECT cities.name AS city_name, countries.name AS country_name, cities.population: Specifies specific columns to select after the join.
cities.name AS city_name: Aliases the name column from cities as city_name.
countries.name AS country_name: Aliases the name column from countries as country_name.
cities.population: Selects the population column from cities.
Summary
These steps guide you through selecting all columns initially, performing an inner join between the cities and countries tables, and then refining the query to select specific columns of interest. This approach ensures that you can effectively combine data from both tables based on their common country_code and code columns. Adjust column names and aliases as needed based on your specific requirements or the structure of your database.

Begin by selecting all columns from the 
*/






















