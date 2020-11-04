# frozen_string_literal: true

3.times do |t|
  Topic.create!(
    title: "Topic #{t}"
  )
end
puts 'Topics created'

10.times do |post|
  Blog.create!(
    title: "This is the title #{post}",
    body: "  Dragée ice cream sweet cake jelly-o ice cream pie fruitcake.
     Powder sweet roll sugar plum liquorice danish chocolate cake. Ice cream tootsie roll
     sugar plum sesame snaps. Tootsie roll lollipop chocolate bar chocolate cake cake
      cake chupa chups biscuit. Candy canes jelly beans pudding tart powder. Candy canes sweet roll tart ",
    topic: Topic.last
  )
end

puts 'Blogs created'

5.times do |skill|
  Skill.create!(
    name: "Rails #{skill}",
    percentage_completed: 50
  )
end

puts 'Skills created'

8.times do |p|
  Recentwork.create!(
    title: "Portfolio #{p}",
    subtitle: 'Html and CSS',
    body: 'Caramels dragée tart pie. Halvah donut marshmallow muffin pie tootsie roll oat cake. Jelly beans wafer topping. Cheesecake gummies biscuit biscuit sweet. Wafer topping cupcake danish tiramisu macaroon carrot cake caramels. Pudding brownie jujubes chocolate donut cookie jelly beans oat cake. Fruitcake fruitcake chocolate cake dessert jelly-o biscuit. Marzipan sweet lemon drops candy canes wafer croissant cookie tiramisu. Halvah gummies candy canes marshmallow tart cupcake caramels. Gummies cotton candy cupcake powder jelly beans brownie dragée chocolate candy. Cupcake gummi bears pastry sesame snaps. Jelly beans macaroon fruitcake cookie. Sweet dessert danish sugar plum tootsie roll.',
    main_image: 'https://via.placeholder.com/600x400',
    thumb_image: 'https://via.placeholder.com/350x350'
  )
end

Recentwork.create!(
  title: 'Portfolio 1',
  subtitle: 'Ruby on Rails',
  body: 'Caramels dragée tart pie. Halvah donut marshmallow muffin pie tootsie roll oat cake. Jelly beans wafer topping. Cheesecake gummies biscuit biscuit sweet. Wafer topping cupcake danish tiramisu macaroon carrot cake caramels. Pudding brownie jujubes chocolate donut cookie jelly beans oat cake. Fruitcake fruitcake chocolate cake dessert jelly-o biscuit. Marzipan sweet lemon drops candy canes wafer croissant cookie tiramisu. Halvah gummies candy canes marshmallow tart cupcake caramels. Gummies cotton candy cupcake powder jelly beans brownie dragée chocolate candy. Cupcake gummi bears pastry sesame snaps. Jelly beans macaroon fruitcake cookie. Sweet dessert danish sugar plum tootsie roll.',
  main_image: 'https://via.placeholder.com/600x400',
  thumb_image: 'https://via.placeholder.com/350x350'
)
puts 'Recentwork created successfully'
3.times do |t|
  Recentwork.last.technologies.create!(
    name: "Technology #{t}"
  )
end
puts 'Technologies created successfully'
