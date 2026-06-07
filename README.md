# Statistical Analysis of Online Chess Games

## Project Overview
This project performs a comprehensive statistical analysis on a dataset of over 20,000 online chess games collected from Lichess. The goal of this analysis is to investigate how various factors—such as player ratings, piece color advantage (White vs. Black), victory types (mate, draw, resign, out of time), and specific opening strategies—impact the final outcome of a match. 

This project was developed as part of the **STAT 1910** curriculum at the University of Prince Edward Island (UPEI).

## Repository Structure
* `last edition for the code.R`: The complete R script containing data cleaning, descriptive statistics, visualizations, and hypothesis testing code.
* `games.csv`: The underlying dataset featuring attributes like player IDs, ratings, moves, openings, and match outcomes.
* `Statistical Analysis of Online Chess.pdf`: The detailed, formal statistical research report.
* `STAT_1910 Project.pptx.pptx`: The final presentation slides summarizing the methodologies and key findings.

## Technologies & Libraries Used
* **Language:** R
* **Libraries for Data Visualization & Manipulation:** `ggplot2`, `dplyr`, `tidyverse` (or any specific R packages you loaded in your script)

## Key Statistical Methodologies
To extract data-driven insights, the following statistical techniques were implemented in R:
1. **Descriptive Statistics:** Analyzing the distributions of player ratings, game durations, and the frequencies of different opening moves.
2. **Hypothesis Testing:** Conducting T-tests and Chi-Square tests of independence to evaluate the significance of the "White piece advantage" and the relationship between opening choices and win rates.
3. **Data Visualization:** Generating clear histograms, bar charts, and scatter plots to display rating differentials and outcome probabilities.

## Key Findings & Insights
* **The First-Move Advantage:** Analyzed whether playing as White statistically yields a higher win probability compared to playing as Black.
* **Rating Predictability:** Investigated how accurately a higher player rating predicts the match outcome across different game types (Blitz, Rapid, Classical).
* **Opening Efficiency:** Identified which opening strategies correlated with the highest win rates for intermediate players.
* **Conclusion:** [Insert a brief 1-sentence sentence of your main takeaway here, e.g., "The analysis confirmed a statistically significant advantage for White pieces, while also highlighting that rating differentials are a stronger predictor of victory than specific opening sequences."]
