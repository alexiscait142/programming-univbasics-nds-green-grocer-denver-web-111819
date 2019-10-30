require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  index = 0 
  while index < collection.length do 
    hash = collection[index]
    if name == hash[:item]
      return hash
    end
    index += 1
  end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  array = []
  i = 0 
  while i < cart.length do 
    item_name = find_item_by_name_in_collection(cart[i][:item], array)
    if item_name
      item_name[:count] += 1
    else array << 
    end
    # item_name = cart[i][:item]
    # item_data = cart[i]
    # item_data[:count] = 1
    # if !array.include?(item_name)
    #   array << item_data
    # else array[item_name][:count] += 1
    # end
    i += 1
  end
  array
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
