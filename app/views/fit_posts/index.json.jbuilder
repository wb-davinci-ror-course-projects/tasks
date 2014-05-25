json.array!(@fit_posts) do |fit_post|
  json.extract! fit_post, :id, :date, :weight, :focus, :breakfast, :brk_cals, :lunch, :lunch_cals, :dinner, :dinner_cals, :snacks, :snacks, :water_extract_64oz, :exercise, :accomplishment, :model_day, :energy, :notes
  json.url fit_post_url(fit_post, format: :json)
end
