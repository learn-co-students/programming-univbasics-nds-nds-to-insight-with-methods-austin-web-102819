require 'directors_database'
require 'nds'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_index = 0
  totals = {}

  while director_index < nds.length do
    director_name = nds[director_index][:name]
    totals[director_name] = 0
    movie_index = 0

    while movie_index < nds[director_index][:movies].length do
      totals[director_name] += gross_for_director(director_data)
      movie_index += 1
    end

    director_index += 1
  end

  totals
end
  
  


# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  sub_total = 0 
  x = 0 
  while x < director_data.length
  sub_total += nds[director_index][:movies][movie_index][:worldwide_gross]
      x += 1 
  end
  return sub_total
end



  