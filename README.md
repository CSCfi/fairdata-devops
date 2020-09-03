# Devops Documentation

Fairdata Devops repository documents all Fairdata related Devops-activities, processes and terminology. This repository is made with Jekyll static website generator. You need Ruby and Jekyll to run the development server., or using Docker image (see below). 

## Development server

You can start the development server by running bundle exec jekyll serve. Static site should be available at localhost:4000 with hot-realoding support. 

## Running the static site


from the repository root run the following Docker command:
```bash
docker run -p 8080:4000 -v $(pwd):/site bretfisher/jekyll-serve
```
This will map the static page to listen on port localhost:8080
