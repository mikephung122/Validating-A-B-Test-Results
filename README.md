# Validating-A-B-Test-Results
A project used to help those with solid SQL knowledge sharpen their analytical thinking ability.  In this scenario a new feature tests off the charts and it is our job to determine the validity of the experiment.

## Overview
This project is one three SQL Analytics Trainings provided by Mode Analytics - a data analysis platform that combines a powerful, web-based SQL editor with charting and sharing tools.  An overview of the trainings can be found at https://mode.com/sql-tutorial/sql-business-analytics-training/ while a description of this particular project can be found at https://mode.com/sql-tutorial/validating-ab-test-results/.  The project was completed using the Mode Analytics platform and rerecreated using a Jupyter notebook with exported query results.

## Contents
This repository contains the following items:
1. Jupyter Notebook (.ipynb) - Investigation and visualization of the A/B Test Results using Python.
2. Table Data (.csv)
   * Table 1: Users - This table includes one row per user, with descriptive information about the user's account.
      * user_id: A unique ID per user.  Can be joined to user_id in either of the other tables.
      * created_at: The time the user was created (first signed up).
      * state: The state of the user (active or pending).
      * activated_at: The time the user was activated, if they are active.
      * company_id: The ID of the user's company.
      * language: The chosen language of the user.
   * Table 2: Events
      * user_id: The ID of the user logging the event. Can be joined to user_id in either of the other tables.
      * occured_at: The time the event occurred.
      * event_type: The general event type. There are two values in this dataset: "signup_flow", which refers to anything occuring during the process of a user's authentication, and "engagement", which refers to general product usage after the user has signed up for the first time.
      * event_name: The specific action the user took. Possible values include:
         * create_user: User is added to Yammer's database during signup process.
         * enter_email: User begins the signup process by entering her email address.
         * enter_info: User enters her name and personal information during signup process.
         * complete_signup: User completes the entire signup/authentication process.
         * home_page: User loads the home page.
         * like_message: User likes another user's message.
         * login: User logs into Yammer.
         * search_autocomplete: User selects a search result from the autocomplete list.
         * search_run: User runs a search query and is taken to the search results page.
         * search_click_result_X: User clicks search result X on the results page, where X is a number from 1 through 10.
         * send _message: User posts a message.
         * view_inbox: User views messages in her inbox.
      * location: The country from which the event was logged (collected through IP address).
      * device: The type of device used to log the event.
   * Table 3: Experiments
      * user_id: The ID of the user logging the event. Can be joined to user_id in either of the other tables.
      * occurred_at: The time the user was treated in that particular group.
      * experiment: The name of the experiment. This indicates what actually changed in the product during the experiment.
      * experiment_group: The group into which the user was sorted. "test_group" is the new version of the feature; "control_group" is the old version.
      * location: The country in which the user was located when sorted into a group (collected through IP address).
      * device: The type of device used to log the event.
3. Query Data (.sql / .csv)
   * Query 1:
   * Query 2:
   * Query 3:
   * Query 4:
   * Query 5:
   * Query 6:
   * Query 7:
   * Query 8:
   * Query 9:
   
## Libraries
1. Data Analysis 
   * pandas - An open source, BSD-licensed library providing high-performance, easy-to-use data structures and data analysis tools for the Python programming language.
   * scipy -  A Python-based ecosystem of open-source software for mathematics, science, and engineering.
2. Data Visualization
   * seaborn - A Python data visualization library based on matplotlib. It provides a high-level interface for drawing attractive and informative statistical graphics.
