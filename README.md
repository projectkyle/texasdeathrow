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

    - Hypothesis: Minorities will make up a disproportionate (at least 50%) percentage of executions.
  





### <ins> Analysis <ins>

I started off working with the education levels and ages, as these are the most straightforward metrics I can start with. Plus, this gives us a pretty good general understanding of the people that this dataset represents. Using a bit of code involving the AVG aggregate function and CAST data type conversion, we get that the average age of those executed is just about **39 and a half years old** and the average education level is approximately the **10th grade.** Both metrics are within/close to my guesses, respectively.

![Screenshot 2024-11-28 at 1 30 30 AM](https://github.com/user-attachments/assets/f5e3b64a-e427-4e9b-81d6-0526698af9f4)

Additionally, I was able to find that the average time spent on deathrow per inmate was just over 11 years.

![Screenshot 2024-11-28 at 1 40 22 AM](https://github.com/user-attachments/assets/1438669a-fa79-4d61-a143-e2d590985612)

Within this dataset, the oldest executed inmate was Lester Bower (older inmmates have been executed after the span of the dataset). In 1984 he was found guilty of shooting 4 men at a Texas airplane hangar the prior year. He spent a whopping 31 years on deathrow until his execution in 2015 at the age of 67. Yikes.

Next, I did some math to find how many inmates were actually from Texas. As it turns out, 339 inmates originated in Texas, or 65% of deathrow. California was second place with 19 inmates and Louisiana in third with 14 inmates. There are however, 29 inmates without a native state in the data.

![Screenshot 2024-11-28 at 2 36 04 AM](https://github.com/user-attachments/assets/c913ce05-b929-4f8e-8aee-1d349b00576c)










