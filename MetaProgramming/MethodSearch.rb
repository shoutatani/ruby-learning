module M1
end

class C1
  include M1
end

class C2 < C1
end

class D1
  prepend M1
end

class D2 < D1
end

p C2.ancestors
p D2.ancestors



module M10
end

module M20
  include M10
end

module M30
  prepend M10
  include M20
end

p M20.ancestors
p M30.ancestors
