module Kernel
  attr_accessor :valor

  def deberia proc
    test = Prueba.new self
    test.valor.instance_eval &proc
  end

  def mayor_que valor
    Proc.new {self > valor}
  end

  def menor_que valor
    Proc.new {self < valor}
  end

  def ser parametro
    if parametro.class.equal? Proc
      parametro
    else
      Proc.new {self.equal? parametro}
    end
  end

end

class Prueba
  attr_accessor :valor

  def initialize param
    self.valor = param
  end
end