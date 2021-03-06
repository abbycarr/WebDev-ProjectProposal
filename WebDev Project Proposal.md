Our team for the Web Development Project is comprised of Jehane Ali,
Abby Carr, Tanya Kler, and Kia Zafar. Our proposal for our project is
to create a web application that helps users with cooking meals. In
particular our web application will target helping users determine
what to cook for their meals as well as allow them to stay connected
to their friends and see what their friends are cooking to gain
inspiration. Our app will allow users to input the ingredients they
have in their pantry and get a generated recipe that they can make
with the ingredients they have on hand. They can save recipes they
like or want to try and come back to them whenever they want. Users
can also see what their friends have saved by going to their profiles.
Users must create an account to input ingredients and save recipes.
Users can follow other users to see what they are cooking and what
recipes they have saved. Similar to how the Spotify application tells
you what your friends are listening to at the current moment, our
application will tell users what their friends are cooking at the
moment. This feature allows users to gain inspiration and get more
ideas for what they should cook. All saved recipes are stored in the
user’s profile so they can always access them. Users can also live
stream when they are cooking and their friends can watch them cook
live. We will be implementing some sort of friends/followers concept
as well. We are considering two different approaches -- one approach
where users can become friends by mutually accepting friend requests
similar to LinkedIn, and another approach where users can follow other
users, with no requirement for mutual following similar to Twitter. We
plan to explore both ideas and see which fits better within the
context of our app. 

