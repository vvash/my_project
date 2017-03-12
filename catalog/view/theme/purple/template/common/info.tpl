

<div id="copyright_info">	
	<div id="up_button_author">
		&copy;
	</div>
	<div id="copyright_links">	
	</div>
</div>
<script>
$( document ).ready(function() {
	powered_oc = 'Powered By <a href="http://www.opencart.com">OpenCart</a>';
	if(document.getElementById('home_content')){
		author = 'Design: <a href="http://www.dswww.pl" title="Strony WWW">dswww.pl - Strony WWW</a> | ';
	}else{
		author = '';
	}
	document.getElementById("copyright_links").innerHTML = author+powered_oc;
	
	$( "#up_button_author" ).click(function() {
		$( "#copyright_links" ).slideToggle( "slow", function() {});
	});
});
</script>