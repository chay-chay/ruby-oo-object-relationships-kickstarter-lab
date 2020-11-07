class Project 
    attr_accessor :title
    @@all = [] 
    def initialize(title)
        @title = title
        @@all << self
    end
    def self.all
        @@all
    end
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_backers = ProjectBacker.all.select do |pb| 
          pb.project == self
        end
        project_backers.map do |pb|
          pb.backer
        end
      end
    # def backers
    #     ProjectBacker.all.select{|a|a.project == self}
        
    # end
    # def project_backers
    #     backers.map{|a|a.project}
    #end
end