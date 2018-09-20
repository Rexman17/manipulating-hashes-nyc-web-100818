require 'pry' # u can only access what's above pry

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
# binding.pry
#   #your code here
#   contacts.each do |person, data|
#
#     data.each do |attribute, value|
#
#       if attribute == :favorite_icecream_flavors
#         value.delete_if {|x| x == "strawberry"}
#       end
#     end
#   end

# go directly to the hash w the key of Freddy Mercury since u don't need Jon Snow - starts iteration from Freddy Mercury

  # contacts["Freddy Mercury"].each do |attribute, value|
  #   if attribute == :favorite_icecream_flavors
  #     value.delete_if {|x| x == "strawberry"}
  #   end
  # end

# most specific
  contacts["Freddy Mercury"][:favorite_icecream_flavors].delete_if {|x| x == "strawberry"}

  #remember to return your newly altered contacts hash!
  contacts
end
