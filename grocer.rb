require 'pry'

def find_item_by_name_in_collection(name, collection)
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
  array = []
  i = 0 
  while i < cart.length do 
    item_name = find_item_by_name_in_collection(cart[i][:item], array)
    if item_name
      item_name[:count] += 1
    else item_name = {
      :item => cart[i][:item],
      :price => cart[i][:price],
      :clearance => cart[i][:clearance],
      :count => 1
    }
    array << item_name
    end
    i += 1
  end
  array
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  i = 0 
  while i < coupons.length do
    item_name = find_item_by_name_in_collection(coupons[i][:item], cart)
    coupon_item = "#{coupon[i][:item]} W/COUPON"
    cart_with_coupon = find_item_by_name_in_collection(coupon_item, cart)
    if item_name && item_name[:count] >= coupons[i][:num]
      cart
      
      
      
      
    end
    i += 1
  end
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
