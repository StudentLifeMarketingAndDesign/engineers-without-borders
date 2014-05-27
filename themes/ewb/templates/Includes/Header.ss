<header class="header">
	<div class="top-nav clearfix">
		<div class="container">
			<ul class="clearfix">
				<li><a href="support/">Donate/Support</a></li>
				<li><a href="calendar/">Calendar/Events</a></li>
				<li><a href="contact/">Contact Us</a></li>
			</ul>
		</div>
	</div>
	<div class="container clearfix">
		<a href="{$BaseHref}" class="logo">
			<img src="{$ThemeDir}/images/ewb_logo.png" alt="University of Iowa Engineers Without Borders">
			<span></span>
		</a>
		<nav class="main-nav clearfix">
			<ul class="clearfix">
					<!--<li><a href="about/">About Us</a></li>
					<li class="active"><a href="ghana/">Ghana Project</a></li>
					<li><a href="committees/">Committees</a></li>
					<li><a href="get-involved/">Get Involved</a></li>-->
				<% loop Menu(1) %>
					<li <% if $LinkOrSection = "section" %>class="active"<% end_if %>><a href="$Link" >$MenuTitle</a></li>
				<% end_loop %>
			</ul>
		</nav>
    </div>
</header>