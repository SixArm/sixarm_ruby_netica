class Java::NorsysNetica::Net

  def free()
    begin
      finalize()
      getNodes().free()
    rescue Java::NorsysNetica::NeticaException
    end
  end

  def to_s
    "Net #{getName()}"
  end

  def to_ss
    nodelist = getNodes()
    to_s + "\n" + nodelist.to_ss
  end

  def pretty_print(q)
    q.group(1) {
     q.text "Net"
     q.breakable
     q.text "Name:"+name
     q.comma_breakable
      q.text "Nodes:#{nodes.size}"
    }
  end

end

