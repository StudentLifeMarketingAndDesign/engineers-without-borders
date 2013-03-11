 <div class="banner-container">
        <div class="banner banner-home">
            <span></span>
        </div>
    </div>
    
    <div class="container main-content">
        <div class="title"><h1>$Title</h1></div>
        
        <iframe src="https://www.google.com/calendar/embed?src=en.usa%23holiday%40group.v.calendar.google.com&ctz=America/Chicago" style="border: 0; padding: 30px;" width="100%" height="700" frameborder="0" scrolling="no"></iframe>
        
       <h2>Upcoming Events</h2>
        <div class="row-fluid">

            	$Content
            	$Form
					<% loop $Children %>
			        
			        	<% if $Odd %>
			        		<div class="row-fluid" style="background: url({$ThemeDir}/images/linedpaper.png);border-top: 1px solid #e5e5e5;padding: 50px 0;">
			        	<% end_if %>
			        	<div class="span5 <% if $Odd %>offset1<% end_if %>" id="$ID">
			        	
							<article>
								<h3>$Title</h3>								
								<% if $Author %><h6>Written by <% if $AuthorEmail %><a href="mailto:$AuthorEmail">$Author</a><% else %>$Author<% end_if %> on <% end_if %>{$WrittenDate.Format("F n, Y")}</h6>        
								<p>$Content.Summary(20)</p>
							</article>
									        		
			            </div>
			            <% if $Even || $Last %>
			                </div>
			            <% end_if %>
			        
			        <% end_loop %><% --end loop Children --%>

        </div>       
        	<% include FieldNotes %>
    </div><!-- end .container -->



