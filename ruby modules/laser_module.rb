module LaserModule
    module Console
        class Information
            attr_reader :name
            def initialize(name)
                @name = name
            end
        end
    end
    module World
        class Player
            attr_reader :name
            def initialize(name)
                @name = name
            end
        end
    end
end

player = LaserModule::World::Player.new("Naredner")

puts player.name
