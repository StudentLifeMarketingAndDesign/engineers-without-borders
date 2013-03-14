 <div class="banner-container">
        <div class="banner banner-home"></div>
    </div>
    
    <div class="container main-content">
        <div class="title"><h1>$Title</h1></div>
        
        <iframe src="https://www.google.com/calendar/embed?src=en.usa%23holiday%40group.v.calendar.google.com&ctz=America/Chicago" style="border: 0; padding: 30px;" width="100%" height="700" frameborder="0" scrolling="no"></iframe>
        <div class="row-fluid">
            <div class="span10 offset1">
            	$Content
            	$Form
    
                <h2>$DateHeader</h2>
				<% if Events %>
					<div id="event-calendar-events">
					  <% include EventList %>
					</div>
				<% else %>
					  <p><% _t('NOEVENTS','There are no events') %>.</p>
				<% end_if %>

            </div>
        </div>       
    </div><!-- end .container -->



