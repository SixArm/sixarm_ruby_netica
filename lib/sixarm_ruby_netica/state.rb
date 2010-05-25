class Java::NorsysNetica::State

  def free()
    begin
      finalize()
      delete()
    rescue Java::NorsysNetica::NeticaException
    end
  end

  def to_ss
    "State:#{to_s}"
  end

end

