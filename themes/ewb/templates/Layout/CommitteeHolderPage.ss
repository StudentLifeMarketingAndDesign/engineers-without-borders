<div class="banner-container">
        <div class="banner banner-home">
        </div>
    </div>

    <div class="container main-content">
        <div class="title"><h1>Committees</h1></div>
        <% if MainImage %>
        	<img src="$MainImage.SetWidth(920).URL" class="top-img" alt="" />
        <% end_if %>
        <br>
        <div class="row-fluid">
            <div class="span10 offset1">
                <ul class="nav-tabs four-up" id="myTab">
                
                	<% control Children %>
                    	<li <% if First %>class="active"<% end_if %>><a href="#{$URLSegment}">$Title</a></li>
                    <% end_control %>
                    
                </ul>
                <div class="tab-content">
                
                <% loop Children %>
                    <div class="tab-pane <% if First %>active in <% end_if %>fade" id="{$URLSegment}">
                        <br>
                        <br>
                        <% if MainImage %>
                            <img src="$MainImage.SetWidth(253).URL" class="left">
                        <% end_if %>
                        $Content
                        <br>
                        <div style="clear:both;"></div>
                        <% if Profiles %>
                        <!--<h4 style="clear:both;">Team Members</h4>
                        <ul class="unstyled row-fluid">
                        
                        	<% loop Profiles %>
                            <li class="span{$BootstrapGrid($TotalItems)}">
                            	<% if Photo %>
                                <img src="$Photo.SetRatioSize(100,100).URL" style="border-radius: 50px;">
                                <% end_if %>
                                <p>$FirstName $LastName</p>
                            </li>
                            <% end_loop %>
                        </ul>-->
                        <% end_if %>
                    </div>
                    <% end_loop %>
                </div>
            </div>
        </div>

        <% include FieldNotes %>
        
    </div><!-- end .container -->

