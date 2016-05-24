<%include 'header.gsp'%>

	<%include 'menu.gsp'%>
	
	<div class="page-header">
		<h1>Meeting Archive</h1>
	</div>
	
	<!--<ul>-->
		<%def last_month=null;%>
		<%published_posts.each {post ->%>
			<%if (last_month) {%>
				<%if (post.date.format("MMMM yyyy") != last_month) {%>
					</ul>
					<h4>${post.date.format("MMMM yyyy")}</h4>
					<ul>
				<%}%>
			<% } else { %>
				<h4>${post.date.format("MMMM yyyy")}</h4>
				<ul>
			<% }%>
			
			<li>${post.date.format("dd")} - <a href="${post.uri}">${post.title}</a> - ${ post.presenter }</li>
			<%last_month = post.date.format("MMMM yyyy")%>
		<%}%>
	</ul>
	
<%include "footer.gsp"%>