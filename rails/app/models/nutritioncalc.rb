class Nutritioncalc < ActiveRecord::Base

  def carbgrams
    runcarbs = .6 * runduration * weight
    cyclecarbs = .3 * cycleduration * weight
    totalcarbs = runcarbs + cyclecarbs
  end



end
