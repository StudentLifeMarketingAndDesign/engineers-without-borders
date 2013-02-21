<div class="banner-container">
        <div class="banner banner-home">
            <span></span>
        </div>
    </div>
    
    <div class="container main-content">
        <div class="title"><h1>$Title</h1></div>
        <img src="{$MainImage.SetWidth(920).URL}" class="top-img" />
        <div class="row-fluid">
            <div class="span10 offset1">
                <h2 class="text-center">Overview</h2>
                <img src="themes/ewb/images/hr.png">
                	$Content
            </div>
         </div>
        <br>
        <div class="row-fluid" style="background: url(themes/ewb/images/concrete_wall.jpg);padding: 50px 20px;color: #fff;">
            <div class="span10 offset1" >
                <h3 class="text-center">Project Committees</h3>
                <div class="row-fluid">
                    <div class="span3 text-center">
                        <h5>Water</h5>
                        <img src="http://placehold.it/202x202&amp;text=[img]" style="border-radius: 80px;">
                    </div>
                    <div class="span3 text-center">
                        <h5>Sanitation</h5>
                        <img src="http://placehold.it/202x202&amp;text=[img]" style="border-radius: 80px;" >
                    </div>
                    <div class="span3 text-center">
                        <h5>Health</h5>
                        <img src="http://placehold.it/202x202&amp;text=[img]" style="border-radius: 80px;">
                    </div>
                    <div class="span3 text-center">
                        <h5>Energy</h5>
                        <img src="http://placehold.it/202x202&amp;text=[img]" style="border-radius: 80px;">
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span10 offset1">
                <br>
                <br>
                <h2 class="text-center">Community Info</h2>
                <img src="{$ThemeDir}/images/hr.png">
                $Content2
                </div>
        </div>
        <div class="row-fluid">
            <div class="span12">
                <img src="{$ThemeDir}/images/landscape.jpg">
            </div>
        </div>
        <div class="row-fluid">
            <div class="span10 offset1">
                <br>
                <h2 class="text-center">5 Weeks In Ghana</h2>
                <img src="{$ThemeDir}/images/hr.png">
                	$Content3
                <br>
                <h2 class="text-center">Photos</h2>
                <img src="{$ThemeDir}/images/hr.png">
                
                <% loop GalleryImages %>
	                <% if $First %>
	                
		                <div class="row-fluid">
		                    <ul class="unstyled">
		                <% end_if %>
		                
		                        <li class="span3">
		                            <img src="$Image.SetWidth(222).URL">
		                        </li>
		                        
		                <% if $Last || $MultipleOf(4) %>
			                    </ul>
			                </div>
			             
			                <br>
			                <div class="row-fluid">
		                    <ul class="unstyled">
		                   
		                <% end_if %>
		                
                <% end_loop %>
                
                
               <% include FieldNotes %>
    </div><!-- end .container --> 
