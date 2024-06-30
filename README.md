# Video-Games-Project

# Business Task
Video games have been a long-time hobby and passion of mine. As someone who's been interested in gaming since the '90s, I'm excited to find insights and look at some of the trends to get an overall view of how the gaming industry has evolved over the years.

## Table of Contents
- [Data Source](#data-source)
- [Data Dictionary](#data-dictionary)
- [Data Cleaning & Exploration](#data-cleaning--exploration)
- [Data Schema](#data-schema)
- [Data Transformation](#data-transformation)
- [Analysis/Findings](#analysisfindings)

# Data Source
Video Game Sales and Ratings - [Kaggle](https://www.kaggle.com/datasets/thedevastator/video-game-sales-and-ratings)


# Data Dictionary

## Video Game Sales and Ratings

| Field      | Description                                                                |
|-------------------|-----------------------------------------------------------------------------|
| Name              | The name of the video game.                                         |
| Platform          | The platform on which the game is available, such as PC, PS4, Xbox, etc. |
| Year_of_Release   | The year in which the game was released.                            |
| Genre             | The genre of the game, such as Action, Sports, etc.                 |
| Publisher         | The company that published the game.                                |
| NA_Sales          | The sales of the game in North America (in millions).                |
| EU_Sales          | The sales of the game in Europe (in millions).                       |
| JP_Sales          | The sales of the game in Japan (in millions).                        |
| Other_Sales       | The sales of the game in other regions (in millions).                |
| Global_Sales      | The total global sales of the game (in millions).                    |
| Critic_Score      | The average score given to the game by critics.                     |
| Critic_Count      | The number of critics who reviewed the game.                        |
| User_Score        | The average score given to the game by users.                       |
| User_Count        | The number of users who reviewed the game.                          |
| Developer         | The company that developed the game.                                |
| Rating            | The ESRB rating of the game, such as E for Everyone, T for Teen, or M for Mature. |

## Data Cleaning & Exploration

Tools used:
| Python | Jupyter | Pandas | Numpy | Conda |
|--------|-------|---------|--------|-------|
| <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/cc008c2a-1e65-46fe-99aa-fcef90c84b2b" width="55" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/029ca083-0c94-40b2-96bc-5a4ccd5199bb" width="50" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/1f1bf784-7c28-491e-9c70-d78a8cfd9ec3" width="55" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/ca024f21-791d-4cc9-836a-710df995811a" width="55" height="55"/> | <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/752b8489-df2a-457b-ab2e-294b34774a78" width="55" height="55"/> |


In this section, you'll find a Jupyter Notebook that demonstrates my proficiency in data cleaning and exploration using pandas. This notebook showcases various techniques to clean and preprocess raw data, ensuring that it's ready for analysis.

You can access the Jupyter Notebook file [here](https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/blob/main/Data%20Cleaning%20%26%20Exploration%20-%20Video%20Games%20Data.ipynb).

## Data Schema
After cleaning the data, this is our schema that will be used throughout this project.

<img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/blob/main/video_games%20schema.png" alt="Description" width="500"/>

# Data Transformation

Tools used:
| MySQL |
| ----- |
| <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/a1f80d2c-f675-4c97-b497-f21377fd0042" width="55" height="55"/> |


The provided SQL script contains a set of questions with queries used to gather insight about this dataset using MYSQL. You can access the SQL file [here](https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/blob/main/Video%20Games%20Project.sql).

# Analysis/Findings

Tools used:
| Tableau |
| ------- |
| <img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/fb9f12dc-8640-4197-b3f6-ab0ce2241bc1" width="55" height="55"/> |


I will conclude by providing an analysis of the results from a few of the questions provided within the SQL file. This section will also include visuals for our data and discussing the implications and potential impact on the business or research problem at hand. The goal is to provide a thorough and actionable understanding of the data, guiding informed decision-making.

You can review the results [here](https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/blob/main/Summary-Findings.md).
