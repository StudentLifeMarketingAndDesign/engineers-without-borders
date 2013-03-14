<div class="banner-container">
        <div class="banner banner-home"></div>
    </div>
    
    <div class="container main-content">
        <div class="title"><h1>$Title</h1></div>
        <img src="{$MainImage.SetWidth(920).URL}" class="top-img" alt="" />
        <div class="row-fluid">
            <div class="span10 offset1">
                <h2 class="text-center">Overview</h2>
                	$Content
            </div>
         </div>
        <br>
        <div class="row-fluid" style="background: url(themes/ewb/images/concrete_wall.jpg);padding: 50px 20px;color: #fff;">
            <div class="span10 offset1" >
                <h3 class="text-center">Project Committees</h3>
                <div class="row-fluid">
                                <% loop ChildrenOf(committees) %>
                    <div class="span3 text-center">
                        <h5><a href="#">$Title</a></h5>
                        <img src="{$MainImage.PaddedImage(202,202).URL}" alt="$Title" />
                    </div>
                 <% end_loop %>
                 </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span10 offset1">
                <br>
                <br>
                <h2 class="text-center">Community Info</h2>
                $Content2
                </div>
        </div>
        <div class="row-fluid">
            <div class="span12">
                <img src="{$ThemeDir}/images/landscape.jpg" alt="">
            </div>
        </div>
        <div class="row-fluid">
            <div class="span10 offset1">
                <br>
                <h2 class="text-center">5 Weeks In Ghana</h2>
                	$Content3
                <br>
                <h2 class="text-center">Photos</h2>
                
                <% loop GalleryImages %>
	                <% if $First %>
	                
		                <div class="row-fluid">
		                    <ul class="unstyled">
                    <% end_if %>
		                
		                        <li class="span3">
		                            <a href="$Image.URL">
                                        <img src="$Image.SetWidth(222).URL" alt="">
                                    </a>
		                        </li>
		                        
		                <% if $Last || $MultipleOf(4) %>
			                 </ul>
                        </div>

                        <br>
		                <div class="row-fluid">
                            <ul class="unstyled">
		                   
                    <% end_if %>
		                
                <% end_loop %>
            </div>
        </div>
        
        <% include FieldNotes %>
                
    </div><!-- end .container --> 
    
    <% include Footer %>
    
    <!-- Scripts -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="themes/ewb/javascript/vendor/jquery-1.8.0.min.js">\x3C/script>')</script>
    <script src="{$ThemeDir}/javascript/plugins-ck.js"></script>
    <script src="{$ThemeDir}/javascript/main-ck.js"></script>

