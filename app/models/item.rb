class Item < ApplicationRecord
    
      validates_presence_of   :title, :message => 'Please Enter something.'
   validates :title , length: { minimum: 2 }
end
