
Code Test 2 - URL shortener

If you would like to set the application up locally, simply clone the repo down to your local machine run the following commands from the root directory (assuming that ruby is installed):

$ rake db:create (to create the database that stores the submitted URLs).
$ rake db:migrate (to create the Link model).
$ rails server (to boot up your local server).

The application was written with Ruby 2.1.2p95 and Rails 4.1.10

Challenges Encountered: 

Writing this application, I encountered a few issues. The first being generating the short link, especially the http:// and www that prepend many urls. Without a consistent pattern, the generated urls would sometimes not correctly redirect to external websites. I decided that using jquery validations to ensure a valid url is entered will suffice for the vast majority of use cases. 

While writing the testing suite, I ran into some problems with the number of clicks incrementing on the links#show action.  While the incrementing did seem to work, testing for it in the controller gave me issues.  To solve this, I wrote a new method called "increment" in the link model, which I tested separately, and called that method in the controller action. This made my code easier to test but also made it easier to read.

To include a top links board, my first thought was to have a button that would render a page with a url with something like "rooturl/top". However, due to the nature of a url shortener "rooturl/top" redirects to "rooturl/38473" as in the 38,473th link in the shorteners database. So I decided to load the top links on the landing page, but hide them until the clicks a button to show the table.  I did this using jquery, and this allows for a smoother user experience.


Application Design Reasoning:

While I have worked with both the Sinatra and Rails frameworks, I generally stick with rails for applications that will make use of a database. I think the added database functionality that works right of the box with rails allows me to get up and running faster, and with fewer missteps along the way, than Sinatra. 

My decision to use Postgresql stems not from it's compatibility with heroku, but more because I have much more experience working with it than I do with other databases.


The Shortener Functionality:

To find the right way to generate a shortened url, I did a little research into alternative number bases.  I knew that every url submitted would have a unique id, and if I could convert that to a number base that wasn't base 10, then I could communicate an enormous number in only a few characters.  It turns out that while base 62 is possible, due to the inclusion of characters like "/" it isn't url safe, so I used base 36 to generate the shortened url.


Future Improvements:

If I were to continue developing this application out, I would consider making the urls saveable. As of now, the shortened urls aren't stored anywhere. They are simply translated into base 10 id and the database fetches the associated original url.  If the shortened one is lost, the original cannot be found.

Beyond issues of styling, which no one is ever really done with, I think I would like to have the application search through the existing urls in the database and if the given url already exists, then the application would simply return the shortened url associated with it the first time it was entered.

