10.times do |i|
  Blog.create(
    title: "Blog title #{i + 1}",
    content: "Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} Blog content #{i + 1} "
  )
end

5.times do |i|
  Task.create(
    title: "Task title #{i + 1}"
  )
end