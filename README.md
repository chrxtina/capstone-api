# Capstone Project: Full-Stack Application

Live application: https://chrxtina.github.io/capstone-client/

Front-end repository: https://github.com/chrxtina/capstone-client

## About

Cup O' Sugar is a 'shareconomy' application that allows users post items online and share them with their neighbors. The app is meant to foster community, provide a resource for those in need and possibly prevent unnecessary consumerism.

## API end-points

| Verb   | URI Pattern            | Controller#Action  |
| ----   | -----------            | -----------------  |
| POST   | `/sign-up`             | `users#signup`     |
| POST   | `/sign-in`             | `users#signin`     |
| DELETE | `/sign-out/:id`        | `users#signout`    |
| PATCH  | `/change-password/:id` | `users#changepw`   |
| GET    | `/items`		            | `items#index`      |
| GET    | `/items/:id`           | `items#show`       |
| POST   | `/items`               | `items#create`     |
| PATCH  | `/items/:id`           | `items#update`     |
| DELETE | `/items/:id`           | `items#destroy`    |

All data returned from API actions is formatted as JSON.
