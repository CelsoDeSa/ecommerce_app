$('#produtos').append('<%= j render("listadeprodutos") %>');
<% if @produtos.next_page %>
  $('.pagination').replaceWith('<%= j will_paginate(@produtos) %>');
<% else %>
  $('.pagination').remove();
<% end %>
