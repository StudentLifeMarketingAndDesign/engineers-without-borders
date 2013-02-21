 <div class="banner-container">
        <div class="banner banner-home">
            <span></span>
        </div> 
    </div>
    
    <div class="container main-content">
        <img src="{$MainImage.SetWidth(920).URL}" class="top-img" />
        <div class="row-fluid">
            <div class="span10 offset1">
                <br>
                <p class="lead">$MissionStatement</p>
            </div>
        </div>
        <div class="row-fluid" style="background: #f4f4f4;border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;padding: 30px 0;margin-top: 50px;margin-bottom: 80px;">
            <div class="span10 offset1">
                <h3>$MainFeatureTitle</h3>
                <img src="{$MainFeatureImage.SetWidth("300").URL}" class="right" />
                $MainFeatureContent
            </div>
        </div>
        <div class="row-fluid">
            <div class="span10 offset1"
                <br>
                <div class="row-fluid">
                    <div class="span3 text-center">
                        <h5><a href="#">Water</a></h5>
                        <img src="http://placehold.it/175x175&amp;text=[img]" style="border-radius: 90px;" />
                        <p class="text-small">Cras justo odio dapibus ac facilisis in egestas eget.</p>
                    </div>
                    <div class="span3 text-center">
                        <h5><a href="#">Sanitation</a></h5>
                        <img src="http://placehold.it/175x175&amp;text=[img]" style="border-radius: 90px;" />
                        <p class="text-small">Cras justo odio dapibus ac facilisis in egestas eget.</p>
                    </div>
                    <div class="span3 text-center">
                        <h5><a href="#">Energy</a></h5>
                        <img src="http://placehold.it/175x175&amp;text=[img]" style="border-radius: 90px;" />
                        <p class="text-small">Cras justo odio dapibus ac facilisis in egestas eget.</p>
                    </div>
                    <div class="span3 text-center">
                        <h5><a href="#">Health</a></h5>
                        <img src="http://placehold.it/175x175&amp;text=[img]" style="border-radius: 90px;" />
                        <p class="text-small">Cras justo odio dapibus ac facilisis in egestas eget.</p>
                    </div>
                </div>
                <% include FieldNotes %>
                
             </div><!-- end .container -->
