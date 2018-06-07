class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end
end


o = Greeting.new("Hello")
p o.class
p o.class.instance_methods(false) # 自分に定義されたインスタンスメソッドの一覧だけ。継承したものは不要
p o.class.instance_methods()
p o.class.instance_methods(true)

p o.instance_variables
