tar_target(model_titanic, {
  boost_tree(trees = 1e4, 
             min_n = tune(), # min_child_weight
             tree_depth = tune(), # max_depth 
             learn_rate = 0.1, 
             loss_reduction = tune(), 
             sample_size = tune(),
             stop_iter = 1e2) |> 
    set_mode("classification")
  
})
