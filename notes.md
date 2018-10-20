`curl localhost:4567 --data "url=rubyguides.com" -X POST`
Send a POST request to given URI, passing "url=rubyguides.com" as params

`curl -L`
Follow redirects using curl

`git commit -m "First line" -m "Second line"`
Multi-line git commit messages

`git rm --cached -f <FOLDER/FILE>`
Force removal of targetted FOLDER/FILE from current directories git repo
**FILES/FOLDERS WILL NOT BE REMOVED FROM DIRECTORY, ONLY FROM VERSION CONTROL**


Installation:

  gem install shotgun

Starting a server with a rackup file:

  shotgun config.ru

Using Thin and starting on port 6000 instead of 9393 (default):

  shotgun --server=thin --port=6000 config.ru

Running Sinatra apps:

  shotgun hello.rb

See 'shotgun --help' for more advanced usage.,
