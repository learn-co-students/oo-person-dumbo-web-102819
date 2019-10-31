# your code goes here
class Person 
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene 
    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end 
    def rounds_to_between_inclusive(input, low, high)
        case 
        when input >= high
            10
        when input <= low 
            0
        else
            input
        end 
    end 

    def happiness=(new_happiness)
        @happiness = rounds_to_between_inclusive(new_happiness, 0, 10)
    end

    def hygiene=(new_hygiene)
        @hygiene = rounds_to_between_inclusive(new_hygiene, 0, 10)
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        @bank_account += salary 
        'all about the benjamins'
    end 

    def take_bath 
        self.hygiene += 4
        # self.hygiene = self.hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 
    def work_out 
        self.hygiene -= 3
        # self.hygiene = @hygiene - 3
        self.happiness += 2
        # self.happiness = @happiness + 2
        "♪ another one bites the dust ♫"
    end 

    def call_friend(friend_instance)
        self.increment_both_happiness(friend_instance, 3)
        "Hi #{friend_instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend_instance, topic)
        case topic
        when 'politics'
            self.increment_both_happiness(friend_instance, -2)
            'blah blah partisan blah lobbyist'
        when 'weather'
            self.increment_both_happiness(friend_instance, 1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end

    def increment_both_happiness(friend_instance, value)
        self.happiness += value 
        #self.happines = (self.happiness + value)
        # self.happiness = self.happiness + value 
        friend_instance.happiness += value 
        # friend_instance.happiness = friend_instance.happiness + value
    end 



end 