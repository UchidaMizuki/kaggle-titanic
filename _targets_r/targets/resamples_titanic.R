tar_target(resamples_titanic, {
  vfold_cv(train_titanic,
           n = 2e1)
  
})
