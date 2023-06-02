tar_target(test_titanic, {
  read_csv("/kaggle/input/titanic/test.csv",
           col_types = cols(.default = "n",
                            Name = "c",
                            Sex = "f",
                            Ticket = "c",
                            Cabin = "c",
                            Embarked = "f"))
  
})
