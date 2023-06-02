tar_target(tune_titanic, {
  tune_grid(workflow_titanic,
            resamples = resamples_titanic,
            grid = grid_titanic,
            control = control_grid(verbose = TRUE))
  
})
