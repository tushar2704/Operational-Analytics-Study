# Operation Analytics and Investigating Metric Spike
![Power BI](https://img.shields.io/badge/power_bi-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![POSTGRESQL](https://img.shields.io/badge/PostgreSQL-4169E1.svg?style=for-the-badge&logo=PostgreSQL&logoColor=white)
![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)
![Canva](https://img.shields.io/badge/Canva-%2300C4CC.svg?style=for-the-badge&logo=Canva&logoColor=white)
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Markdown](https://img.shields.io/badge/markdown-%23000000.svg?style=for-the-badge&logo=markdown&logoColor=white)
![Microsoft Office](https://img.shields.io/badge/Microsoft_Office-D83B01?style=for-the-badge&logo=microsoft-office&logoColor=white)
![Microsoft Word](https://img.shields.io/badge/Microsoft_Word-2B579A?style=for-the-badge&logo=microsoft-word&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)


Operational Analytics is a critical process in modern companies, aimed at analyzing end-to-end operations to identify areas for improvement. The primary objective of this project is to investigate metric spikes and provide actionable insights to improve the company's operations. 

The project will cover a wide range of areas, including user engagement, sales performance, marketing effectiveness, and more. You'll be provided with access to datasets containing user information, events data, and email engagement details.


## Project Structure

    ├── LICENSE
    ├── README.md          <- README for using this project.
    ├── query              <- Code of the DB creation and queries.
    │   │
    │   └── db.sql       <- DB creation.
    │   └── query.sql                <- Final queries.

    ├── reports            <- Folder containing the final reports/results of this project.
    │   │
    │   └── Report.docx              <- Final analysis report in PDF.
    │   └── Report.docx         <- Final query report in PDF for verifying data.
    │   
    ├── src                <- Source for this project.
        │
        ├── data           <- Datasets used and collected for this project.
        │   
        ├── images       <- Additional images for Dashboards.
        │
        ├── data_dictionary.csv      <- Data Dictionary for the dataset.

  
--------






## Dataset Overview
#### job_data with the following columns:
```job_id: Unique identifier of jobs``` 

```actor_id: Unique identifier of actor```

```event: The type of event (decision/skip/transfer)```

```language: The Language of the content```

```time_spent: Time spent to review the job in seconds```

```org: The Organization of the actor```

```ds: The date in the format yyyy/mm/dd (stored as text)```

#### ```users: Contains one row per user, with descriptive information about that user’s account.```

#### ```events: Contains one row per event, where an event is an action that a user has taken (e.g., login, messaging, search).```

#### ```email_events: Contains events specific to the sending of emails.```

## Analysis on Case Study 1: Job Data Analysis
In this case study, I worked with the "job_data" table, investigating job-related metrics.  Tasks includes calculating the number of jobs reviewed per hour for each day in November 2020, deriving the 7-day rolling average of throughput, analyzing the language share over the last 30 days, and identifying duplicate rows in the data.
## Key Questions Explored

### Jobs Reviewed Over Time
Objective: Calculateing the number of jobs reviewed per hour for each day in November 2020.
### Throughput Analysis
Objective: Calculating the 7-day rolling average of throughput (number of events per second).
### Language Share Analysis
Objective: Calculating the percentage share of each language in the last 30 days.
### Duplicate Rows Detection
Objective: Identifying duplicate rows in the data.

## Analysis on Case Study 2: Investigating Metric Spike
In this case study, I worked with three tables: "users," "events," and "email_events." Tasks involves measuring weekly user engagement, analyzing user growth over time, investigating weekly user retention, measuring weekly engagement per device, and analyzing email engagement metrics.

### Weekly User Engagement
Objective: Measuring the activeness of users on a weekly basis.

### User Growth Analysis
Objective: Analyzing the growth of users over time for a product.

### Weekly Retention Analysis
Objective: Analyzing the retention of users on a weekly basis after signing up for a product.

### Weekly Engagement Per Device
Objective: Measuring the activeness of users on a weekly basis per device.

### Email Engagement Analysis
Objective: Analyzing how users are engaging with the email service.





## Summary of Findings
- [Case Study 1](https://github.com/tushar2704/Operational-Analytics-Study/blob/main/reports/Case_1.docx)
- [Case Study 2](https://github.com/tushar2704/Operational-Analytics-Study/blob/main/reports/Case_2.docx)
## Author
- <ins><b>©2023 Tushar Aggarwal. All rights reserved</b></ins>
- <b>[LinkedIn](https://www.linkedin.com/in/tusharaggarwalinseec/)</b>
- <b>[Medium](https://medium.com/@tushar_aggarwal)</b> 
- <b>[Tushar-Aggarwal.com](https://www.tushar-aggarwal.com/)</b>
- <b>[New Kaggle](https://www.kaggle.com/tagg27)</b> 

## Contact me!

If you have any questions, suggestions, or just want to say hello, you can reach out to us at [Tushar Aggarwal](mailto:info@tushar-aggarwal.com). We would love to hear from you!


















































































































































