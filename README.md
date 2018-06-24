# ScriptSplitter-API

This is the API portion of my personal project ScriptSplitter. The idea of the application is to split single speaker video scripts into captions for easy importing into your Video Editing Software of choice. The API portion houses all of the saved data. So Reading and Writing functionality is all given here.

## Getting Started

To get the project running we would need both the [Client Side](https://github.com/WilliamMena/script-splitter-client) application and the API downloaded on your system. You will also need to have [PostgreSQL](https://www.postgresql.org/download/) downloaded on your system.

Once you have both applications downloaded, you will need 2 terminals open. One inside of the root folder of each application.

#### API

First, in the terminal, you want to enter `bundle`

While that is going, you can go into PostgreSQL and initialize a server.

After that has completed, enter `rails s -p 3001` in the terminal

After that, your API should be up and running.

## Built With

* [Ruby on Rails](http://www.dropwizard.io/1.0.2/docs/) - As the API
* [React](https://github.com/facebook/react) - For Front End components

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Authors

* **[William Mena](williammena.com)** - *Initial work* - [Github](https://github.com/WilliamMena)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
