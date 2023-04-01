defmodule Scratch do
  def example_1 do
    todo_list = %TodoList{}
      |> TodoList.add_entry(%{date: ~D[2018-12-19], title: "Go to a lecture"})
      |> TodoList.add_entry(%{date: ~D[2018-12-20], title: "Go to a dentist"})
      |> TodoList.add_entry(%{date: ~D[2018-12-21], title: "Go to a gym"})
  end
end
