class Borrow < ActiveRecord::Base
  belongs_to :book_no
  belongs_to :member
  belongs_to :fine_type
end
