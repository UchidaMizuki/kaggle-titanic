tar_target(train_titanic, {
  read_csv("/kaggle/input/titanic/train.csv",
           col_types = cols(.default = "n",
                            Name = "c",
                            Sex = "f",
                            Ticket = "c",
                            Cabin = "c",
                            Embarked = "f"))
  
})
