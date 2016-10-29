<% include "header.gsp" %>

<% include "menu.gsp" %>

<div class="container">

    <div class="panel panel-default" style="margin-top:5px;background-color: beige;">
        <div class="panel-body">
            <h1>DFW Groovy &amp; Grails User Group</h1>

            <p>Focused on expanding the breadth and depth of Groovy and Grails development skills with our members who live and work in
            the DFW area.</p>

            <p>Meetings are on the 1<sup>st</sup> Wednesday of every month (social &amp; food at 6:30pm, meeting content at 7:00pm) at the NEW
                <a href="https://www.google.com/maps/dir/''/5445+Legacy+Drive,+Plano,+TX+75024/@33.0776401,-96.8115728,17z/data=!3m2!4b1!5s0x864c3cb15d1c5797:0x7edf0a3a8e49ead5!4m8!4m7!1m0!1m5!1m1!1s0x864c3ccbcd759e8d:0xc7b88a116f8a3c53!2m2!1d-96.8093841!2d33.0776401"
                   target="_blank" data-toggle="tooltip" data-placement="top"
                   title="Improving Plano">Improving </a>
                office in Plano, TX on Legacy Drive.</p>
           <h3>Speaking of the NEW Improving office, we are taking OFF for our October meeting while <a href="http://dfw2gug.org/about.html">Improving gets settled into the new location</a> and is ready to host us again in November.</h3>
        </div>
    </div>

    <div class="tooltip top" role="tooltip">
        <div class="tooltip-arrow"></div>

        <div class="tooltip-inner">
            16633 Dallas Parkway #100<br/>
            Addison, TX 75001
        </div>
    </div>

    <% published_posts.sort { a,b ->
            (a.meetingDate ? Date.parse('yyyy-MM-dd', a.meetingDate) : a.date) <=> (b.meetingDate ? Date.parse('yyyy-MM-dd', b.meetingDate) : b.date)
       }.reverse()[0..9].each { post -> %>
        <a href='${post.uri}'><h3>${post.title}</h3></a>
        <p style="margin-top:-10px;font-style:italic;"><span>${(post.meetingDate ? Date.parse('yyyy-MM-dd', post.meetingDate) : post.date).format("dd MMMM yyyy")}</span> - <span>${post.presenter}</span></p>
        <p style="margin-top:-5px;">${post.abstract}</p>
    <% } %>

    <hr/>

    <p>Older meeting summaries are available in the <a href="archive.html">archives</a>.</p>
</div>

<% include "footer.gsp" %>
