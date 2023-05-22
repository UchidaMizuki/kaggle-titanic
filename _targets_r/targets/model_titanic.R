tar_target(model_titanic, {
  boost_tree(trees = tune(), 
             min_n = tune(), 
             tree_depth = tune(), 
             learn_rate = tune(), 
             loss_reduction = tune(), 
             sample_size = tune()) |> 
    set_mode("classification")
  
})
