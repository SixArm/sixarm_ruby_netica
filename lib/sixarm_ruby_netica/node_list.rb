# -*- coding: utf-8 -*-

class Java::NorsysNetica::NodeList

  def nodes()
    return (0...size).map{|i| getNode(i) }
  end

  def free()
    begin
      finalize()
      nodes.each{|n| n==nil or n.free() }
    rescue Java::NorsysNetica::NeticaException
    end
  end

  def getName()
   ""
  end

  def to_ss
    to_s + "\n" + nodes.map{|n| n.to_ss}.join("\n")
  end

end
