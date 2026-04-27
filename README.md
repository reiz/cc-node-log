# Coding challenge - NodeJS - Log-Server

This is the very difficult coding challenge for NodeJS.

For this challenge you are allowed to use:

 - your computer of choice
 - any 3rd party library
 - the internet, but no AI!

# 1 Git checkout

Clone this repo into your local machine.

# 2 Branch

Create a new branch named `log-server` from the main branch.

# 3 Create a log server

Create a server that logs all incoming requests to a file named `requests.log`. A log entry contains only of `LOG_LEVEL` and `LOG_MSG`. The log levels are: ["ERROR", "WARN", "INFO", "DEBUG"]. The server should listen on port 8080 and handle GET and POST requests. Implement this endpoints:

- GET `/`: Returns a JSON object with the last 20 entries from the `requests.log`.
- POST `/log`: Adds a new line to the `requests.log` file. If the file dosn't exits yet, it should be created.
- POST `/import`: Uploads an existing log file and adds its content to the `requests.log` file. The response should contain how many lines have been added and how many of them have been errors, warning, infos and debug messages. For testing you can use the `log_entries.txt` file from this repository.

# 4 Add pagination

The GET `/` endpoint should have pagination. 

# 5 Test your server

Write at least 2 automated tests for the first 2 endpoints.

# 6 Dockerfile

Create a Dockerfile that builds an image named `log-server`. The image should contain all dependencies and configurations required to run the log server.

# 7 Run

Run the Docker container and demo the server. Make sure you can access it from your browser or use tools like Postman.