We plan to use TheMealDB API
(https://www.themealdb.com/api.php). It’s an API that contains a
diverse database of recipes and offers a variety of features. Some of
these include the ability to search for a meal by name, look for
recipes that use specific ingredients, and find recipes that begin
with a certain letter. 

We are planning to include several types of
real-time behavior in our web application. Firstly, we will give users
the option to have a status where they can update what they are
currently cooking. Similarly to how the Spotify web application shows
you what your friends are listening to or what they last listened to,
our application will show users what their friends are cooking or what
they last cooked. This will help our users to feel more connected with
their friends, and also enable them to learn about new recipes they
may not have heard of otherwise. Additionally, we are aiming to
implement live-streaming as another component of our web application.
This will give users the opportunity to share their experiences while
they are cooking so their friends can either learn how to make
something new or cook along with them. Finally, we are planning to
incorporate some sort of “new recommended recipes” feature, possibly
through the use of a new list of recipes that could be sent to users
periodically. 

While users are very important to our database, we also
hope to store data for each of them. One of the big components of our
app will cover recipes that users should be able to save in some form-
currently imagined like how users may be able to ‘pin’ items in
Pinterest. For this we plan to create a table for recipes; users will
have many recipes. Since we only plan to store recipes that users
save, we aren’t going to implement a many to many relationship that
would complicate the database significantly. Instead, users will have
many recipes while recipes will have one user- although there may be
duplicates for some recipes. The state of recipes will likely be the
title, image, and link alongside the cooking ‘status’ of the recipe,
although this could change based on the way we proceed with building
the application. The other state we wish to create in the database is
either a follower/following or a friend relationship between users. We
want to explore the implementation of both possibilities but this
relationship will either be established by two users mutually
accepting a friendship- akin to LinkedIn- or users will be allowed to
follow other users in an unbalanced manner similar to Twitter. For
this state, we will only be storing the two user ids to establish a
relationship we can then use to populate other parts of the
application such as seeing friends’ statuses or potentially suggesting
friends’ cooked recipes. 

Something neat we are planning to include is
the ability to have live video streaming and live viewing on our
website. This would be used so that if someone is trying a new recipe
or showing others how to do a recipe, they can stream it to the
website. This could be for planned events and specific times or
possibly whenever a user feels like it. We are planning on
implementing this using WebRTC, which is a “free, open-source project
providing web browsers and mobile applications with real-time
communication via simple application programming interfaces.” We’re
doing this in JavaScript, based on this tutorial:
https://youtu.be/DvlyzDZDEq4. 

Our first experiment involved testing
out our chosen API, TheMealDB. We wanted to examine the features of
the API, so we decided to create a simple web application that would
allow users to search for all recipes beginning with a particular
letter. We began by creating simple functions that would allow us to
test different types of API calls in the terminal, as seen in the
example from class. We found that we were able to successfully execute
a variety of types of API calls, such as searching for recipes from a
particular region, or searching for recipes that contained a
particular ingredient. From there, we moved on to creating an actual
web application where a user can type a letter into a search bar and
retrieve a list of recipes that begin with that letter. We were able
to successfully complete this web application. A visitor to the
website can type a letter into a search bar and receives a list of
recipes that begin with that letter in return. From this experiment,
we learned how to implement a server side call to our API using the
functions that we wrote. Going through this process was extremely
helpful, because we learned a lot about how to integrate our API calls
with utilizing Elixir code and tying it into the necessary code for
rendering a web page to display our application. We did face some
challenges while trying to figure out how to actually render our form,
but we spent a lot of time looking through documentation and online
resources and were able to learn how to accomplish this task.

For
planning what to do for the “neat” thing, we decided to try including
a livestreaming element. To figure out the best way to go about
including it, we decided to test live streaming APIs to see what would
be the most straightforward method to implement into our application.
The API we were experimenting with was WebRTC. We tried following
different guides online to implement this API in elixir in different
ways. One tutorial helped us implement the WebRTC rendering in our
localhost with the exception of the actual livestream video element
showing up. The other guide simply led to many errors regarding
modules that didn’t even allow the page to render in localhost. These
trials taught us that implementing the WebRTC API in Elixir would be
more difficult than anticipated and could also become more complex
when trying to embed it into the whole application with other
functionality. We decided to try one more implementation of the WebRTC
API in JavaScript by following another tutorial that seemed easy to
follow. This was our final attempt of implementing the live streaming
feature with the WebRTC API. It worked how we wanted to and seemed
like it would be easier to implement into the entire functionality of
our entire application. Through this experimentation with the WebRTC
API we learned that implementing the live streaming feature with
JavaScript would be the best way to go. 

One anticipated user would be
a college student or other young adult type. The reason this type of
user may be looking to use our application could be as simple as
looking for an application that gives them recipes. Although our
ingredient-based search is not a unique feature for recipe
applications- it is a potential draw for college students who are less
likely to have a plethora of ingredients at their disposal nor the
time to make it to a grocery store last minute. In addition, the
social setting could cater to this group of individuals because of the
connections it could make with others their age. Sharing what they are
cooking or video streaming cooking are features that align with social
media and types of sites that cater largely to younger audiences. A
common user story for college students might include planning a
cook-along with friends. In this case, users might plan to cook at the
same time as each other for the sense of community. They may have one
person who is familiar with the recipe stream them making the meal or
everyone might try out a new recipe together and report back to each
other about how it went and how they liked the meal. 

Another
anticipated user could be a younger chef who is just getting started
with cooking. Someone around the age of 11-13 who is not very
experienced in the kitchen will not have access to or be able to work
with a lot of ingredients and complicated recipes. Since recipes with
less ingredients can often be much simpler than ones with more, having
the ability to find simple recipes with only a few ingredients is a
good way to begin learning how to cook. A typical user story would be
a younger chef wanting to make a simple pasta dish. With the
supervision of a parent or guardian, they would be able to log into
the app and input a few simple ingredients that their guardian has
approved of and then find an easy recipe to make. They can also learn
by watching their older friends or relatives live stream on the app as
well. 

A third potential type of user could be a parent who often cooks
for their family. This would be someone who is interested in cooking a
wide variety of meals, as sometimes they just want to get dinner on
the table quickly with whatever is in the fridge, while other times
they may want to cook fancier, more complicated meals if they are
entertaining company. In the case where they are trying to make dinner
quickly using the ingredients they have on hand, the ability to search
for recipes by specific ingredients would be very applicable. On the
other hand, if they are trying to learn how to make a more complex
recipe, being able to watch the live-stream of someone else cooking
that recipe would be an exciting opportunity. Finally, they could use
the friends feature to share recipes with relatives or other parents
they know. A typical user story for a parent could be trying to plan a
meal for a family get-together. They may be interested in making a few
different dishes for this meal. When they are planning, they might see
a recipe that a friend is cooking using the live-update feature, and
decide to add that recipe to the menu of what they will be cooking.
Then, they might have another dish in mind, but be unsure of how to
make it. In that case, they could join a live-stream while they are
cooking that recipe, and see exactly how to make it. The user could
update their status as they are cooking different dishes for the meal,
and this way their friends can see what they are making as well. After
the meal, if they enjoyed all of their recipes, the user could save
them to cook again in the future.
