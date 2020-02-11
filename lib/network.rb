class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main_chars = []
    @shows.each do |show|
      show.characters.each do |character|
        main_chars << character if character.name == character.name.upcase && character.salary > 500_000
      end
    end
    main_chars
  end

  def actors_by_show
    all_actors = {}
    @shows.each do |show|
      all_actors[show] = show.actors
    end
    all_actors
  end
end
