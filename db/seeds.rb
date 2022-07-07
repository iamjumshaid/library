# frozen_string_literal: true

require 'faker'
require 'RMagick'

# books categories
10.times do
  Category.create!(name: Faker::Book.unique.genre)
end

# creating user with favorite categories
5.times do
  user = User.create!(email: Faker::Internet.unique.email, password: '12345678')

  3.times do
    user.categories << Category.create!(name: Faker::Book.unique.genre)
  end
end

# books, authors, publishers
100.times do
  publisher = Publisher.create!(name: Faker::Book.publisher)
  author = Author.create!(name: Faker::Book.author)
  no_of_pages = 250

  book = Book.create!(title: Faker::Book.unique.title, description: Faker::Lorem.paragraph_by_chars, no_of_pages: no_of_pages, author_id: author.id, publisher_id: publisher.id)
  book.ebook.attach(io: File.open('agile-web-development-with-rails-6.pdf'), filename: 'agile-web-developm
  ent-with-rails-6.pdf', content_type: 'application/pdf')

  category = Category.find_by(id: rand(1..10))
  book.categories << category
end

# giving first user 10 books and adding review on the book
count = 1
10.times do
  book = Book.find_by(id: count)
  user = User.first

  user.books << book
  Review.create!(user_id: user.id, book_id: book.id, rating: rand(1..5), comment: Faker::Lorem.question)
  count += 1
end

# To test the books suggestions
User.first.categories << Category.first(3)

# Adding image attachments as PDF preview for book
Book.all.each do |book|
  directory_name = 'pdf-previews'
  FileUtils.mkdir(directory_name)
  page = 0

  # 5 preview images per book
  5.times do
    # reads just the specified page of the book
    file_name = "agile-web-development-with-rails-6.pdf[#{page}]"
    image = Magick::Image.read(file_name)
    image[0].write("#{directory_name}/#{file_name}.jpg")

    book.previews.attach(io: File.open("#{directory_name}/#{file_name}.jpg"), filename: file_name)
    page += 5
  end
  FileUtils.rm_rf(directory_name)
end
