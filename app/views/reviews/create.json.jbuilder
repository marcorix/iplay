if @review.persisted?
  json.inserted_item render(partial: 'reviews/review', formats: :html, locals: {review: @review})
else
  json.form render(partial: 'reviews/form', formats: :html, locals: {instrument: @instrument, review: @review})
end
