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

### Wireframes
![image](https://i.imgur.com/WBcI8eD.png)
![image](https://i.imgur.com/GofLw1Q.png)
![image](https://i.imgur.com/gY2BtXO.png)
![image](https://i.imgur.com/j9swojC.png)
![image](https://i.imgur.com/gVqjnnG.png)
![image](https://i.imgur.com/HEqd9bb.png)
![image](https://i.imgur.com/l9qvf4C.png)
![image](https://i.imgur.com/EEDW2fZ.png)

### ERD / Database Relationships
![image](https://i.imgur.com/ZgQx6ha.png)

------

## Planning Process

### Project Plan & Timeline
![image](https://i.imgur.com/l3JKQky.png)

### Screenshots of Trello board(s)

We used Trello to help manage what we had to complete ensuring that the group were all on the same page about what had been completed and what needed to be done.

![imgage](https://i.imgur.com/xJod15u.png)
![imgage](https://i.imgur.com/bZYD3qK.png)
![imgage](https://i.imgur.com/GKb72mk.png)
------

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

### 12. Discuss the database relations to be implemented.

### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

### 14. Provide your database schema design.

### 15. Provide User stories for your App.

### 16. Provide Wireframes for your App.

### 17. Describe the way tasks are allocated and tracked in your project.

### 18. Discuss how Agile methodology is being implemented in your project.

### 19. Provide an overview and description of your Source control process.

### 20. Provide an overview and description of your Testing process.

### 21. Discuss and analyse requirements related to information system security.

### 22. Discuss methods you will use to protect information and data.

### 23. Research what your legal obligations are in relation to handling user data.
