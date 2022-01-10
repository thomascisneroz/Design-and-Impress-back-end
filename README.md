This is the back-end to the Design and Impress 

It was created with **Ruby on Rails** to stored user information along with seeded information

Examples for seeded information would be the seeded request that I created to demostrate request cards that users could leave on the site that could be created from the front end and then stored to the back end.

<img width="1191" alt="Screen Shot 2022-01-10 at 12 08 39 PM" src="https://user-images.githubusercontent.com/82288444/148808196-b4acc3f8-f07e-4a6a-ad95-556cf9cda7a9.png">

After being posted to the back-end of the project it is then render back to the front end to shown the request card that has just been made like below

<img width="430" alt="Screen Shot 2022-01-10 at 12 15 23 PM" src="https://user-images.githubusercontent.com/82288444/148809102-6448861c-1207-4199-a3f6-a3505eb0104d.png">

There is also Bcrypt gem in the gem file for hashing passwords for users to better protect there information

It is used with the User model with "has_secure_password" in order to hash the password. 

As shown in the example below 

<img width="824" alt="Screen Shot 2022-01-10 at 12 14 02 PM" src="https://user-images.githubusercontent.com/82288444/148808908-a945760c-307c-4cf6-9153-9c7254b6cc7c.png">


The information from the front end is stored in the rails server which and kept there unless purposly deleted saving all user information such as email and password for future use in logging into the project to make future request cards.

Here is examples of both seeded users that are pre-set into the project and a user who signed up post project creation.

Seeded Users


<img width="635" alt="Screen Shot 2022-01-10 at 12 24 35 PM" src="https://user-images.githubusercontent.com/82288444/148810799-240d7ffb-6c6a-4d60-aeaa-599497ca56ba.png">

<img width="370" alt="Screen Shot 2022-01-10 at 12 23 11 PM" src="https://user-images.githubusercontent.com/82288444/148810984-fc3bac7a-48ed-4e85-aee9-faa25e2f975e.png">



User created and stored after sign up

<img width="299" alt="Screen Shot 2022-01-10 at 12 24 02 PM" src="https://user-images.githubusercontent.com/82288444/148810961-5b4c2776-9cad-49c2-90af-e04c055c8df5.png">


