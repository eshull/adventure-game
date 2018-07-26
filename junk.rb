<% if list.entry.include?('!!') %>
  <i><%= list.entry %></i><br>
<% else %>
  <%= list.entry %><br>
<% end %>
