require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find do |element|
    element[:item] == name
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  organized_cart = []
  cart.each do |element|
    if find_item_by_name_in_collection(element[:item],organized_cart) == nil 
      organized_cart << element
      element[:count] = 1
    else
      element[:count] += 1
    end
  end
  organized_cart
end


  