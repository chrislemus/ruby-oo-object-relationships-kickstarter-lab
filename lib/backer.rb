class Backer
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    ProjectBacker.all
    .select{ |backer| backer.backer == self }
    .map{ |backer| backer.project }
  end

  def backed_projects
    ProjectBacker.all
    .select {|backer| backer.backer == self}
    .map {|project| project.project}
  end
end