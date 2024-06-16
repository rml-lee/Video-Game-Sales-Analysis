# Video-Games-Project

# Business Task
Video games have been a long-time hobby and passion of mine since I was a kid. We will be analyzing this dataset 

## Table of Contents
- [Data Source](#data-source)
- [Data Dictionary](#data-dictionary)
- [Data Cleaning](#data-cleaning)
- [Data Schema](#data-schema)
- [Data Transformation](#data-transformation)
- [Summary/Findings](#summaryfindings)

# Data Source
This dataset has been obtained from [Kaggle](https://www.kaggle.com/datasets/thedevastator/video-game-sales-and-ratings).

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

## Data Cleaning
Effective data analysis begins with ensuring the data is clean and well-structured.

To facilitate this process, i've provided a SQL script that performs the necessary data cleaning operations. The script is a stored procedure. By running this script, the dataset is prepared for accurate and reliable analysis.
The procedure will be called during the Data Transformation phase of this project. 

You can access the SQL file for data cleaning [here](https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/blob/main/Data%20Cleaning%20-%20Stored%20Procedure.sql).

## Data Schema
After cleaning the data, this is our schema that will be used throughout this project.

<img src="https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/assets/160198611/6c841049-eb36-4b04-bdc9-df89e3f2a687" alt="Description" width="500"/>

# Data Transformation
The provided SQL script contains a set of questions with queries used to gather insight about this dataset using MYSQL. You can access the SQL file [here](https://github.com/rml-lee/MYSQL-Tableau-Video-Games-Project/blob/main/Video%20Games%20Project.sql).

# Summary/Findings