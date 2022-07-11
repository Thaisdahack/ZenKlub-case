# ZenKlub-case

<img src="https://user-images.githubusercontent.com/101371267/178294264-8e3b32e8-6383-4ce8-9ea5-e7bd431c521a.png" />

<img src ="https://img.shields.io/badge/Python-FFD43B?style=for-the-badge&logo=python&logoColor=blue" /> <img src="https://img.shields.io/badge/mysql-%2300f.svg?style=for-the-badge&logo=mysql&logoColor=white" /> <img src="https://img.shields.io/badge/PowerBI-F2C811?style=for-the-badge&logo=Power%20BI&logoColor=white" />

## Goals
Development of an analytical resource to understand the factors that can help in the retention of a client in the therapeutic relationship with the specialist and raising hypotheses that help the company to stimulate this retention.

## Work methodology
Initially, the tables were visualized in Python, for data cleaning and treatment. In this step, the data were explored in order to detect null values ​​and duplicates and correct some discrepancies.
Then, with the 'clean' tables, a connection was made to the MySQL database so that some initial queries were carried out in order to extract some insights from the business and finally the database was exported to PowerBI so that some visualizations were made from a dashboard.
With the connections of the programs mentioned above, the data update can be done in an automated way, so any data that needs to be corrected in Python, for example, is updated in MySQL or PowerBI.

## Results
Customer registrations were taken between 2016 and 2019, with a total of 447 registrations. Each user made use of 746 sessions, with these events accounting for a total of 6 years (2016-2021).
So far, there are 156 registered professionals. The professional who attended the most appointments was id “5e77b4944fcf7c43dfab02d5”, with a total of 375 appointments and the professionals who had fewer appointments accounted for a total of 9 sessions.
In total, 5000 evaluations were carried out on the services provided, of which 4904 reached the maximum score (5), 70 (4), 19 (3) and 7 (1). Of these assessments, 36 have a score lower than 5 and are visible.
Still regarding the evaluations of the sessions and professionals, 75 of the total had a grade lower than 5 and are psychologists who cost more than the average ($250). And the best evaluated professionals are proportionally part of the “Gold” category.

Moving on to the profile of professionals, the last registration was carried out in August 2021 and the average price of each specialty is set as follows:
Coach: $152.5;
Psychologist: $121.2;
Therapist: $108.7;
Psychoanalyst: $82.5;
Of these professionals, 81 are in the 'Gold' category, 41 in the 'Diamond' category and 155 in the 'Silver' category.
Still describing the registered professionals, 75% declared themselves to be female, 37% male and 1% non-binary.
Among professionals, only 32% accept half-hour consultations and each professional has an average attendance of 18.2, in total 52,000 sessions were performed in the analyzed sample period (6 years).
As for the evaluations of the sessions and professionals, 75 of the total had a score lower than 5 and are psychologists that cost more than $250. And the best evaluated professionals are proportionally part of the “Gold” category.
The main reasons for looking for professionals are shown from a cloud of words on the dashboard below (Fig.1), but when it comes to numbers, we have the following scenario:
The word 'anxiety' appears more than 9 thousand times;
High knowledge: 10,800 times;
Relationships: 4,000 times;
Family conflicts: 3,000 times;
Career-related topics: 2,106 times;
Changes: 2,900 times

![dash_zen_pdf_page-0001](https://user-images.githubusercontent.com/101371267/178295942-483e3845-a22d-42d7-8015-b06d4eb40b92.jpg)

## Discussion and recommendations
From the analyzed dataset, some conclusions can be taken into account, such as the quality of the service provided, which seems to please users, with great evaluations for the most part. An interesting aspect to be taken into account is the type of subject that leads customers to look for the service, it is observed that the reasons are not directly linked to careers themselves, but to more personal matters, such as relationships, family, anxiety (this yes that can be linked to career). Therefore, it is interesting that professionals do not accept consultations for a short period of time, which leads to the fact that the lack of time and, consequently, the anxiety that this condition can cause, is a fact of not seeking services when necessary. .
It would be interesting to check further what happened with the sessions that scored below 4, since they are few and can provide important information regarding the retention of these people with the service provided.
It would be possible to do a statistical analysis or a modeling to complement the possible causes of a client to feel comfortable or not in doing therapy sessions, but for the reliability and robustness of these results, it would be necessary to collect more information about the clients, such as : age, gender, profession, workload, work environment, company size, whether or not you have had therapy before, among others.
Finally, from the data collected, it would be relevant to focus on more specific therapies regarding the main complaints of the clients, mainly in the agility of the attendances and proposing automated services that can meet these needs at an initial moment, without necessarily having the follow-up of a professional. in the first moment.



