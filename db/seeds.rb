class Seed
  def initialize
    p "=============================="
    p "Seeding started"
    p "=============================="
    generate_categories
    generate_tags
    p "=============================="
    p "Seed data loaded"
    p "=============================="
  end

  def category_names
    ["Elvis", "Bigfoot", "UFO", "Ghost", "Tupac"]
  end

  def tag_data
    { 1=>["elvissighting",
          "elvisisalive",
          "elvislives",
          "elvispresleylives",
          "elvisalive",
          "foundelvis"],
      2=>["bigfootsighting",
          "bigfootisreal",
          "bigfootfound",
          "foundbigfoot",
          "squatchsighting",
          "squatchin"],
      3=>["ufosighting",
          "realufo",
          "ufofound",
          "ufo",
          "ufos",
          "flyingsaucer"],
      4=>["ghost",
          "ghostsighting",
          "ghosthunter",
          "hauntedhouse",
          "haunted",
          "hauntedghost",
          "paranormalactivity",
          "aliensighting"],
      5=>["tupaclives",
          "tupacisalive",
          "foundtupac",
          "tupacalive"] }
  end

  def generate_categories
    category_names.each do |name|
      category = Category.create(name: name)
      puts "Category #{category.name} was created!"
    end
  end

  def generate_tags
    tag_data.each do |category_id, tags|
      tags.each do |tag|
        Tag.create(hashtag: tag, category_id: category_id)
        puts "Tag #{tag} create, with category_id: #{category_id}"
      end
    end
  end
end

Seed.new
