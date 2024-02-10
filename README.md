# Film Enjoyer

Most people like to watch movies. After watching a movie, people often want to share an emotion. FilmEnjoyer can help them do that. FilmEnjoyer is a database about cinema. The website is engaged in allowing the user to rate a movie and write a short review. Also, people can view movie information, ratings and reviews. 

## The data model looks like this:
![Data model](/resources/FE.png)

## Starting:

The configured database will be required to run:
port : 5432
POSTGRES_PASSWORD = tjv
POSTGRES_USER = tjv
POSTGRES_DB = tjv.
Then you just need to start the server (which will run on localhost:8080) and the client (which will run on localhost:8888). All dependencies are already listed in the build.gradle files.
The tests are run via the .gitlab-ci.yml file.


## Client:

When the client is started, the user is taken to the home page where they can navigate to users, movies and actors. Users, movies and actors can be created on these pages. On the movie page, the user can write a movie review (it is important to enter the correct username when writing a review). Also on the user page you can go to each user's review page. On the actors page, you can add an actor to a movie and view the movies in which the actor has starred. Also on the movies page, you can view the actors who star in that movie and the reviews.
