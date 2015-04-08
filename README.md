# DFW Groovy & Grails User Group

Site: http://dfw2gug.org

## Development

This site is developed with [JBake](http://jbake.org) using its Gradle plugin. You can refer to their documentation for general JBake and template issues.

### Create Blog Post

Create a new Markdown file in the `src/jbake/content/blog` directory for the current year, using the name format as `month-year.md`

The contents of the file should be in the following Markdown format (with added header):

    title=The Title
    presenter=Name of Presenter
    abstract=Simple description or abstract for presentation
    date=2015-04-01
    type=post
    tags=blog
    status=published
    ~~~~~~
    
    To be determined...

When you are ready to build the site with any content changes, run:

    ./gradlew jbake
    
which will generate the site. You can then either view it in a browser by loading the files, or you can run the simple local server with:

    ./groovy serve.groovy [port]
    
and then point your browser to http://localhost[:port] to view the site.

## Publishing

When you are ready to publish the site, ensure that all your changes are checked into Git and that you have pushed them to the remote branch, then run the following:

    ./gradle jbake publish
    
which will publish the site contents to the `github-pages` for the project (this is the live site!)
