# texasdeathrow

### <ins> 553 executions. 42 years. <ins>

This project dives into data on executions carried out in the state of Texas from 1976 to 2018.

The goal being to learn about this fascinating dataset, uncover potential trends, and to satisfy curiosity.

The accompanying Tableau Dashboard can be found at this [link.](https://public.tableau.com/views/TexasDeathrow/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)


### <ins> Some questions to answer: <ins>

1. What is the average education level reached by inmates?

    - Hypothesis: Most of the people on deathrow did not finish high school. The average education level will be somewhere between the 9th and 11th grade.

2. What is the average age of execution?

    - Hypothesis: Deathrow inmates likely commited their crime(s) as a teenager or young adult. Given the long wait time spent on deathrow, often more than a decade in addition to time spent on the run, the average age is probably around 45 years old.

3. Where did these inmates come from? 

    - Hypothesis: 90 percent are from Texas.

4. What are the racial demographics amongst inmates?

    - Hypothesis: Minorities will make up a disproportionate (at least 50%) percentage of executions, but whites will still be the highest percentage group. Hispanics are the highest minority group represented, due to Texas being a Mexico bordering state.
  





### <ins> Analysis <ins>

I started off working with the education levels and ages, as these are the most straightforward metrics I can start with. Plus, this gives us a pretty good general understanding of the people that this dataset represents. Using a bit of code involving the AVG aggregate function and CAST data type conversion, we get that the average age of those executed is just about **39 and a half years old** and the average education level is approximately the **10th grade.** Both metrics are within/close to my guesses, respectively. 48 inmates did not have an education level listed.

Fun fact 1: The highest recorded education was achieved by George Douglas Lott, a lawyer and computer programmer who attended University of Texas. He was executed in 1994 for shooting in a courtroom 2 years prior, resulting in 2 deaths. Lott had previously lost his child custody case there.

![Screenshot 2024-11-28 at 1 30 30 AM](https://github.com/user-attachments/assets/f5e3b64a-e427-4e9b-81d6-0526698af9f4)

![Screenshot 2024-11-30 at 1 10 10 AM](https://github.com/user-attachments/assets/b3f8b2d5-7c38-45ce-a27e-30995dca7eaa)


Additionally, I was able to find that the average time spent on deathrow per inmate was just over 11 years.

![Screenshot 2024-11-28 at 1 40 22 AM](https://github.com/user-attachments/assets/1438669a-fa79-4d61-a143-e2d590985612)

Within this dataset, the oldest executed inmate was Lester Bower (older inmmates have been executed after the span of the dataset). In 1984 he was found guilty of shooting 4 men at a Texas airplane hangar the prior year. He spent a whopping 31 years on deathrow until his execution in 2015 at the age of 67. Yikes.

Next, I did some math to find how many inmates were actually from Texas. As it turns out, 339 inmates originated in Texas, or 65% of deathrow. California was second place with 19 inmates and Louisiana in third with 14 inmates. There are however, 29 inmates without a native state in the data. An interactive map of inmate origin can be found on the Tableau Dashboard linked above.

![Screenshot 2024-11-28 at 2 36 04 AM](https://github.com/user-attachments/assets/c913ce05-b929-4f8e-8aee-1d349b00576c)

Moving onto racial demographics, inmates of white ethnicity are the single largest execution group at just over 44 percent of executions. Black inmates are a close second at around 36 percent, followed by Hispanic inmates at about 19 percent. Interestingly, the only other ethnic categories within the dataset are Asian and Other, both of which has just a single execution in each.

![Screenshot 2024-11-30 at 1 00 45 AM](https://github.com/user-attachments/assets/25f1dfdc-ff0d-4690-9042-a4779ab66d96)


Fun fact 2: There are 4 inmates who have the exact same first and last name as anoother inmate. They are Ramon Hernandez, Jeffrey Williams, David Martinez, and Robert Carter.



### <ins> Results/TLDR <ins> ###

1. What is the average education level reached by inmates?

    - Approximately the 10th grade. Much of the inmates fall between the 8th grade and 12th grade. Original hypothesis was accurate.

2. What is the average age of execution?

    - The average age of execution is about 39 and a half years old, close to my original guess. Since the average amount of time spent on deathrow is just over 11 years, inmates were much younger when their crimes were commited, generally speaking.

3. Where did these inmates come from? 

    - 65% of deathrow with recorded origin state are from Texas, which is less than I initially expected. Lots of states are represented in terms of origin but Texas and it's surrounding states like Louisiana and Oklahoma make up much of the data. Interestingly, California is second after Texas. 

4. What are the racial demographics amongst inmates?

    - Minorities make up a disproportionate percentage of executions, but whites are still the highest percentage group. The minorities represented are practically entirely Black and Hispanic, minus 2 inmates. Black inmate are almost double the amount of Hispanic inmates. Hence my original hypothesis is incorrect.


Fun fact 3: 185 final statements given prior to execution mentions God (as either God or Lord). 











