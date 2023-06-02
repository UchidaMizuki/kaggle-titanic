tar_target(augment_titanic, {
  augment(fit_titanic,
          new_data = test_titanic) |>
    select(PassengerId, .pred_class) |>
    rename(Survived = .pred_class) |>
    mutate(Survived = as.integer(Survived) - 1L)
  
})
