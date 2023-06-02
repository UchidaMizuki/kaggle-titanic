tar_target(recipe_titanic, {
  recipe(train_titanic,
         Survived ~ .) |> 
    step_rm(Name, Ticket, Cabin) |> 
    step_num2factor(all_outcomes(),
                    transform = \(x) x + 1L,
                    levels = c("no", "yes"),
                    skip = TRUE) |> 
    step_unknown(all_factor_predictors()) |> 
    step_dummy(all_factor_predictors(),
               one_hot = TRUE)
  
})
