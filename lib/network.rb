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
    @shows.each { |show| all_actors[show] = show.actors }
    all_actors
  end

  def shows_by_actor
    actor_shows = {}
    all_actors = []
    @shows.each do |show|
      show.actors.each { |actor| all_actors << actor }
    end
    all_actors.each do |actor|
      actor_shows[actor] = @shows.select { |show| show.actors.include?(actor) }
    end
    actor_shows
  end

  def prolific_actors
    prolifics = []
    shows_by_actor.each { |actor, shows| prolifics << actor if shows.size > 1}
    prolifics
  end
end
