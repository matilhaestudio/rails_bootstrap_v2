tags = []

tags << Tag.create(name: "rails")
tags << Tag.create(name: "html")
tags << Tag.create(name: "javascript")
tags << Tag.create(name: "php")
tags << Tag.create(name: "ruby")
tags << Tag.create(name: "python")
tags << Tag.create(name: "css")
tags << Tag.create(name: "sass")
tags << Tag.create(name: "angular")
tags << Tag.create(name: "react")
tags << Tag.create(name: "c#")
tags << Tag.create(name: ".net")

(0..10000).each do |i|
	sample_tags = []
	(1..rand(1..12)).each do |tag|
		sample_tags << tags.sample.id
	end

	Candidate.create( name: Faker::Name.name, tag_ids: sample_tags )
end


sample_tags = []
(1..rand(10..12)).each do |tag|
	sample_tags << tags.sample.id
end

Job.create( name: Faker::Company.profession , tag_ids: sample_tags )