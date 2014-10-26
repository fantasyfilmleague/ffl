Fantasy Film League
===

To get started download [Vagrant](https://www.vagrantup.com/). To get the
machine up and running execute the following command...

```
vagrant up
```

After the machine is provisioned SSH into it like...

```
vagrant ssh
```

Then navigate to the magically mapped directory, and install the Node
dependencies via...

```
cd /vagrant
npm install
```

Configure relevant environment variables (preferably in a `.env` file) that looks
something like (**HINT**: if the value is empty you should probably configure
it to something)...

```
APPLICATION_URL=http://localhost:3000

SESSION_SECRET=fidelio
SESSION_MAX_AGE=

POSTGRES_USERNAME=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_HOST=127.0.0.1
POSTGRES_DATABASE=fantasy_film_league

RABBITMQ_USERNAME=guest
RABBITMQ_PASSWORD=guest
RABBITMQ_HOST=localhost
RABBITMQ_PORT=5672
RABBITMQ_QUEUE=ffl-tasks

MANDRILL_API_KEY=

EMAIL_ADDRESS_OVERRIDE=

```

If this is the first installation, or you'd like to wipe the slate clean then
drop and create the database via...

```
npm run-script reset-db
```

Before starting the application via...

```
npm start
```

You can visit the site at [http://localhost:3000](http://localhost:3000).
