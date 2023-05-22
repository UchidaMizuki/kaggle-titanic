tar_target(grid_titanic, {
  extract_parameter_set_dials(workflow_titanic) |> 
    grid_latin_hypercube(size = 2e1)
  
})
