puts "🌱 Seeding data..."

10.times do
    actor = Actor.create(
        first_name: Faker::Actor.first_name,
        last_name: Faker::Actor.last_name,
    )

    network = Network.create(
        call_letters: Faker::Network.call_letters,
        channel: Faker::Network.channel
    )
    rand(1..3).times do
        show = Show.create(
            name: Faker::Show.name,
            day: Faker::Show.day,
            season: Faker::Show.season,
            genre: Faker::Show.genre,
            network_id: network.id
        )
    end

    rand(1..3).times do
        Character.create(
            name: Faker::Character.name,
            actor_id: actor.id,
            show_id: show.id,
            comment: Faker::Lorem.sentence,
            )
    end
end

puts "🌱 Done seeding!"