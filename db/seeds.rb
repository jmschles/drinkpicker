Ingredient.create([ { :name => "Vodka" }, { :name => "Orange Juice" },
                    { :name => "Tonic" }, { :name => "Soda Water" },
                    { :name => "Cranberry Juice" }, { :name => "Lemonade" }
                  ])

Drink.create([ { :name => "Screwdriver" },
               { :name => "Cape Codder"}
             ])

Component.create([ { :drink_id => 1, :ingredient_id => 1, :quantity => "2 oz" },
                   { :drink_id => 1, :ingredient_id => 2, :quantity => "4 oz" },
                   { :drink_id => 2, :ingredient_id => 1, :quantity => "2 oz" },
                   { :drink_id => 2, :ingredient_id => 5, :quantity => "4 oz" }
                 ])