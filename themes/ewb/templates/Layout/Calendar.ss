 <div class="banner-container">
        <div class="banner banner-home">
            <span></span>
        </div>
    </div>
    
    <div class="container main-content">
        <div class="title"><h1>$Title</h1></div>
        
        <% if MainImage %>
        	<img src="$MainImage.SetWidth(920).URL" class="top-img" />
        <% end_if %>
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
                <% include FieldNotes %>        
    </div><!-- end .container -->



