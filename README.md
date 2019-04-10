# Validating-A-B-Test-Results
A project which challenges those with a solid SQL knowledge to sharpen their analytical thinking ability.  In this scenario a new feature tests off the charts and it is our job to determine the validity of the experiment.

## Overview
This project is one three SQL Analytics challenges provided by Mode Analytics - a data analysis platform that combines a powerful, web-based SQL editor with charting and sharing tools.  An overview of the trainings can be found at https://mode.com/sql-tutorial/sql-business-analytics-training/ while a description of this particular project can be found at https://mode.com/sql-tutorial/validating-ab-test-results/.  The project was completed using the Mode Analytics platform and rerecreated using a Jupyter notebook with exported query results.  The report can be seen at https://modeanalytics.com/end34v0r13/reports/c15ec8af1ec1/runs/844bd3731a1e.

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
   * Table 2: Events - This table includes one row per event, where an event is an action that a user has taken on Yammer. These events include login events, messaging events, search events, events logged as users progress through a signup funnel, events around received emails.
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
   * Table 3: Experiments - This table shows which groups users are sorted into for experiments. There should be one row per user, per experiment (a user should not be in both the test and control groups in a given experiment).
      * user_id: The ID of the user logging the event. Can be joined to user_id in either of the other tables.
      * occurred_at: The time the user was treated in that particular group.
      * experiment: The name of the experiment. This indicates what actually changed in the product during the experiment.
      * experiment_group: The group into which the user was sorted. "test_group" is the new version of the feature; "control_group" is the old version.
      * location: The country in which the user was located when sorted into a group (collected through IP address).
      * device: The type of device used to log the event.
   * Table 4: Normal Distribution - his table is purely a lookup table, similar to what you might find in the back of a statistics textbook. It is equivalent to using the leftmost column from https://www.stat.tamu.edu/~lzhou/stat302/standardnormaltable.pdf", though it omits negative Z-Scores.
      * score: Z-score. Note that this table only contains values >= 0, so you will need to join the absolute value of the Z-score against it.
      * value: The area on a normal distribution below the Z-Score.
3. Query Data (.sql / .csv)
   * Query 1: A/B Test Results - Messages Sent
   * Query 2: Control Group Users and Messages Sent
   * Query 3: Test Group Users and Messages Sent
   * Query 4: Experiment Group by Month Activated
   * Query 5: Experiment Group by Device Type
   * Query 6: Experiment Group by Lanugage
   * Query 7: A/B Test Results - Messages Sent (Removed New Accounts)
   * Query 8: A/B Test Results - Days Logged In (Removed New Accounts)
   * Query 9: A/B Test Results - Engagement Events (Removed New Accounts)
   * Query 10: Control Group Users and Engagement Events (Removed New Accounts)
   * Query 11: Test Group Users and Engagement Events (Removed New Accounts)
   
## Libraries
1. Data Analysis 
   * pandas - An open source, BSD-licensed library providing high-performance, easy-to-use data structures and data analysis tools for the Python programming language.
   * scipy -  A Python-based ecosystem of open-source software for mathematics, science, and engineering.
2. Data Visualization
   * seaborn - A Python data visualization library based on matplotlib. It provides a high-level interface for drawing attractive and informative statistical graphics.
