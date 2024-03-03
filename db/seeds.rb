10.times do |i|
  Blog.create(
    title: "Blog title #{i + 1}",
    content: "Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} "
  )
end
