"""
  Suite of Unsteady Potential flow solvers and tools for FLight, Optimization,
  and Wind analysis and design.

  # AUTHORSHIP
    * Author    : Eduardo J. Alvarez
    * Email     : Edo.AlvarezR@gmail.com
    * Created   : Sep 2018
    * License   : AGPL-3.0
"""
module MyUPFLOW

# ------------ GENERIC MODULES -------------------------------------------------
import PyPlot; const plt = PyPlot
import ForwardDiff

# ------------ FLOW LAB MODULES ------------------------------------------------

# GeometricTools from https://github.com/byuflowlab/GeometricTools.jl
import GeometricTools
const gt = GeometricTools

# # MyPanel from https://github.com/EdoAlvarezR/MyPanel.jl
# import MyPanel
# const pnl = MyPanel


# ------------ GLOBAL VARIABLES AND DATA STRUCTURES ----------------------------
const module_path = splitdir(@__FILE__)[1]      # Path to this module
                                                # Default path to data files
const def_data_path = joinpath(module_path, "../data")
                                            # Default path to airfoil data files
const def_rfl_path = joinpath(def_data_path, "airfoils")

const RType = Union{Float64,                    # Concrete real types
                    Int64,
                    ForwardDiff.Dual{Void,Float64,3},
                    ForwardDiff.Dual{Void,Int64,3}
                    }


# ------------ HEADERS ---------------------------------------------------------
for header_name in []
  include("MyUPFLOW_"*header_name*".jl")
end


end # END OF MODULE
