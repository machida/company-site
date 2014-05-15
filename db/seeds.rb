# coding: utf-8

# admin
Staff.reset_column_information

Staff.create!(
  id: 1,
  name: 'admin',
  email: 'admin@example.com',
  role: "admin",
  slug: "staff-admin",
  password: 'testtest',
  password_confirmation: 'testtest'
)

Staff.create!(
  id: 2,
  name: 'staff',
  email: 'staff@example.com',
  role: "editor",
  slug: "staff",
  password: 'testtest',
  password_confirmation: 'testtest'
)

Staff.create!(
  id: 3,
  name: 'komagata',
  email: 'komagata@example.com',
  slug: "komagata",
  github_id: 'komagata',
  twitter_id: 'komagata',
  facebook_id: 'komagata1111',
  role: "admin",
  published: true,
  description: 'Member Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  body: 'Member Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  password: 'testtest',
  password_confirmation: 'testtest'
)

Staff.create!(
  id: 4,
  name: 'machida',
  email: 'machida@example.com',
  slug: "machida",
  github_id: 'machida',
  twitter_id: 'machida',
  facebook_id: 'teppeimachida',
  role: "admin",
  published: true,
  description: 'Member Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  body: 'Member Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  password: 'testtest',
  password_confirmation: 'testtest'
)

Staff.create!(
  id: 5,
  name: 'miyauchi',
  email: 'miyauchi@example.com',
  slug: "miyauchi",
  role: "editor",
  password: 'testtest',
  password_confirmation: 'testtest'
)

Staff.create!(
  id: 6,
  name: 'hrysd',
  email: 'hrysd@example.com',
  slug: "hrysd",
  role: "editor",
  password: 'testtest',
  password_confirmation: 'testtest'
)

Staff.create!(
  id: 7,
  name: 'nakazato',
  email: 'nakazato@example.com',
  slug: "nakazato",
  role: "editor",
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
  id: 2,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 3,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 4,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 5,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 6,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 7,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 8,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 9,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 10,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 11,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 12,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 13,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 14,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 15,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 16,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 17,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

Article.create!(
  id: 18,
  title: 'Article Tile',
  body: 'Article Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  category_id: 1,
  staff_id: 1,
  published: true
)

# page
Page.create!(
  id: 20,
  slug: 'contact',
  title: 'contact',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  published: true
)

Page.create!(
  id: 21,
  slug: 'access',
  title: 'access',
  body: 'Page Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  published: true
)

# snippet
Snippet.create!(
  id: 30,
  slug: 'home_about',
  title: 'ABOUT',
  body: 'Snippet Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  published: true
)

Snippet.create!(
  id: 31,
  slug: 'home_access',
  title: 'ACCESS',
  body: 'Snippet Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  published: true
)

Snippet.create!(
  id: 32,
  slug: 'home_overview',
  title: 'OVERVIEW',
  body: 'Snippet Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  published: true
)

# service
Service.create!(
  id: 41,
  slug: 'entrusted_development',
  title: '受託開発',
  body: 'Service Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  description: 'Service Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  published: true
)

Service.create!(
  id: 42,
  slug: 'kowabana',
  title: '怖話',
  body: 'Service Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  description: 'Service Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  published: true
)

Service.create!(
  id: 43,
  slug: 'intern',
  title: 'Rails 研修',
  body: 'Service Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  description: 'Service Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  published: true
)

# site
Site.create!(
  id: 1,
  slug: 'site',
  title: 'FJORD, LLC.',
  sub_title: 'Builing Apps and Design',
  body: 'Site Body Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse',
  published: true
)
