tar_target(fit_titanic, {
  finalize_workflow_titanic |>
    fit(data = train_titanic)
  
})
