# Topics
3.times do |topic|
  Topic.find_or_create_by!(title: "Topic #{topic}")
end
puts "3 topics created"

# Blogs
10.times do |blog|
  Blog.find_or_create_by!(
    title: "My Blog Post #{blog}",
    body: "Lorem Ipsum ...",
    topic_id: Topic.last.id
  )
end
puts "10 blog posts created"

# Skills
5.times do |skill|
  Skill.find_or_create_by!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end
puts "5 skills created"

# Portfolios
8.times do |portfolio_item|
  Portfolio.find_or_create_by!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Lorem Ipsum ...",
    main_image: "https://placehold.co/400x150",
    thumb_image: "https://placehold.co/400x150"
  )
end

Portfolio.find_or_create_by!(
  title: "Portfolio title: Angular",
  subtitle: "Angular",
  body: "Lorem Ipsum ...",
  main_image: "https://placehold.co/400x150",
  thumb_image: "https://placehold.co/400x150"
)
puts "9 portfolios created"

# Technologies
3.times do |technology|
  Technology.find_or_create_by!(
    name: "Technology #{technology}",
    portfolio: Portfolio.last
  )
end
puts "3 technologies created"
