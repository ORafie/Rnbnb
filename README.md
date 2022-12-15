Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

  <% if @flats.empty? %>
    <h2>No flats found!</h2>
  <% else %>
    <div style="width: 100%; height: 600px; margin-top: 20px;"
    data-controller="map"
    data-map-markers-value="<%= @markers.to_json %>"
    data-map-api-key-value="<%= ENV['MAPBOX_API_KEY'] %>"></div>
  <% end %>
