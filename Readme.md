# API Learning Project

## Server

- Create a new Rails APP
- Create a Controller
- Create a Route


### Controller v1

- You first controller should return a simple valid json response.

### Route v1

- Should point to the first action in your sample controller, think show or index.


## Client v1

Create a .rb file out side of rails, that:
- Should be standalone, and be ruby as `ruby client.rb`
- Loads your Bundle.
- Loads rubygems.
- Uses restclient to request the server route. Think (http://localhost:3000/some_resource)
- Uses Oj gem to parse response to a ruby hash.