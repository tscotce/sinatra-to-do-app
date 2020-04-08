<h2>Tasks:</h2>
  <div class = "container">
      <% Task.all.each_with_index do |e, i| %>
      <h3><%= i.next %>: <%= e.title  %></h3>
      <h4>Due Date: </h4><p><%= e.due_date %></p>
      <h4>Notes: </h4><p><%= e.content %></p>
      <form align="left" name="edit_task_form" method="get" action="/tasks/<%= @task.id %>/edit">
        <label class="button">
          <input name="edit_task" type="submit" id="edit_task" value="Edit This Task">
      </label>
      </form>
      <form method="POST" action="/tasks/<%= @task.id %>/delete">
        <input id="hidden" type="hidden" name="_method" value="delete">
        <input type="submit" value="Delete This Task">
      </form>
      <br>
      <% end %>
  </div>