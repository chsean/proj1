# Q0: Why is this error being thrown?
we haven't made the controller.rb file yet
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
common thing: "a wild __ has appeared". They are appearling randomly through the home_controller.rb, which has @pokemon = trainerless_pokemon.sample, which grabs a random pokemon.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
"Throw a Pokeball!" is the text on the button.
capture_path(id: @pokemon) sents the params[:id] to be the id of the @pokemon
the class is defining the styling for the button
the method is a patch http request.

# Question 3: What would you name your own Pokemon?
elias

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
trainer_path
It needed params[:id]

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
views/layouts/application.html.erb renders messages that come up from our app, so I guess that's where flash is being read.

# Give us feedback on the project and decal below!
doing great

# Extra credit: Link your Heroku deployed app
