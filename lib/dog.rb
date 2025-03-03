class Dog
    attr_reader :name
    @@all = []
    
    def initialize(name)
        @name = name
        save
    end
    
    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        puts @@all.map {|dog| dog.name}
        # @@all.each {|dog| puts "#{dog.name}"}
        # @@all.each do |dog|
        #     puts dog.name
        # end
    end

    def save
        @@all << self
    end
end