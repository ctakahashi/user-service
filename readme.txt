GET, PUT, POST



URL name - the part that comes after 

HTML is for users and display, other things will probably return JSON or something

activerecord is the ORM (Object-Relational Mapping)

typheus - teaches ruby to talk acdp

database.yml is the file that tells activerecord where the database files live since database are outside of sinatra scope.

Rakefile --> rake is the Ruby version of make
	Includes commands that you'll be using for your Ruby application

yml = yet another markup language

rake db:migrate created an empty database

Instead of deleting a file and recreating it, people tend to "migrate" and change it (data is maintained)
	Migration tries to move data from one place to another	

Sinatra is a library of Ruby code which allows you to create web servers. Web servers are computers that are servers who know how to respond to HTTP requests. HTTP requests have three things: URL, set of attributes or parameters(optionally) which return information, 
	- attributes return JSON