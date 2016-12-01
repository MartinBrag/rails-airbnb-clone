<% avatar_url = current_user.facebook_picture_url || "http://placehold.it/30x30" %>
<%= image_tag avatar_url, class: "avatar dropdown-toggle", id: "navbar-wagon-menu", "data-toggle" => "dropdown" %>

