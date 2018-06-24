# 特異メソッド・・・特定のオブジェクトだけに紐づくメソッド
class SingletonMethod
  def hello
    "hello!"
  end
end

s1 = SingletonMethod.new
s2 = SingletonMethod.new

def s1.hello2
  "hello2!"
end

p s1.hello
p s1.hello2 # s1だけに紐づくメソッド

p s2.hello
#p s2.hello2 # s1だけに紐づくメソッド

# クラスメソッド・・・特定のクラス(というオブジェクト)に定義するメソッド
def SingletonMethod.hello6
  "hello6!"
end
class << SingletonMethod
  def hello3
    "hello3!"
  end
end

class SingletonMethod2 < SingletonMethod
  class << self
    def hello4
      "hello4!"
    end
  end

  def self.hello5
    "hello5!"
  end
end

p SingletonMethod.hello3
p SingletonMethod.hello6
p SingletonMethod2.hello4
p SingletonMethod2.hello5
p SingletonMethod2.hello3 # 継承元のクラスメソッドも使える
p SingletonMethod2.hello6 # 継承元のクラスメソッドも使える