# README

<div align="center">

  <h3 align="center">Blog Web Application</h3>

  <p align="center">
    <br />
     ·
    <!-- LINK TO SECTION ON THE PAGE WITH SCREENSHOTS OF HOW IT WORKS -->
    <a href="https://github.com/othneildrew/Best-README-Template">Show me how it works!</a>
    ·
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#license">License</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

### Functionality

* Simple web application designed for a single user (for now) to create blogposts using a rich text editor. The user can set the `Published at` fields in the dropdown to define whether a blogpost will be published (i.e. already visible to other users), whether it will be scheduled to be published at a later date, or whether it will be saved as a draft.
* The Sign In page can only be accessed with the URL, given it should be used only by the administrator of the blog. The administrator can edit their email address and password.

### Architecture
* This is a Ruby on Rails web application with a PostGreSQL database. It uses TailwindCSS for styling. The storage of cover images is handled as follows:
  
  * This application uses Active Storage to store cover images (i.e. saved to local disk) in development.
    
  * This application is configured to use an Amazon S3 Object Storage bucket in production. The setting up of this bucket won't be covered here, but this is the link [INSERT LINK] to the app running in production using an Amazon S3 bucket (so you can see it works!). You can therefore change `config.active_storage.service = :amazon` to `config.active_storage.service = :local` in `production.rb`.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


### Built With

| Database      | Backend       | Frontend    |
| ------------- |:-------------:|:---------:  |
|    |         | |
|               |   |     |
|               |               ||

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these steps:

### Prerequisites

  * Make sure you have Ruby installed in your system using `ruby -v` on the command line. Otherwise, install it [here](https://www.ruby-lang.org/en/documentation/installation/).

  * Make sure you have Rails installed in your system using `rails -v` on the command line. Get started with [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html).

  * XXX DATABASE INFO


### Installation

  * Clone this repository by running `git clone https://github.com/aliciademorauk/BlogPost-WebApp` in your command line.

  * Navigate to the repository by running `cd BlogPost-WebApp`.
    
  * Run `bundle install` to install all the gems.

### Execution

  *  Run rake `db:create:all` and `rake db:migrate`

  *  Specify the `username` and `password` that you, as the administrator, want to use to sign in in the `seeds.JSON` file.
    
  *  Run `rake db:seed` to populate the database with data found in `seeds.JSON`. This will populate the blog with some sample posts (which you can modify in `seeds.JSON`) and will set you up as a user with your chosen username and password.
 
  *  Run `bin/dev` to start the Rails server and the TailwinCSS watcher files as specified in `Procfile.dev`.
    
  *  In your browser, go to `http://localhost:3000` to experience the site as a non-logged in user (i.e. read-only) or sign in at `http://localhost:3000/users/sign_in` to add and edit blog posts.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

- [ ] Implement Devise invitable to allow users by invitation only to collaborate on the blog
- [ ] Implement 'Forgot your password?' (Devise mailer) 
- [ ] Use OpenAI's Chat Completions API for user to leverage text generation model to get help writing blog post

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

* [Best README.md Template](https://github.com/othneildrew/Best-README-Template)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[JavaScript]: https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E
[HTML]: https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white
[CSS]: https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white
[TailwindCSS]: https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white
[Ruby]: https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[Ruby on Rails]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white
[SQLite]: https://img.shields.io/badge/SQLite-07405E?style=for-the-badge&logo=sqlite&logoColor=white
[AWS]: https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white
