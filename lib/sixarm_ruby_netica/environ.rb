# -*- coding: utf-8 -*-

class Java::NorsysNetica::Environ

  def to_s
    "Environ" +
      " Version:#{getVersionString()}" +
      " MemoryUsageLimit:#{getMemoryUsageLimit().floor}" +
      " ArgumentChecking:#{getArgumentChecking()}" +
      " CaseFileDelimChar:#{getCaseFileDelimChar()}" +
      " MissingDataChar:#{getMissingDataChar()}"
  end

  def pretty_print(q)
    q.group(1) {
     q.text "Environ"
     q.breakable
     q.text "Version:"+getVersionString()
     q.comma_breakable
     q.text "MemoryUsageLimit:"+getMemoryUsageLimit().floor.to_s
     q.comma_breakable
     q.text "ArgumentChecking:"+getArgumentChecking().to_s
     q.comma_breakable
     q.text "CaseFileDelimChar:"+getCaseFileDelimChar().to_s
     q.comma_breakable
     q.text "MissingDataChar:"+getMissingDataChar().to_s
      }
  end

end


