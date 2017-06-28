# Brewpedia

### SaaS Wiki Collaboration Tool for All Things Coffee

Coffee lovers can create, edit and collaborate on markdown wikis relating to all things coffee.

See a demo version here: https://blocipedia-kasey.herokuapp.com

## Project Objectives

- Users can sign up for a free account by providing a user name, password and email
- Users can sign in and out of Brewpedia
- Users with a standard account, can create, read, update, and delete public wikis
- User roles available: admin, standard, or premium
- Development database is seeded automatically with users and wikis
- Users can upgrade account from a free to a paid plan
- Users can create private wikis
- Users can edit wikis using Markdown syntax
- Users can add and remove collaborators for private wikis
- Users have readable URLs on wikis

## Built With

**Languages and Frameworks:**
- Ruby 2.3.3
- Rails 4.2.5
- Bootstrap

**Databases:**
- SQLite (Test, Development)
- PostgreSQL (Production)

**Tools and Gems:**
- SendGrid for email confirmation
- Devise for user authentication
- Pundit for user authorization
- Stripe for payment processing
- Figaro for secure configuration
- Redcarpet for Markdown formatting
- Faker for seeding fake data
- FriendlyId 5.1.0 for human friendly URLs

## Setup and Configuration

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
