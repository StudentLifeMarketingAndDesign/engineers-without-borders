                <h2 class="events">Upcoming Events</h2>
            </div>
        </div>

        
        <% loop Posts() %>
        
        	<% if $Odd %>
        		<div class="row-fluid" style="background: url({$ThemeDir}/images/linedpaper.png);border-top: 1px solid #e5e5e5;padding: 50px 0;">
        	<% end_if %>
        	<div class="span5 <% if $Odd %>offset1<% end_if %>">
            	<article>


						<h3><a href="calendar/#{$ID}">$Title</a></h3>
						<% if $Author %><h6>Written by <% if $AuthorEmail %><a href="mailto:$AuthorEmail">$Author</a><% else %>$Author<% end_if %> on <% end_if %>{$WrittenDate.Format("F n, Y")}</h6>        
						<p>$Content.Summary(20)</p>
						<p><a href="calendar/#{$ID}">Continue Reading</a>
						
					</article>

            </div>
            <% if $Even || $Last %>
                </div>
            <% end_if %>
        
        <% end_loop %>

  
    </div><!-- end .container -->
