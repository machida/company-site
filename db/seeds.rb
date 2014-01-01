# coding: utf-8

# admin
Admin.reset_column_information

Admin.create!(
  id: 1,
  name: 'admin',
  email: 'admin@example.com',
  password: 'testtest',
  password_confirmation: 'testtest'
)

# author
Author.reset_column_information

Author.create!(
  id: 2,
  name: 'author',
  email: 'author@example.com',
  password: 'testtest',
  password_confirmation: 'testtest'
)

# category
Category.reset_column_information

Category.create!(
  id: 1,
  name: 'blog',
  slug: 'blog'
)

# article
Article.create!(
  id: 1,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 2,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 3,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 4,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 5,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Page.create!(
  id: 1,
  slug: 'service',
  title: 'service',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
)

Page.create!(
  id: 2,
  slug: 'contact',
  title: 'contact',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
)

Page.create!(
  id: 3,
  slug: 'access',
  title: 'access',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
)
