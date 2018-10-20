`curl localhost:4567 --data "url=rubyguides.com" -X POST`
Send a POST request to given URI, passing "url=rubyguides.com" as params

`curl -L`
Follow redirects using curl

`git commit -m "First line" -m "Second line"`
Multi-line git commit messages

`git rm --cached -f <FOLDER/FILE>`
Force removal of targetted FOLDER/FILE from current directories git repo
**FILES/FOLDERS WILL NOT BE REMOVED FROM DIRECTORY, ONLY FROM VERSION CONTROL**

```ruby
gem install shotgun
shotgun server.rb
```
Installs the shotgun gem, use shotgun instead of rb to load Sinatra server files. Automated reload on port 9393.
