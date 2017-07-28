# Hot Links

## Setup

HotLinks can be set up easily.

1. Clone done this repo.
2. Bundle
3. rake db:setup
4. To run the test suite, rspec

#### Using the app

HotLinks is a companion app to URLockbox, https://loliveri-hotreads.herokuapp.com, which compiles all read links across users.

<img width="598" alt="screen shot 2017-07-27 at 6 47 58 pm" src="https://user-images.githubusercontent.com/4068853/28697845-2fee0ffc-72fc-11e7-8891-9d4bfeec026f.png">


#### API

GET /api/v1/links

  Response: [{ "url":"http://google.com" }]

  Returns the top 10 links (most popular in the past 24 hours)
  
  <img width="649" alt="screen shot 2017-07-27 at 6 48 11 pm" src="https://user-images.githubusercontent.com/4068853/28697846-31a14148-72fc-11e7-9b52-8bdc69b7684d.png">

POST /api/v1/links

  Request: link: { url: "http://google.com" }
  Response: 201
