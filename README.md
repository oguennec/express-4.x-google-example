This project has been forked from [express-4.x-facebook-example by Jared Hanson] and adapted to GOOGLE instead of FACEBOOK


This example demonstrates how to use [Express](http://expressjs.com/) 4.x and
[Passport](http://passportjs.org/) to authenticate users using Google.  Use
this example as a starting point for your own web applications.

## Instructions

To install this example on your computer, clone the repository and install
dependencies.

```bash
$ git clone git@github.com:oguennec/express-4.x-google-example.git
$ cd express-4.x-google-example
$ npm install
```

Alternatively you can run the project in a Docker container (latest Docker image for node tested was running node v7.4.0)
npm dependencies will only be installed inside the Docker image
Current prerequisite : GOOGLE_CLIENT_ID and GOOGLE_CLIENT_SECRET values must be replaced in server/server.js

```bash
$ git clone git@github.com:oguennec/express-4.x-google-example.git
$ cd express-4.x-google-example
$ docker-compose up -d
```

The example uses environment variables to configure the consumer key and
consumer secret needed to access Google's API.  Start the server with those
variables set to the appropriate credentials.

```bash
$ GOOGLE_CLIENT_ID=__GOOGLE_CLIENT_ID__ GOOGLE_CLIENT_SECRET=__GOOGLE_CLIENT_SECRET__ node server/server.js
```

Open a web browser and navigate to [http://localhost:3000/](http://localhost:3000/)
to see the example in action.

## Credits
[Jared Hanson]

[Jared Hanson]: <https://github.com/jaredhanson>

