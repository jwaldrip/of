module Of
  METHOD = proc do
    def of(&block)
      self.times.map(&block)
    end
  end
end