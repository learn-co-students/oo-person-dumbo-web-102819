
class Person

    attr_reader :name, :topic, :happiness
    attr_accessor :bank_account, :hygiene
    
    def initialize (name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        #binding.pry
        
    end #for ini
    
     def happiness=(points)
        
        if points > 10
            points = 10
        elsif points < 0
             points = 0
        end 
        @happiness = points
    end 
    
    def hygiene=(points)
        
        if points > 10
            points = 10
        elsif points < 0
             points = 0
        end 
        @hygiene = points
    end 
    

    
    
    def get_paid(salary)
        @bank_account += salary
        p "all about the benjamins" 
        
    end # for get_paid

    

    
    
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    
    end #for take_bath

    
    
    def clean?
        if self.hygiene > 7
            true 
        else 
            false 

        end #if 
    end 
    
    
    
    def happy?
        if self.happiness > 7
            true 
        else 
            false 

        end #if 
    end #happy

   
    def work_out
        self.hygiene -= 3
        self.happiness += 2
       "♪ another one bites the dust ♫"
    end #work

    
    def call_friend (friend = Person.new )
        
    
         self.happiness += 3
         friend.happiness +=3

        "Hi #{friend.name}! It's #{self.name}. How are you?"
    
    end #call

    def start_conversation (person = Person.new, topic)
         @topic = topic
        if @topic == "politics"
         self.happiness -=2
         person.happiness -=2
        "blah blah partisan blah lobbyist"
       
        elsif @topic == "weather"
         self.happiness +=1
         person.happiness +=1
        "blah blah sun blah rain"
       
        else 
        "blah blah blah blah blah"
       end 
    
    end #start

   
end
