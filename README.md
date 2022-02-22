#Frank Online Shopping 


This Project Is the solving for the Study Case (Full Stack coding challenge):
Including Front-End and Back-End code

## Tech


### Front-End

- [ReactJS] -  framework based on Web components.
```sh
version 17.0.2 
```
-  NPM Packages Used:
```sh
js-cookie @3.0.1, axios, react-google-maps/api, redux, react-redux, react-router-dom, redux-thunk
```

### Back-End
- [ASP.NET Core] - C#, Entity Frame Work, Web API.
- [SQL Database] .

### Tools
- [VS Code Editor] .
- [Visual Studio 2019].
- [SQL Management Studio 2019].


## Installation

### Back-End

1. Clone or Download the project from github: https://github.com/SaedMushtaha/FrankOnlineShop

2. Run FrankShop.sln on Visual Studio 2019 or any other version.
3. Run DBscript.sql to create the database structure.
4. Change the connection string details in appsetting.json file.

[![](https://hadeef.com/saedmushtaha/connection.png)](https://hadeef.com/saedmushtaha/connection.png)

5. To Allow Cors policy for the client app Put your client app server url in startup.cs file in FrankShop project.

````
```
     services.AddCors(opt =>
            {
                opt.AddPolicy("CorsPolicy", policy =>
                {
                    policy.AllowAnyHeader().AllowAnyMethod().WithOrigins("PUT_SERVER_URL_HERE");
                });
            });
```
````

[![](https://hadeef.com/saedmushtaha/ooo.png)](https://hadeef.com/saedmushtaha/ooo.png)

6. Now you can run the project.


### Front-End

1. Open client_app folder via VS Code Or your favorite tool.
2. change the backend server url in .env file.
[![env](https://hadeef.com/saedmushtaha/env%20change.png "env")](https://hadeef.com/saedmushtaha/env%20change.png "env")
[![](https://hadeef.com/saedmushtaha/envc.png)](https://hadeef.com/saedmushtaha/envc.png)

3. Install the dependencies and the npm packages then start the server and run the app.

```sh
cd client_app
npm install
npm start
```

###End
