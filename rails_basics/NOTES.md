# Ruby on Rails
### MVC
Separation of presentation layer (what the user of the application sees in the browser) and the business-logic or back-end.
- Models act as the resources in an app, like User, Post, Article, Stock etc... whatever are the resources consumed in your application. 
- Views make home the frontend of the application 
- Controllers are the brains of the application in order to dictate how the app reacts when a user interfaces with it. 

### Generating a View
  #### Conventional Expectations
  - Define a route that points toa  controller#action
  - Have an appropriately named controller, for example: if dealing with layouts or static pages of the application, a name could be pages_controller
  - Have an appropriately named action, for example if dealing with a homepage, the action/method could be named home
  - If done this way, under views, rails will expect a pages folder (named for the pages controller) and a home.html.erb template (named for the home action)

  ### Root route, controller and more MVC - Text directions and references
> To set a root route, navigate to config/routes.rb file and enter in the following code -> `root 'pages#home'`

> In order to preview the application, you will need to start the rails server. You can start the server by navigating to the terminal and typing in the following command from your application directory followed by enter/return: `rails server`
You can also type `rails s` for short. Once the server starts you can open up a browser window and type in `localhost:3000` to preview the app. In order for the code to work there will need to be a pages controller and a home action within it.

> Create a pages controller by navigating to the terminal/command line and typing in the following command from your application directory: `rails generate controller pages`. There should now be a pages_controller.rb file under app/controllers folder.
Open up this file and add the home action to it with a rendering of 'Hello World!' like below:
```
def home
  render html: 'Hello World!'
end
```
> Once you save this file and reload the browser preview, Hello World! should be displayed in the browser. In order to do this the conventional way using views remove the code within the home action and leave it as an empty method/action like below:

```
def home
end
```

> This will expect a home.html.erb template under the pages folder under views. This pages folder under the views folder was created when the pages controller was generated. Within this app/views/pages folder, create a new file called home.html.erb and add in the following code inside the file: `<h1>Hello World!</h1>`

> Once you save this file and preview it from the browser, it should still say Hello World! as expected.
