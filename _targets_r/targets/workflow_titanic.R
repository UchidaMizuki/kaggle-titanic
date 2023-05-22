tar_target(workflow_titanic, {
  workflow() |> 
    add_recipe(recipe_titanic) |> 
    add_model(model_titanic)
  
})
