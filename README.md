# Matilha RoR Server Boilerplate 

Base project to easy server deployment for RoR.
Made with Docker ;)

## Playbook
***It's dangerous to go alone! Read [this](https://github.com/matilhaestudio/dev-playbook)!***

##Should provide a base project with:
- Common gems
- Base server with:
	- Admin panel
	- Login page with devise
	- User administration
	- Password recovery
	- Https support
	- API modules
	


##How to

1. Install Docker
2. Install Docker ToolBox
3. Run docker-compose run web rails new . --force --database=postgresql --skip-bundle

## Basic Setup
_Search for **"kickstart"** on all files from project_

1. Change database configuration (db name, username and password) on ./config/database.yml
2. Change application title on ./app/views/layouts/application.html.erb
3. Change application's module name on ./config/application.rb
4. Change ActiveAdmin's site title on ./config/initializers/active_admin.rb
5. Change session store key on ./config/initializers/session_store.rb
6. rake db:create
7. rake db:migrate
8. rake db:seed
9. rails server
10. http://localhost:3000/admin (user: admin@example.com, pass: password)
