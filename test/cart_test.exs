defmodule CartTest do
  use ExUnit.Case

  # Example cart:
  # cart = %{contents: [:item, :item2]}
  # cart.contents = [:item1, :item2]

  test "on empty cart is empty" do
    empty_cart = %{}
    assert empty_cart == %{}
  end 

  test "adds an item to a cart" do
    empty_cart = %{}
    cart = Cart.handle({:item_added, :my_item})
    assert cart.contents == [:my_item]
    # TODO: make a function and pass in a tuple. 
  end


  # test "greets the world" do
  #   assert Cart.hello() == :world
  # end
  
end
