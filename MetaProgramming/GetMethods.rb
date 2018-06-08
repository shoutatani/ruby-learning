class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end

  def Greeting.pow
    "x"
  end

end

o = Greeting.new('Hello')
p o.class
p o.class.instance_methods(false) # 自分に定義されたインスタンスメソッドの一覧だけ。継承したものは表示しない。
p o.class.instance_methods  # 継承したインスタンスメソッドも表示
p o.class.instance_methods(true) # 継承したインスタンスメソッドも表示

p o.instance_variables # この時点までにセットされたインスタンス変数を表示
p o.methods # 継承しているものも含めたメソッドの一覧を取得できる。publicかprotectedなものだけ。親クラス・インクルードしているモジュールのメソッドも含まれる。。
# p o.class.methods(false) # 特異メソッドだけ。
