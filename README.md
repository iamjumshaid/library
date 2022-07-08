
# SchoolMaker Assessment for Library Application

Library project implements the following requirements:

 1. The user must create an account and log in to access the rest of the
    app. 
 2. The user can see a list of book suggestions. 
 3. Each book has: a title, description, author, publisher, number of pages, category, comments. 
 4. The user can search/filter/sort books. 
 5. The user can consult the store page of a book, which contains:
     - The book title, description, and price.
     - Some free sample pages from the book.
     - The reviews from users who bought the book. 
  6. The user can buy a book. 
  7. The user can access the library of books they own. 
  8. The user can read a book online. 
  9. The user can review a book.
   
The Library project uses the devise template [Devise Auth Setup in Rails 7](https://medium.com/@nickfrancisci/devise-auth-setup-in-rails-7-44240aaed4be).

## Setup

Follow the below steps to run the project:

```

bundle install

bin/rails db:create

bin/rails db:migrate

bin/rails db:seed

```

  

And then, to run the server

```

bin/dev

```