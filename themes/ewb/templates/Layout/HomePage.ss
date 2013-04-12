    <div class="banner-container">
        <div class="banner banner-home"></div> 
    </div>
    
    <div class="container main-content">
        <img src="{$MainImage.SetWidth(920).URL}" class="top-img" alt="" />
        <div class="row-fluid">
            <div class="span10 offset1">
                <br>
                <p class="lead text-center">$MissionStatement</p>
                <p class="text-center"><a href="{$ThemeDir}/images/EBW_Spring_2013_FINAL.pdf" target="_blank">&rarr; Download our newsletter</a></p>
            </div>
        </div>
        <div class="row-fluid" style="background: #f4f4f4;border-top: 1px solid #ddd;border-bottom: 1px solid #ddd;padding: 30px 0;margin-top: 50px;margin-bottom: 80px;">
            <div class="span10 offset1">
                <h3>$MainFeatureTitle</h3>
                <img src="{$MainFeatureImage.SetWidth("300").URL}" class="right" alt="$MainFeatureImage.Title" />
                $MainFeatureContent
            </div>
        </div>
        <div class="row-fluid">
            <div class="span10 offset1">
                <h3 class="text-center">Project Committees</h3>
                <div class="row-fluid">
                    <div class="span3 committee-item">
                        <a href="/committees">
                            <img src="{$ThemeDir}/images/committee_water.png" />
                            <h5>Water</h5>
                        </a>
                        
                    </div>
                    <div class="span3 committee-item">
                        <a href="/committees">
                            <img src="{$ThemeDir}/images/committee_sanitation.png" />
                            <h5>Sanitation</h5>
                        </a>
                        
                    </div>
                    <div class="span3 committee-item">
                        <a href="/committees">
                            <img src="{$ThemeDir}/images/committee_energy.png" />
                            <h5>Energy</h5>
                        </a>
                        
                    </div>
                    <div class="span3 committee-item">
                        <a href="/committees">
                            <img src="{$ThemeDir}/images/committee_health.png" />
                           <h5>Health</h5> 
                        </a>
                        
                    </div>
                </div>
                <!-- <div class="row-fluid">
                    <% loop ChildrenOf(committees) %>
                        <div class="span3 text-center">
                            <h5><a href="#">$Title</a></h5>
                            <img src="{$MainImage.PaddedImage(175,175).URL}" alt="$Title" />
                            <p class="text-small">Cras justo odio dapibus ac facilisis in egestas eget.</p>
                        </div>
                     <% end_loop %>
                </div> -->
            </div>
        </div>
                
        <% include FieldNotes %>
    </div><!-- end .container -->

    <% include Footer %>