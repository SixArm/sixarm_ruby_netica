# -*- coding: utf-8 -*-

class Java::NorsysNetica::Node

  NODE_KINDS = {
   Java::NorsysNetica::Node::NATURE_NODE => :nature,
   Java::NorsysNetica::Node::DECISION_NODE => :decision,
   Java::NorsysNetica::Node::UTILITY_NODE => :utility,
   Java::NorsysNetica::Node::CONSTANT_NODE => :constant,
   Java::NorsysNetica::Node::DISCONNECTED_NODE => :disconnected,
  }

  NODE_TYPES = {
   Java::NorsysNetica::Node::DISCRETE_TYPE => :nature,
   Java::NorsysNetica::Node::CONTINUOUS_TYPE => :decision,
  }

  def getKindSym()
   return NODE_KINDS[getKind()]
  end

  def getTypeSym()
   return NODE_TYPES[getType()]
  end

  def to_s
   "Node" +
      " Name:#{getName()}" +
      " Kind:#{getKindSym()}" +
      " Type:#{getTypeSym()}" +
      " BeliefUpdated:#{isBeliefUpdated()}" +
      " Deterministic:#{isDeterministic()}" +
      " NumStates:#{getNumStates}" 
  end

  def to_ss
    to_s + "\n" + states.map{|s| s.to_ss}.join("\n") 
  end

  def pretty_print(q)
    q.group(1) {
      q.text "Node"
      q.breakable
      q.text "Name:#{getName()}"
      q.comma_breakable
      q.text "Kind:#{getKindSym()}"
      q.comma_breakable
      q.text "Type:#{getTypeSym()}"
      q.comma_breakable
      q.text "BeliefUpdated:#{isBeliefUpdated()}"
      q.comma_breakable
      q.text "Deterministic:#{isDeterministic()}"
      q.text "NumStates:#{getNumStates}"
      q.comma_breakable
    }
  end

  def states()
    return (0...getNumStates()).map{|i| state(i) }
  end

  def free()
    begin
      finalize()
      delete()
      states.each{|s| s==nil or s.free() }
    rescue Java::NorsysNetica::NeticaException
    end
  end

  def state_belief_inspect
    states.map{|state|
     k = state.getName()
     v = getBelief(k)
      "#{k}:#{v.round_to(0.01)}"
    }.join(",")
  end

end
