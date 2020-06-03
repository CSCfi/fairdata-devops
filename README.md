# Fairdata GitOps

## Running the static site

from the repository root run the following Docker command:
```bash
docker run -p 8080:4000 -v $(pwd):/site bretfisher/jekyll-serve
```
This will map the static page to listen on port localhost:8080
