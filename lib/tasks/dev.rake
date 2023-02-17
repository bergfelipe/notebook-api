namespace :dev do
  desc "Configura o ambiente de desenvolvimento "
  task setup: :environment do
    p "Cadastrando contatos"
    100.times do |i|
      Contact.create!(
        name: Faker::Fantasy::Tolkien.character,
        email: Faker::Internet.email,
        birthdate: Faker::Date.between(from: 65.days.ago, to: Date.today)
      )
  end
  p "Contatos cadastrados com sucesso"
end

end
