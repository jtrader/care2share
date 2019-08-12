# care2share

------

#### [View Live Application](https://www.google.com "Google's Homepage")

#### [Link to GitHub Repo](https://www.google.com "Google's Homepage")

------

## Description

### Purpose:
The purpose of our application is their is a number of motorhomes that are not in use, costing some in storage fees or just sitting left to rot away when the motorhomes could be making the owner additional income. Also, motorhomes are quite an expensive investment making it affordable for people who can’t afford the large initial investment to use a motorhome for their holiday. At the moment it is difficult for motorhome owners to find people wanting to rent their motorhomes and vice versa. Our marketplace connects these two parties in an efficient manner.

### Functionality / features:
* Secure Login, User Authentication and Authentication with devise
* Personalised User Profiles (Name, Address, Phone Num, Photo upload)
* Search based on location and Dates available
* View information on Motorhome/Caravan and read comments made about that profile to make better booking decision
* Make booking of listed Motorhome/Caravan
* Once approved by the owner you'll have to pay requested amount
* Able to make comment/reply to comment
* View a list of all total bookings

### Screenshots

![image](put url here using imgur)


### Tech stack
* Front-end: HTML, CSS, Sass, ERB
* Back-end: Ruby, Ruby on Rails
* Database: PostgreSQL
* Deployment: Heroku

### Instructions on how to setup, configure and use your App.
1. Inside your computer terminal, go to where you want to store the application, and run the command `git clone git@github.com:jtrader/care2share.git`
2. Inside your computer terminal, run `bundle install` to install all the dependencies
3. Inside your computer terminal, run `rails db:reset` to completely reset the database
4. Inside your computer terminal, run `rails s` to begin the server
5. Go to your browser, in the url type `http://localhost:3000/` to view the application
6. Sign up and enjoy our application

------

