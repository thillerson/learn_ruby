class Hello
  attr_accessor :name

  def initialize(name=nil)
    self.name = name
  end

  def message
    "hello".tap do |msg|
      msg << ", #{name}" unless name.nil?
    end
  end

end
