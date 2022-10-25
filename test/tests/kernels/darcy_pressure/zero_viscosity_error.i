[Mesh]
    type = GeneratedMesh
    dim = 1
  []
  
  [Problem]
    solve = false
  []
  
  [Variables]
    [u]
    []
  []
  
  [Kernels]
    [diffusion]
      type = DarcyPressure # Zero-gravity, divergence-free form of Darcy's law
      variable = pressure # Operate on the "pressure" variable from above
    []
  []
  
  [Materials]
    [filter]
      type = PackedColumn # Provides permeability and viscosity of water through packed 1mm spheres
    []
  []
  
  [Executioner]
    type = Steady
  []