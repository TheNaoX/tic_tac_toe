module Game
  @@games = {}

  class << self
    def store(session)
      @@games.merge!(session => Game::Environment.new)
    end

    def get_instance(session)
      @@games[session]
    end
  end
end
