defmodule Cart do

  def handle(cart, {:item_added, item}) do #only use this function if item_added is passed in as the first argument, can't do this in any other language
    cart = %{contents: [item | Map.get(cart, :contents, [])]}
  end

  def handle(cart, {:item_removed, item}) do
    cart = %{contents: Map.get(cart, :contents) |> List.delete(item)}
  end

  def handle(cart, {:total}) do
    total = Map.get(cart, :contents) |> Enum.count
  end

  def handle(cart, {:item_count, item}) do
    Enum.filter(Map.get(cart, :contents), item)
  end

end
