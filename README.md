# Movie API
A demo project using Sprint Boot as a backend for Movies API

##Requirements
- Java 1.8
- Maven 3+
- MySQL Server 5.7+

##Installation
1. Create an empty MySQL database
2. Import the demo.sql file into it
3. Edit `PROJECT_ROOT/src/main/resources/application.properties` to fill your database connection info
4. build using `mvn package`
5. Run the JAR file in `/target` folder
6. Base API url: `http://localhost:8080`

##Resources

###Movies Endpoints
- `/movies`: GET all movies
- `/movies/{id}`: GET a single movie by Id
- `/movies`: POST a new movie with JSON payload containing a title, description, image(href)
- `/movies/{id}/categories`: POST with `Content-Type: text/uri-list` a list of categories URIs to add categories to the movie
` `/movies/{movieId}/categories/{categoryId}`: DELETE to remove a category from the movie
` `/movies/{id}`: DELETE a movie

##Categories Endpoints
- `/categories`: GET all categories
- `/categories/{id}`: GET a single category by Id
- `/categories`: POST a new category with JSON payload containing a name
` `/categories/{id}`: DELETE a category
