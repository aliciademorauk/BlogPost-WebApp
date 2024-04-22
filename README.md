<em>:warning: All of my projects are a work in progress! They are experiments I am trying to improve and are not a final version (and probably will never be!).</em>

<div align="center">

  <h3 align="center">Blog Web Application</h3>

  <p align="center">
    <br />
     ·
    <!-- LINK TO SECTION ON THE PAGE WITH SCREENSHOTS OF HOW IT WORKS -->
    <a href="#how-it-works">Show Me How To Use It!</a>
    ·
    <a href="https://blogpost-webapp.onrender.com">Live Demo!</a>
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
        <li><a href="#functionality">Functionality</a></li>
        <li><a href="#architecture">Architecture</a></li>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
        <li><a href="#execution">Execution</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
    <li><a href="#how-it-works">How It Works</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

### Functionality

* Simple web application designed for a single user (for now) to create blogposts using a rich text editor (Action Text) and add cover images.
  
* The user can set the `Published at` dropdown fields when creating a blog post to define whether it will be
  * published (i.e. already visible to other users),
  * scheduled to be published at a later date, or
  * saved as a draft.
  
* The `Sign In` page can only be accessed with the URL, given it should only be acessible by the administrator of the blog. The administrator can edit their email address and password once signed in.

### Architecture

* This is a Ruby on Rails web application with a PostGreSQL database. It uses TailwindCSS for styling. The storage of cover images is handled as follows:
  
  * Active Storage to store cover images (i.e. saved to local disk) in development.
    
  * An Amazon S3 Object Storage bucket in production. The setting up of this bucket won't be covered here, but this is the link [INSERT LINK] to the app running in production using an Amazon S3 bucket (so you can see it works!). To revert production storage to Active Storage you can then change `config.active_storage.service = :amazon` to `:local` in `production.rb`.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

* ![PostGreSQL]
* ![Ruby]
* ![Ruby on Rails]
* ![TailwindCSS]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow these steps:

### Prerequisites

  * Make sure you have the following installed:
    * Ruby, check with `ruby -v` on the command line. Otherwise, install it [here](https://www.ruby-lang.org/en/documentation/installation/).
    * Ruby on Rails, check with `rails -v` on the command line. Get started with [Ruby on Rails](https://guides.rubyonrails.org/getting_started.html).
    * PostGreSQL, check with `postgresql -v` on the command line. Otherwise, follow instructions according to your operating system.


### Installation

  * Clone this repository: `git clone https://github.com/aliciademorauk/BlogPost-WebApp`.

  * Navigate to the repository: `cd BlogPost-WebApp`.
    
  * Run `bundle install` to install all the Ruby gems.

### Execution

  *  Run rake `db:create:all` and `rake db:migrate`.

  *  Specify the `email` that you, as the administrator, will use to sign in. To do this, go to `seeds.rb` file and write your email next to `email=`.
    
  *  Run `rake db:seed` to populate the database with data found in `seed_posts.JSON`. This will do two things: populate the blog with some sample posts (which you can modify in `seed_posts.JSON`) and set you up as a user.
    *  Note that **a password will be automatically generated for you and printed to the console**. You can use this to sign in the first time and then modify your password in `Edit Profile`.
 
  *  Run `bin/dev` to start the Rails server and the TailwinCSS watcher as specified in `Procfile.dev`.
    
  *  In your browser, go to `http://localhost:3000` to experience the site as a non-logged in user (i.e. read-only) or sign in at `http://localhost:3000/users/sign_in` to add and edit blog posts.

  *  To reset the application data back to the seeds, stop the program, open the rails console with `rails c` and execute the following prior to re-running the application:
    *  User.destroy_all
    *  BlogPost.destroy_all

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


## How It Works

<p><a href="https://blogpost-webapp.onrender.com"> Click here to see the demo in production (as a non-signed in user)! </a></p>

1. The administrator goes to the `Sign In` page.
  <br />
  <img width="500" alt="Screenshot 2024-04-22 at 21 12 40" src="https://github.com/aliciademorauk/BlogPost-WebApp/assets/81619741/1bc34c61-0072-4ed1-ae87-7b26f9541c9f">
  
2. After signing in, draft and scheduled posts come first in the home page.
  <br />
  <img width="500" alt="Screenshot 2024-04-22 at 21 04 32" src="https://github.com/aliciademorauk/BlogPost-WebApp/assets/81619741/e84ba3d1-026a-4978-b273-a41221121885">
  <img width="500" alt="Screenshot 2024-04-22 at 20 33 53" src="https://github.com/aliciademorauk/BlogPost-WebApp/assets/81619741/b6da562f-b3ae-42c4-8e08-97f27f5438ee">
  
3. The administrator can click on a blog post to edit it or add a new blog post with the button on the navigation bar, both of which open the rich text editor.
   <br />
  <img width="500" alt="Screenshot 2024-04-22 at 20 33 26" src="https://github.com/aliciademorauk/BlogPost-WebApp/assets/81619741/cac89325-5b43-4242-8da5-c8d0d1328205">
  <img width="500" alt="Screenshot 2024-04-22 at 20 28 43" src="https://github.com/aliciademorauk/BlogPost-WebApp/assets/81619741/730d4886-0533-47b0-92ae-9d00e43e26a9">
   
4. The user can modify email and password details.
   <br />
  <img width="500" alt="Screenshot 2024-04-22 at 20 34 10" src="https://github.com/aliciademorauk/BlogPost-WebApp/assets/81619741/0f9c9500-35a3-4c71-8bda-181000c7ca14">

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
[JavaScript]: https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E
[HTML]: https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white
[CSS]: https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white
[TailwindCSS]: https://img.shields.io/badge/Tailwind_CSS-38B2AC?style=for-the-badge&logo=tailwind-css&logoColor=white
[Ruby]: https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white
[Ruby on Rails]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white
[PostGreSQL]: https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white
[AWS]: https://img.shields.io/badge/Amazon_AWS-232F3E?style=for-the-badge&logo=amazon-aws&logoColor=white
