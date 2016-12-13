<%include "header.gsp"%>
	
        <h1>${content.title}</h1>

	<p><em>${(content.meetingDate ? Date.parse('yyyy-MM-dd', content.meetingDate) : content.date).format("dd MMMM yyyy")}</em> - <strong>${content.presenter}</strong></p>

	<p>${content.body}</p>
	
<%include "footer.gsp"%>