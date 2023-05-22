tar_target(recipe_titanic, {
  recipe(train_titanic,
         Survived ~ .) |> 
    step_rm(PassengerId) |> 
    step_num2factor(all_outcomes(),
                    transform = \(x) x + 1L,
                    levels = c("no", "yes"),
                    skip = TRUE) |>
    step_unknown(Sex, Embarked, Honorific) |>
    step_dummy(Sex, Embarked, Honorific,
               one_hot = TRUE) |> 
    step_lencode_mixed(LastName, Ticket, Cabin,
                       outcome = vars(Survived))
  
})
