                <h2 class="events">Upcoming Events</h2>
            </div>
        </div>
        <div class="row-fluid" style="background: url({$ThemeDir}/images/linedpaper.png);border-top: 1px solid #e5e5e5;padding: 50px 0;">
            <div class="span5 offset1">
                <article>
                    <h3><a href="#">Blog Post Title</a></h3>
                    <h6>Written by <a href="#">John Smith</a> on August 12, 2012.</h6>
                    <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean lacinia bibendum nulla sed consectetur.</p>
                    <p><a href="#">Continue Reading</a></p>
                </article>
            </div>
            <div class="span5">
                <article>
                    <h3><a href="#">Blog Post Title</a></h3>
                    <h6>Written by <a href="#">John Smith</a> on August 12, 2012.</h6>
                    <p>Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                    <p><a href="#">Continue Reading</a></p>
                </article>
            </div>
        </div>
        <h2>$DateHeader</h2>
                <% if Events %>
                    <div id="event-calendar-events">
                      <% include EventList %>
                    </div>
                <% else %>
                      <p><% _t('NOEVENTS','There are no events') %>.</p>
                <% end_if %>
    </div><!-- end .container -->
