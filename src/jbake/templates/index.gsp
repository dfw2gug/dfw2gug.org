<% include "header.gsp" %>

    <div class="row" style="margin-right:25px;margin-left:25px;">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="well well-sm">
                <img src="/information.png" style="width: 16px;" /> </span><strong>Information</strong>
                
                <p style="margin-top:8px;">We are a group of users focused on expanding the breadth and depth of <a href="http://groovy-lang.org">Groovy</a> and <a href="http://grails.org">Grails</a> development skills with our members who live and work in the DFW area. Our meetings are on the 
                1<sup>st</sup> Wednesday of every month (social &amp; food at 6:30pm, meeting content at 7:00pm) at the NEW
            <a href="http://improving.com/">Improving</a> office in Plano at <a href="https://www.google.com/maps/dir/''/5445+Legacy+Drive,+Plano,+TX+75024/@33.0776401,-96.8115728,17z/data=!3m2!4b1!5s0x864c3cb15d1c5797:0x7edf0a3a8e49ead5!4m8!4m7!1m0!1m5!1m1!1s0x864c3ccbcd759e8d:0xc7b88a116f8a3c53!2m2!1d-96.8093841!2d33.0776401" target="_blank">5445 Legacy Drive, Plano, TX 75024</a>.</p>
            </div>
        </div>
    </div>
    
    <h2>Meetings</h2>
    
    <% published_posts.sort { a,b ->
            (a.meetingDate ? Date.parse('yyyy-MM-dd', a.meetingDate) : a.date) <=> (b.meetingDate ? Date.parse('yyyy-MM-dd', b.meetingDate) : b.date)
       }.reverse()[0..12].each { post -> %>    
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <h3><a href="${post.uri}">${post.title}</a></h3>
                <p style="margin-top:-10px;font-style:italic;"><span>${(post.meetingDate ? Date.parse('yyyy-MM-dd', post.meetingDate) : post.date).format("dd MMMM yyyy")}</span> - <span>${post.presenter}</span></p>
                <p style="margin-top:-5px;">${post.abstract}</p>
            </div>
        </div>
    <% } %>

    <hr/>

    <p><span class="glyphicon glyphicon-calendar"></span> Older meeting summaries are available in the <a href="archive.html">archives</a>.</p>

<% include "footer.gsp" %>
