module Of
  METHOD = proc do
    def of(klass=nil, &block)
      klass || block || raise(ArgumentError, 'must provide a `Class` or block')
      block || klass.respond_to?(:new) || raise(ArgumentError, 'class must respond to `.new`')
      block = proc { klass.new } if klass.is_a? Class
      self.times.map(&block)
    end
  end
end