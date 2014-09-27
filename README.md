# The _MS Dev Show_ Site

[MS Dev Show Podcast](http://msdevshow.com) website source. Our website is automatically updated when this repo changes. Fork this project to make a similar site.

A NEW podcast for Microsoft developers covering topics such as Azure/cloud, Windows, Windows Phone, .NET, Visual Studio, and more! Hosted by Jason Young and Carl Schweitzer.

Subscribe to the show using our [RSS Feed](http://msdevshow.libsyn.com/rss), or search for "ms dev show" in your favorite podcast app.

## Getting Started with Docpad
The _MS Dev Show_ site utilizes Docpad, a nodejs-based static site generation tool, to build its website and resources. Follow the installation steps below to run a local copy of the site.

### Installation

1. Download and install [nodejs](http://nodejs.org/) (use default options) and common packages:
	1. `npm install -g npm`
	2. `npm install -g docpad`
	3. _For the following packages, you'll need to be in the git repository folder_
	3. `npm install cheerio`
	4. `npm install moment`
2. Download and install [Ruby](http://www.rubyinstaller.org/) (Windows: be sure to add Ruby executables to your **PATH**)
3. Download and install [Sass](http://sass-lang.com/install) and other common gems:
	1. `gem install sass`
	2. `gem install bourbon`
	3. `gem install neat`
	4. `gem install bitters`
4. In the command prompt/terminal, navigate to your git repository folder
5. Run the command `docpad update`

And done! These guidelines should work for both Windows and Mac OS X.

### Running the Site

1. From the command prompt/terminal, navigate to your git repository folder
2. Run the command `docpad run`, this will start a local server and begin rendering your files
3. Open your favorite web browser and navigate to [http://localhost:9778/](http://localhost:9778/)