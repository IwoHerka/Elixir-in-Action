defmodule TodoList do
  defstruct auto_id: 1, entries: %{}

  @doc """
  ### Examples
  
      iex> TodoList.new() |> TodoList.add_entry(~D[2023-03-31], "Dentist")
      %{~D[2023-03-31] => ["Dentist"]}
  """
  def add_entry(todo_list, entry) do
    entry = Map.put(entry, :id, todo_list.auto_id)

    new_entries = Map.put(
      todo_list.entries,
      todo_list.auto_id,
      entry
    )

    %TodoList{todo_list |
      entries: new_entries,
      auto_id: todo_list.auto_id + 1
    }
  end

  def entries(todo_list, date) do
    todo_list.entries
    |> Enum.filter(fn {_, entry} -> entry.date == date end)
    |> Enum.map(fn {_, entry} -> entry end)
  end

  @doc """
      iex> todo_list = %TodoList{}
        |> TodoList.add_entry(%{date: ~D[2018-12-19], title: "Go to a lecture"})
        |> TodoList.add_entry(%{date: ~D[2018-12-20], title: "Go to a dentist"})
        |> TodoList.add_entry(%{date: ~D[2018-12-21], title: "Go to a gym"})
      iex> TodoList.update_entry(todo_list, 2, fn entry -> Map.put(entry, :title, "Go to a chiropractor"))
      %TodoList{
        auto_id: 4,
        entries: %{
          1 => %{date: ~D[2018-12-19], id: 1, title: "Go to a lecture"},
          2 => %{date: ~D[2018-12-20], id: 2, title: "Go to a dentist"},
          3 => %{date: ~D[2018-12-21], id: 3, title: "Go to a gym"}
        }
      }
  """
  def update_entry(todo_list, 1, update_fn) do
      # TODO: implement this
  end
end
