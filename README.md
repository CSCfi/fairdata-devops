# Devops Documentation

Fairdata Devops repository documents all Fairdata related Devops-activities, processes and terminology. This repository is made with Jekyll static website generator. You need Ruby and Jekyll to run the development server, or using Docker image (see below). If you only want to browse the static site, you can find more information about deploying Jekyll sites from [their docs](https://jekyllrb.com/docs/deployment/). Permanent server for the documentation is on the development roadmap.

## Development server

This repository is an Jekyll static website project. You can read more about Jekyll from their [official website](https://jekyllrb.com/)

Please follow the [installation instructions](https://jekyllrb.com/docs/installation/) of Ruby from official Jekyll docs. 

Ones you have installed Ruby, you need to install Jekyll and Bundler with the command:
```
gem install jekyll bundler
```
You can read more about the installation steps from official [Jekyll docs](https://jekyllrb.com/docs/).

then go to repository root and start the development server with command:
```
bundle exec jekyll serve
```
Static site should be available at localhost:4000 with hot-realoding support. 


## Running the static site with Docker (Experimental)

from the repository root run the following Docker command:
```bash
docker run -p 8080:4000 -v $(pwd):/site bretfisher/jekyll-serve
```
This will map the static page to listen on port localhost:8080
