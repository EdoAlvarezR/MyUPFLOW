#=##############################################################################
# DESCRIPTION
    Tools for sizing.
# AUTHORSHIP
  * Author    : Eduardo J. Alvarez
  * Email     : Edo.AlvarezR@gmail.com
  * Created   : Sep 2018
  * License   : AGPL-3.0
=###############################################################################

"""
`mass_wing(rho::RType, b::RType, c_r::RType, c_t::RType, t_r::RType,
t_t::RType, lambda::RType; rho_spar::RType=0, f::RType=0.5)`

Returns the mass of a solid wing approximated as the box that contains it
weighted by a factor `f`.

**ARGUMENTS**
  * `rho::Real`         : Volumetric density of wing material.
  * `b::Real`           : Wing span
  * `c_r::Real`, `c_t::Real`      : Root and tip chord lengths.
  * `t_r::Real`, `t_t::Real`      : Root and tip relative airfoil thickness t/c.
  * `lambda::Real`      : Sweep in degrees.

**OPTIONAL ARGUMENTS**
  * `rho_spar::Real`    : Linear density of spar material.
  * `f::Real`           : Weighting factor.
"""
function mass_wing(rho::RType, b::RType, c_r::RType, c_t::RType, t_r::RType,
                    t_t::RType, lambda::RType; rho_spar::RType=0, f::RType=0.5)
  return b/cos(lambda*pi/180) * (f*rho*(c_t+c_r)^2/4*(t_t+t_r)/2 + rho_spar)
end
