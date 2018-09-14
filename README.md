# Rubicks Panel # 

**Rubicks Panel** is a Full-stack Rails Application designed to provide School Administrators an easier control over the school's education system. 

## Table of Contents ## 

1. Project Link and Description
1. Technologies Used
1. Installation
1. Components 
1. Author's Notes & Future Features
1. Credits
1. Author 

#### Project Link ####

The project is currently deployed live on heroku. Link to the project is: https://rubicks-academy.herokuapp.com/

As admin, you have been given a pre-generated user login and password. You cannot sign up as admin, nor as instructor which is the secondary login so the user could play around with how roles can make a difference. 

Login                 | Password
----------------------|--------------
rubick@admin.com      | 111111
rylai@instructor.com  | 111111


#### Technologies Used ####

The following technologies were used to accomplish this project:

* Ruby on Rails
* PostgreSQL (production)
* SQLite3 (development)
* ActiveRecord
* Heroku
* jQuery
* CSS3

Gems

* devise (User Login Authentication)
* petergate (Roles)
* friendly_id (URL Slugs)
* sentry-raven (Error Tracking)
* jquery-rails (Integrating jQuery into App)

#### Installation ####

If you wish to use the following files, you will need the following:

Basic Files:

* Ruby
https://rubyinstaller.org/downloads/

* Rails
https://gorails.com/setup/ubuntu/18.10 (you can select your OS)


* Bundler
``` {r engine='sh'}
$ gem install bundler
```

The rest will be located on your gemfile. 
Follow the documentation for each gem. 

devise: https://github.com/plataformatec/devise
petergate: https://github.com/plataformatec/devise
friendly_id: https://github.com/norman/friendly_id
sentry-raven: https://github.com/getsentry/raven-ruby
jquery-rails: https://github.com/rails/jquery-rails

Bundler is important for installing the all of the dependencies needed for this project. 

#### Components ####

* Home Page 
  Contains a hero image and welcome message (although, it is just a placeholder for now)
* About Page
  Details about the academy (or should I say, its headmaster).
* Contact Page 
  Will basically all contact information of the school (Prepared for a future feature wherein students can enroll and sign up)
* Login Page 
  Admin and instructors can sign into their respective dashboards
* Dashboard 
  Contains links to Courses, Cohorts, Instructors, and Students. 
* Courses
  Display all of the courses available. Also has the create button located on top for the Admin to be able to add a course 
* Cohorts 
  Cohorts are shown under their respective course page.
  The course page itself has the ability to add a cohort to itself. 
* Instructors
  A list of instructors are shown on a separate page from the main dashboard.
  Each name is linked to their respective profiles. 
  They also show under their respective cohorts (There is only one instructor per cohort)
* Students
  Same case with the instructor. 

#### Author's Notes & Future Features ####

* Future Features
  Sign up/Enroll page and form. 
  Grading system
  Better UI (since it looks flat as it is)
  Search function (for course, cohort, instructor, student)

* Author's Notes

  As it is, the application only has limited capabilities. Routes have been an issue for the most part. 

  Also, I am not happy with how it is not following the DRY principle as much as I wanted it to be.

  Furthermore, I still need to improve condition statements with regards to roles. Only the admin should be able to interact and see all buttons apart from editing the grade (future feature) of the student.

#### Credits ####

Here are the sources I used for the app:

* Login Page
https://wall.alphacoders.com/big.php?i=713818

* About Page
https://i.ytimg.com/vi/F6_0xrz8Y8g/maxresdefault.jpg

* Home Page
https://i.pinimg.com/originals/d5/47/76/d547761f3ff01ab271ad05f338df2207.png

* Logo
https://steamuserimages-a.akamaihd.net/ugc/356147363464734898/BAA0A8304A35A356278B26190FFBC0C500A61711/

* Social Media Icons
https://www.flaticon.com/

* Main Font
https://fonts.google.com/


#### Author ####

Ruel Alfonso Misa
