        <h2 class="events-title">Upcoming Events</h2>
        
        <% loop Posts() %>
        
        	<% if $Odd %>
        		<div class="events row-fluid">
        	<% end_if %>
                	<div class="span5 <% if $Odd %>offset1<% end_if %>">
                    	<article>

        					<h3><a href="calendar/#{$ID}">$Title</a></h3>
        					<% if $Author %>
                                <h6>Written by 
                                    <% if $AuthorEmail %>
                                        <a href="mailto:$AuthorEmail">$Author</a>
                                    <% else %>
                                        $Author
                                    <% end_if %>
                                </h6>
                            <% end_if %>
                            <p>$EventDate.NiceUS</p>
        					<p>$Content.Summary</p>
                            <!-- <p>$Content.Summary(20)</p> -->
        					<p><a href="calendar/#{$ID}">Continue Reading</a>
        					
        				</article>
                    </div>
            <% if $Even || $Last %>
                </div>
            <% end_if %>
        
        <% end_loop %>
