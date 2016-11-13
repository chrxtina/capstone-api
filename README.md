# Capstone Project: Full-Stack Application

Live application: https://chrxtina.github.io/capstone-client/

Front-end repository: https://github.com/chrxtina/capstone-client

## About

Cup O' Sugar is a 'shareconomy' application that allows users post items online and share them with their neighbors. The app is meant to foster community, provide a resource for those in need and possibly prevent unnecessary consumerism.

## Dependencies

Install with `bundle install`.

-   [`rails-api`](https://github.com/rails-api/rails-api)
-   [`rails`](https://github.com/rails/rails)
-   [`active_model_serializers`](https://github.com/rails-api/active_model_serializers)
-   [`ruby`](https://www.ruby-lang.org/en/)
-   [`postgres`](http://www.postgresql.org)

## API end-points

| Verb   | URI Pattern            | Controller#Action     |
| ----   | -----------            | -----------------     |
| POST   | `/sign-up`             | `users#signup`        |
| POST   | `/sign-in`             | `users#signin`        |
| DELETE | `/sign-out/:id`        | `users#signout`       |
| PATCH  | `/change-password/:id` | `users#changepw`      |
| GET    | `/categories`		      | `categories#index`    |
| GET    | `/categories/:id`	    | `categories#show`     |
| PATCH  | `/categories/:id`	    | `categories#update`   |
| GET    | `/items`		            | `items#index`         |
| GET    | `/items/:id`           | `items#show`          |
| POST   | `/items`               | `items#create`        |
| PATCH  | `/items/:id`           | `items#update`        |
| DELETE | `/items/:id`           | `items#destroy`       |
| GET    | `/conversations`       | `conversations#index` |
| GET    | `/conversations/:id`   | `conversations#show`  |
| POST   | `/conversations`       | `conversations#create`|
| PATCH  | `/conversations/:id`   | `conversations#update`|
| GET    | `/messages/:id`        | `messages#show`       |
| POST   | `/messages`            | `messages#create`     |

All data returned from API actions is formatted as JSON.