## Design
### Design Process
We were originally inspired by a website, [Camplify](https://www.camplify.com.au "Camplify's Homepage"). After coming up with the idea we found them online and they offer a very similar service, so we thought getting inspiration from a developed company was a good idea.
![image](https://i.imgur.com/a3phIEf.png)

After finding this site, we knew we wanted to follow a "Airbnb" type theme, being able to search via location, dates was a huge focus.

### User Stories
As a Owner you can:
* Create Account
* Create Profile
* List your Motorhome
* Set details about your Motorhome (eg. Beds, Bathrooms, Size)
* Set availability for your Motorhome
* Set address for pickup
* View your listings
* Edit a listing
* Delete a listing
* Reply to a comment made on your profile

As a Hirer you can:
* Create Account
* Create Profile
* Search based on location/date availability
* View all listed Motorhomes based on Location/Availability
* Make a Booking
* Make payment
* Leave a comment on Owner's profile

### User Journey
![image](https://i.imgur.com/qaw1q1q.png)

## Planning Process

### Project Plan & Timeline
![image](https://i.imgur.com/l3JKQky.png)


## Short Answer Questions
#### 1. What is the need (i.e. challenge) that you will be addressing in your project?

The challenge we tried to address was helping connect owners who aren't utilising their motorhome/caravan enough with people looking to rent out a motorhome or caravan for a holiday, weekend getaway or whatever it may be.

Our project attempts to provide a service where owners and hirers can find each other easier, and also help to facilitate their transaction.

#### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

The problem is that there is a number of motorhomes that are not in use, costing some in storage fees or just sitting left to rot away when the motorhomes could be making the owner additional income. Also, motorhomes are quite an expensive investment making it affordable for people who can’t afford the large initial investment to use a motorhome for their holiday. At the moment it is difficult for motorhome owners to find people wanting to rent their motorhomes and vice versa. Our marketplace connects these two parties in an efficient manner.

#### 3. Describe the project will you be conducting and how. your App will address the needs.

A two-way marketplace will be the best way for potential owners and hirers to find each other and through our site able to conduct the transaction.

We will be developing a product where motorhome owners         will be able to upload the specifications  of their motorhomes as well as dates they wish to make the vehicle available for rental. Renters will easily be able to login and find their desired vehicle as well as dates when it is available to them to rent. Renters will seamlessly be able to pay for the rental through the site, and be able liaise with the motorhome owner, as well as provide reviews or feedback on their corresponding profiles.

#### 4. Describe the network infrastructure the App may be based on.

Our application is deployed with Heroku, a popular cloud platform that allows people to directly go from an idea to URL, helping you around all the difficulty with setting up your own infrastructure.

Heroku lets you do this through directly pushing developers code from GitHub to the web fully deployed for free.

#### 5. Identify and describe the software to be used in your App.

Languages:

Front-end:
* HTML - HyperText Markup Language. This language is the standard way for tagging text files to get different font, colours, graphic and hyperlink effects on web pages
* CSS - Cascading Style Sheets. CSS is the way Web pages are presented, including fonts, colours, layouts. It also lets you change the presentation dependant on which devise you use, such as an iPhone v Monitor.
* Sass - Syntactically awesome style sheets. You are able to write standard CSS with the addition of a few features such as nested elements and variables.
* ERB - Embedded Ruby. It is used to write Ruby code directly in a HTML page which then is able to be read by the browser

Back-end:
* Ruby - Object Oriented Language. It is used for many things, but is best known as a Web Applications language due to the Ruby on Rails framework.

Frameworks:
* Ruby on Rails - A server-side Web Application framework written in Ruby. Rails is commonly used to create full-stack web applications, it is a MVC (Model, View, Controller) framework that emphasises Convention over Configuration (CoC) and don't repeat yourself (DRY). Rails helps to automate various technical and time-consuming parts of creating a application, such as creating controllers, views, routes and database migration.

Databases:
* PostgreSQL - A Relational Database Management system.
* ActiveRecord - A Object Relational Mapping (ORM) tool. It provides an interface between the tables in a relational database.

Version Control:
* Git and GitHub - Source Control. It is an open-sourced tool that allows for either a single person or group to work on projects together using their web application which is connected to Terminal/Command Line.

Deployment:
* Heroku - A Platform as Service (PAAS) that lets you deploy web applications. It allows you to directly push various different languages from GitHub to the internet.


### 6. Identify the database to be used in your App and provide a justification for your choice.

We decided to use PostgreSQL for our application due to:
* It is an SQL-language database, which means plenty of documentation was available incase of any issue which arose.
* It works well with Ruby on Rails and Heroku
* It is a relational database

### 7. Identify and describe the production database setup (i.e. postgres instance).

We initially created an local instance of a PostgreSQL database using Ruby on Rails by calling the flag -d postgresql when creating the Rails app. We then call 'rails db:create' and set up our tables and columns using migrations: eg 'rails g model user' & 'rails g migration AddNameToUser'. This database then becomes our Development and testing database.

For Production, the Migrations and Schema of our Development Database are pushed to Heroku from the GitHub repository, then set up within Heroku. To do this we run the same commands to create the database and run migrations, only we put 'heroku run' before the command.

### 8. Describe the architecture of your App.

Client Web Browser:
* Displays the Application
* Handles with all user interactions
* Sends and receives HTTP requests to and from the web server

Web Server:
* Gets HTTP requests and then sends it to the specific route.

Routes:
* Depending on what requests it gets from the server it will then act on different functions which are then called in the controller

Controller:
* Where all of the applications logic happens. It has many functions in it which are called upon when a request from the web server happens.

Views:
* What the User will see, tells the browser what to display depending on which page they're on.

Database:
* PostgreSQL relational database which stores information used by the application

### 9. Explain the different high-level components (abstractions) in your App.

In structuring the components of our application, we followed the Ruby on Rails conventions adopting an MVC model coupled with Active Record as described below:

Model - Defines the structure of the data held in our database, including attributes of objects, logic (functions) used to manipulate that data at the database level, dependencies / validations, and the relationships between different objects. Files are located in app/models directory

View - Uses HTML and Embedded Ruby to describe how the pages of the application appear within a browser. Files are located in app/views, and styled with Sass CSS files located in app/assets directories.

Controller - Sits between the Models, Views, and any APIs and controls their function. Controller methods can be called via RESTful API routes, which are in turn triggered by HTTP requests from the Client, or in some cases can be called by changes in the state of the data in the databse. Controller files are located in app/controllers directory.

Active Record

A layer of abstraction that sits between our application and the database. Active record abstracts SQL code so that we can talk to the database using Ruby, and allows us to tread the data in the Model as Ruby objects.

### 10. Detail any third party services that your App will use.

Services:

* Amazon Web Services - S3 Module: Image Storage
* Stripe: Allows users to pay for products within the app using their credit card

Key Gems:
* Devise
* Stripe
* Geocoder
* Simple Calendar

Full List of Dependencies:

* ruby '2.5.5'
* gem "aws-sdk-s3", require: false
* gem 'devise'
* gem 'pundit'
* gem 'hirb'
* gem 'geocoder'
* gem "simple_calendar", "~> 2.0"
* gem 'rails', '~> 5.2.3'
* gem 'pg', '>= 0.18', '< 2.0'
* gem 'puma', '~> 3.11'
* gem 'sass-rails', '~> 5.0'
* gem 'uglifier', '>= 1.3.0'
* gem 'coffee-rails', '~> 4.2'
* gem 'turbolinks', '~> 5'
* gem 'jbuilder', '~> 2.5'
* gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do <br>
gem 'byebug', platforms: [:mri, :mingw, :x64_mingw] <br>
end

group :development do <br>
  gem 'web-console', '>= 3.3.0' <br>
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'<br>
  gem 'spring-watcher-listen', '~> 2.0.0'<br>
end

group :test do<br>
  gem 'capybara', '>= 2.15'<br>
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'<br>
end



### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

The data structure of the care2share app shares similarities to another p2p motorhome rental website by the name of camplify, where a user creates and account and is able to list their motorhome for rental on the site, Renters are then similarly be able to search through these listings based on location and dates available before being able select and rent a motorhome, on camplify the site caters for other types of items to be rented such as camper trailers and caravans but the core data structure of the site is similar to care2share.

### 12. Discuss the database relations to be implemented.

The database relational design was essential in providing the solution, creating a user id key which was related to a number of tables ensured that users would only be able to access the listings they have uploaded. In addition to this a cascading relation type was used for Profiles to Motorhomes, Motorhomes to Listings and Listings to Bookings.

### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

We used the following active record associations:
* Claim:
  * belongs_to :listing
  * belongs_to :user
* Comment:
  * belongs_to :writer, class_name: "User"
  * belongs_to :recipient, class_name: "User"
  * has_many :creply
* Creply:
  * belongs_to :writer, class_name: "User"
  * belongs_to :comment
* Listing: 
  * belongs_to :motorhome
  * has_one :review
* Motorhome:
  * has_many :listing
  * belongs_to :user
* Profile: 
  * belongs_to :user
  * validates :user_id uniqueness: true
* Review:
  * belongs_to :user
  * belongs_to :listing
  * has_many :rreply
  * validates :listing_id, uniqueness: true
* User: 
  * has_one :profile
  * has_many :motorhome
  * has_many :comment
### 14. Provide your database schema design.
### ERD / Database Relationships

![image](https://i.imgur.com/ZgQx6ha.png)

### 15. Provide User stories for your App.

Hirer: A person looking for motorhome for their next holiday hears about care2shares fantastic new website and decides to visit. The hirer is then able to search for nearby available motorhomes based on where the motorhome is based and also when it’s available. 
The user then is able to signup for an account, once completed they are able to make a booking request on a desired motorhome. The owner then either accepts or rejects the booking request, in this case the owner accepts, the user then checks the status within my bookings to see that they have been approved and that they can then pay for motorhome via the website.

Motorhome owner: As a motorhome owner I wish to rent out my motorhome because I do not use it all the time, so I visit care2share and create an account, after creating an account I set up my profile page so potential hirers can see who they are hiring from, after that’s complete, I create a motorhome I wish the rent out including a photo, now it’s time to create listings for when my motorhome is available for hire once completed my listings appear on the care2share website ready to be booked, I check my listing page to see if anybody has made a booking, somebody has so I can look at their profile and decide whether or not to accept their booking request, I choose to accept and await payment from care2share.

### 16. Provide Wireframes for your App.

![image](https://i.imgur.com/WBcI8eD.png)
![image](https://i.imgur.com/GofLw1Q.png)
![image](https://i.imgur.com/gY2BtXO.png)
![image](https://i.imgur.com/j9swojC.png)
![image](https://i.imgur.com/gVqjnnG.png)
![image](https://i.imgur.com/HEqd9bb.png)
![image](https://i.imgur.com/l9qvf4C.png)
![image](https://i.imgur.com/EEDW2fZ.png)

### 17. Describe the way tasks are allocated and tracked in your project.

We used Trello to help manage what we had to complete ensuring that the group were all on the same page about what had been completed and what needed to be done.

![imgage](https://i.imgur.com/xJod15u.png)
![imgage](https://i.imgur.com/bZYD3qK.png)
![imgage](https://i.imgur.com/GKb72mk.png)

### 18. Discuss how Agile methodology is being implemented in your project.

Our group kept constant contact with each other over Slack, exchanging ideas and explaining what we are each intending to implement. These can range from adding a dropdown option to the nav-bar to implementing a whole new gem to allocate and sort locations, linking information to maps and longtidudes and latidudes. After everyone is debreifed with what everyone else is working on, we can each work seperately on our own manigable sections, modifying our respective changes to account for eachothers commits and changes. This constant code, feedback, repeat loop allows us to make constant incrimental changes that build upon the last rather than conflict with it.

Additionaly, the use of our Trello board allowed us to focus our attention on the most urgent and important changes that needed to be applied. This also ment we never we in a situation where we didn't have anything to work on.

### 19. Provide an overview and description of your Source control process.

GitHub was used for our source control, enabling multiple users to work on the same project at the same time, when work was completed it was pushed to branches to be merged with the master on GitHub. Conflicts were resolved and sometimes work was overwritten but it was a learning process.

### 20. Provide an overview and description of your Testing process.

Trial and error formed the backbone of our testing process. In some specific case, such as with Stripe and with the location gem, we designed other "practice" websites to test our specific changes. However, for the most part, our testing process revolved around making sure the changes worked once merged with the overall project. This testting process happened orgaically, as any changes we made were taken on my another team member as they implemented their changes. This ment multiple people could test new changes from a variety of places while still working on the project and making advancements in their own field.

A well adopted practice was to have an open server with the website open in multiple internet browsers.

### 21. Discuss and analyse requirements related to information system security.

Basic security requirements include a self contained system that cannot be accessed or changed by any of the third parties that are invloved. More importantly however, no users should be able to access anything beyond their own data and public data.
This entails but is not limited to;
 - Users logging in as another user.
 - Users accessing administrator privliges.
 - Users deleting data of other users.
 - Users modifying the website or other user data.
 - Users adding or deleting other users.
 - Users accessing Stripe or collecting other users transaction details
 - Users going to pages they arn't authorised to open

To make sure these things don't happen, ruby and rails have a variety of gem and security protocols. These revolve around devise, which not only encrypts and stores user passwords and sensitive data, but encrypts specific pages to only allow specific authorised users to access. Additionaly, Stripe has it's own security protocols that prevent outside parties, including developers, from accessing sensitive data. Both of these security protocols are described in detail later on.

### 22. Discuss methods you will use to protect information and data.

Stripe - Our Stripe Public keys and Secret keys are kept offline at all times, and all Stripe methodology are kept seperate from the rest of our websites code. This means that even the developers at no time have access to any private user data such as credit card details or other means of transaction. 

Pundit - Any other data that the user doesn't want to be made public is protected by pundits authorisation process, only allowing certain users, which is authenticated by devise.

Devise - Devise is an authourisation ruby gem that creates and seperates individual user data, protection any specific users from attacks from both within and outside the system. It offers secure password storage using bcrypt to hash salted passwords. It's ability to securely cause user lockouts, strongly encrypt data, and apply forget password functionality make it very reliable.

### 23. Research what your legal obligations are in relation to handling user data.

It is our legal obligation to leave confidential user data such as credit card details strictly with stripe, not collecting or dispursing said data. It is also a legal obligation to provide a terms and conditions that details how we use any user data that the user does provide, and how we will protect any data that the user decides to keep private. The T&C will also detail how none of the user credit card data will be kept or even seen by the website and its developers, but rather passed directly into Stripe as a third party.