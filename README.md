# ONE Jobify

## Description

This project serve as backend for [Mini Jobify](https://github.com/ronzalo/mini-jobify)

### Stack

* Ruby 2.6
* Ruby on Rails 6.0
* PostgreSQL
* Heroku

### Technical background

This app has a single endpoint, able to list favorite jobs and create new ones. The controller is under the namespace `/api/v1` in order to support applications depending on this API in case we add new features or changes without breaking the application.

The API support `index`, `create` and `show` actions.

The model was designed with multiple providers in mind, that means that the app could receive information from any client, as long as receive an ID or slug, a URL and the job details as a JSON object

## Configuration

```shell
git clone https://github.com/ronzalo/jobify
cd jobify
bundle install
# Setup database
rails db:create && rails db:migrate && rails db:seed
rails s
```

## Testing

```shell
rake
```

## Deployment

```shell
heroku create
heroku run rake db:migrate
heroku ps:scale web=1
heroku open

# Visit your favorite jobs
curl -XGET https://your-coolapp.herokuapp.com/api/v1/favorite_jobs
```
