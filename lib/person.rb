# your code goes here
require 'pry'
class Person
    attr_reader :name
    attr_writer 
    attr_accessor :bank_account, :happiness, :hygiene

    @@all= []
        
    def initialize(name)
        @name = name
        name_hash = {}
        @happiness = 8
        @bank_account = 25
        @hygiene = 8
    end

    def self.all
        @@all
    end

    def happiness
        if @happiness < 0; @happiness = 0
        elsif  @happiness > 10 ;@happiness = 10
        else   @happiness
        end
        
        
        
    end
    def hygiene
        if @hygiene < 0; @hygiene = 0
        elsif  @hygiene > 10 ;@hygiene = 10
        else   @hygiene
        end
    end

    def happy?
        @happiness > 7 ? true : false
    
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"

    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(listener,topic)
        if topic == "politics"
            self.happiness -= 2
            listener.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif 
            topic == "weather"
            self.happiness += 1
            listener.happiness += 1
            "blah blah sun blah rain"
        elsif 
            topic == "programming"
            "blah blah blah blah blah"
        end
    end




end

