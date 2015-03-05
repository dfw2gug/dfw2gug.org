<%include "header.gsp"%>

  <%include "menu.gsp"%>
	
  <div class="container">
    <div class="jumbotron" style="margin-top:5px;">
      <h1>DFW Groovy &amp; Grails User Group</h1>
      <p>Focused on expanding the breadth and depth of Groovy and Grails development skills with our members who live and work in
	the DFW area.</p>
      <p>Meetings are on the 1<sup>st</sup> Wednesday of every month (social &amp; food at 6:30pm, meeting content at 7:00pm) at the
	<a href="https://www.google.com/maps/place/Improving+Enterprises,+Inc./@32.977034,-96.826953,17z/data=!3m1!4b1!4m2!3m1!1s0x864c214428760391:0x93e3cd120aeda77a" 
	  target="_blank" data-toggle="tooltip" data-placement="top" title="16633 Dallas Parkway #100 Addison, TX 75001">Improving Enterprises</a>
	  office on the Dallas North Tollway.</p>
    </div>

    <div class="tooltip top" role="tooltip">
      <div class="tooltip-arrow"></div>
      <div class="tooltip-inner">
	16633 Dallas Parkway #100<br/>
	Addison, TX 75001
      </div>
    </div>

    <h2>Recent Meetings</h2>
    
    <%published_posts[0..9].each {post ->%>
	<a href='${post.uri}'><h2>${post.title}</h2></a>
	<p style="margin-top:-10px;font-style:italic;"><span>${post.date.format("dd MMMM yyyy")}</span> - <span>${post.presenter}</span></p>
	<p style="margin-top:-5px;">${post.abstract}</p>
    <%}%>

    <hr />

    <p>Older meeting summaries are available in the <a href="/${config.archive_file}">archive</a>.</p>
  </div>

<%include "footer.gsp"%>