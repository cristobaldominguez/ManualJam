# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: 'Cristobal', email: 'nada@nada.com', password: '123123')

stories = [
    {title: 'Espacio Sideral', picture: '/images/01.jpg', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'},
    {title: 'Star Dust', picture: '/images/02.jpg', content: 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.'},
    {title: 'Life is a Highway', picture: '/images/03.jpg', content: 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.'},
    {title: 'Go Sunset', picture: '/images/04.jpg', content: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'},
    {title: 'Welcome to the jungle', picture: '/images/05.jpg', content: 'Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.'},
    {title: 'Humor del día', picture: '/images/06.jpg', content: 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance.'},
]

stories.each do |story|
    s = user.stories.create(
                    title: story[:title], 
                    picture: story[:picture], 
                    content: story[:content]
    )

   puts "Se ha creado la story: #{s.title}"
end