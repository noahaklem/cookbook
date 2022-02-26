This project is accompanied with Github: https://github.com/noahaklem/cookbook-frontend

This portion project is the rails api backend that reponds to get, post, patch and delete http request for recipes.

This api renders results inside of the seed.rb file in json format.

To use, just this portion of the project, you need to:

Install file on local computer
1. fork and clone this repo to your local computer.
2. navigate to the project directory on you computer.
3. in a terminal window run bundle install

Set up the database
4. in the terminal run rails db:migrate
5. in the terminal run rails db:seed
6. in the terminal run rails s to start a local server
7. Follow the steps below to view results
or
7. Follow the above link to install the second portion of this project. https://github.com/noahaklem/cookbook-frontend


Viewing the results
The results of seeding are in JSON format. This project responds to:

GET /recipes
POST /recipes
PATCH /recipes/{:id}
DELETE /recipes/{:id}

GET /ingredients
POST /ingredients
