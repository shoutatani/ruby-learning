C_0 = "zero"
module TestModule
  C_1 = "a"
  class TestClass
    C_2 = "b"
  end
end

p TestModule.constants # そのスコープにある全ての定数を返す。
p Module.constants # 現在のプログラムのトップレベル定数を返す。そこにはクラス名も含まれる。
p Module.constants.include?(:C_0)
p Module.constants.include?(:TestModule)
p Module.constants.include?(:TestClass)
