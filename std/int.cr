class Int
  def hash
    self
  end

  def succ
    self + 1
  end

  def times
    i = 0
    while i < self
      yield i
      i += 1
    end
    self
  end

  def upto(n)
    if self <= n
      x = self
      while x <= n
        yield x
        x += 1
      end
    end
    self
  end

  def downto(n)
    if self >= n
      x = self
      while x >= n
        yield x
        x -= 1
      end
    end
    self
  end

  def to_s
    String.from_cstr(to_cstr)
  end
end
