json.array!(@borrows) do |borrow|
  json.extract! borrow, :id, :issue_dete, :returune_dete, :book_no_id, :member_id, :fine_type_id
  json.url borrow_url(borrow, format: :json)
end
