// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

//	Add handlers for every post link
//	The click event will update the post box with the ref'd post number
	
	
function loader() {
	var reply_links = $$('a.replier');
	
	reply_links.each(function(link) {
		//	.slice(6) removes 'reply-' from the id of the link to get post number
		Event.observe(link, 'click', function() { reply_to(link.id.slice(6)); });
	});
	
}

function reply_to(post_id) {
	var reply_box = $('reply_comment');
	
	if(reply_box) {
		//	TODO: Add the post_id where the cursor is, and keep original text intact  
		reply_box.update('>>' + post_id);
	}
}

//	It wasn't finding any elements before because it was executing before the DOM was totally loaded
Event.observe(document, 'dom:loaded', function() { loader(); });