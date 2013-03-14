 <div class="banner-container">
        <div class="banner banner-home">
            <span></span>
        </div>
    </div>

    <div class="container main-content">
        <div class="title"><h1>About Us</h1></div>
        <img src="{$MainImage.SetWidth(970).URL}" class="top-img" alt="" />
        <div class="row-fluid">
            <div class="span10 offset1">
	            $Content
                <br>
                <div class="clearfix">
                    <h2 class="text-center">$MainFeatureTitle</h2>
                    <img src="{$MainFeatureImage.SetWidth(300).URL}" class="right" alt="$MainFeatureImage.Title" />
                    	$MainFeatureContent
                    </div>
                <br>
                <h2 class="text-center">Current Members $Now.Year</h2>
                <br>
                
                <% loop Profiles %>    
	                <% if $Odd %>
	                <div class="row-fluid">
	                <% end_if %>
	                
	                    <div class="span6">
	                        <% if Photo %><div class="staff-img"><img src="$Photo.SetWidth(180).URL" class="member-img left" alt="$FirstName $LastName" /></div><% end_if %>
	                        <p><strong>$FirstName $LastName</strong><br><small>$Position</small></p>
	                        $Bio
	                    </div>
	                   
	                   
	                    <% if $Even || $Last %>
			                </div>
			                <hr>
			            <% end_if %>
			            
			      <% end_loop %>
			      	
                <div class="row-fluid">
                	$PastMembers
                </div><!-- end .row -->
            </div>
        </div>

        <% include FieldNotes %>
        
    </div><!-- end .container -->
           