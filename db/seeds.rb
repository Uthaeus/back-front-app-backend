6.times do |meetup|
    Meetup.create(
        title: "Meetup #{meetup}",
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        time: "2020-10-#{meetup + 1} 00:00:00",
        image: File.open(Rails.root.join('public', 'images', 'winter_is_coming.jpg')),
        location: "123 Main St. Anywhere, USA"
    )
end

puts "6 Meetups Seeded"
