class Test
  def set_instance_variable
    @x = 1
  end
end

test = Test.new
p test.instance_variables # インスタンス変数は、値が代入された時に初めて出現する。
test.set_instance_variable
p test.instance_variables