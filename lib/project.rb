class Project
  attr_reader :title
  # @@all = []
  def initialize(title)
    @title = title
    # @@all << self
  end

  def backers
    ProjectBacker.all
    .select{|backer| backer.project == self}
    .map{ |backer| backer.backer}
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end
end