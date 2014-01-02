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

# member
Member.reset_column_information

Member.create!(
  id: 3,
  name: 'komagata',
  email: 'komagata@example.com',
  github_id: 'komagata',
  password: 'testtest',
  password_confirmation: 'testtest'
)

Member.create!(
  id: 4,
  name: 'machida',
  email: 'machida@example.com',
  github_id: 'machida',
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

Article.create!(
  id: 6,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 7,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 8,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 9,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 10,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 11,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

Article.create!(
  id: 12,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1
)

# page
Page.create!(
  id: 20,
  slug: 'service',
  title: 'service',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
)

Page.create!(
  id: 21,
  slug: 'contact',
  title: 'contact',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
)

Page.create!(
  id: 22,
  slug: 'access',
  title: 'access',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
)

# snippet
Snippet.create!(
  id: 30,
  slug: 'home_about',
  title: 'ABOUT',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
)

Snippet.create!(
  id: 31,
  slug: 'home_access',
  title: 'ACCESS',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
)

Snippet.create!(
  id: 32,
  slug: 'home_overview',
  title: 'OVERVIEW',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse'
)

# site
Site.create!(
  id: 40,
  title: 'FJORD, LLC.',
  sub_title: 'Builing Apps and Design'
)
