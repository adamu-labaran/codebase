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























