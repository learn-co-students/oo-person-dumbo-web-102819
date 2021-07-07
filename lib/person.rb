# your code goes here

class Person

    attr_reader :name, :happiness, :hygiene

    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end

    def happiness=(amount)
        @happiness = amount
        if @happiness > 10
            @happiness = 10 
        elsif @happiness < 0 
            @happiness = 0 
        end 
    end 

    def hygiene=(amount)
        @hygiene = amount 
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

def happy?
    if @happiness > 7
        return true
    else
     return false
    end
end

def clean?
    if @hygiene > 7
        return true
    else
        return false
    end
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
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
    end
end

def call_friend(friend)
    friend= Person.new
    self.happinesss +=3
    friend.happiness +=3
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(friend, topic)
    if topic == politics
        friend.happiness += 1
        self.happiness += 1
        return "blah blah sun  blah rain".
    elsif topic == weather
        friend.happiness -= 1
        self.happiness -= 1
        return "blah blah sun blah rain".
    else
        return "blah blah blah blah blah"
    end
end















