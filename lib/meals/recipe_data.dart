const String recipeData = '''
[
  {
    "type": "vegetarian",
    "recipes": [
      {
        "name": "Vegetable Stir Fry",
        "image": "assets/img/veg_recipe_1.jpg",
        "description": "Healthy and nutritious vegetarian dish. Rich in vitamins and minerals. Low in saturated fats and cholesterol. Easy to prepare and delicious.",
        "ingredients": [
          "Assorted vegetables (e.g., bell peppers, broccoli, carrots)",
          "Soy sauce",
          "Garlic",
          "Ginger",
          "Olive oil",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "Heat olive oil in a pan over medium-high heat.",
          "Add minced garlic and ginger, sauté until fragrant.",
          "Add chopped vegetables and stir-fry until tender-crisp.",
          "Season with soy sauce, salt, and pepper to taste.",
          "Serve hot with rice or noodles.",
          "Garnish with sesame seeds (optional)."
        ],
        "videoLink": "https://www.youtube.com/watch?v=WIO_37X8t74"
      },
      {
        "name": "Quinoa Salad",
        "image": "assets/img/veg_recipe_2.jpg",
        "description": "Balanced vegetarian meal with proteins and fiber. Includes fresh vegetables and whole grains. Promotes heart health and weight management. Suitable for vegetarians and vegans.",
        "ingredients": [
          "Quinoa",
          "Cherry tomatoes",
          "Cucumber",
          "Red onion",
          "Fresh parsley",
          "Olive oil",
          "Lemon juice",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "Cook quinoa according to package instructions.",
          "Chop vegetables and herbs.",
          "In a large bowl, combine cooked quinoa and chopped vegetables.",
          "Drizzle with olive oil and lemon juice, season with salt and pepper.",
          "Toss gently to combine.",
          "Serve chilled as a refreshing salad.",
          "Optional: Add feta cheese or avocado for extra flavor."
        ],
        "videoLink": "https://www.youtube.com/watch?v=Bt9zSfinwFA"
      },
      {
        "name": "Spinach and Ricotta Stuffed Shells",
        "image": "assets/img/veg_recipe_3.jpg",
        "description": "Quick and easy vegetarian recipe. Packed with antioxidants and phytonutrients. Provides essential nutrients without meat. Ideal for busy weekdays or as a side dish.",
        "ingredients": [
          "Jumbo pasta shells",
          "Spinach",
          "Ricotta cheese",
          "Marinara sauce",
          "Garlic powder",
          "Dried oregano",
          "Parmesan cheese",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "Cook pasta shells according to package instructions, drain and set aside.",
          "Preheat oven to 350°F (175°C).",
          "In a bowl, mix ricotta cheese, chopped spinach, garlic powder, salt, and pepper.",
          "Stuff each pasta shell with the ricotta-spinach mixture.",
          "Arrange stuffed shells in a baking dish, cover with marinara sauce.",
          "Sprinkle with parmesan cheese and dried oregano.",
          "Bake for 25-30 minutes until heated through and bubbly.",
          "Serve hot with a side salad or garlic bread."
        ],
        "videoLink": "https://www.youtube.com/watch?v=1eWdbMBYlH4"
      },
      {
        "name": "Mushroom Risotto",
        "image": "assets/img/veg_recipe_4.jpg",
        "description": "Vegetarian dish with a blend of flavors. Includes herbs and spices for added taste. High in dietary fiber and low in calories. Perfect for a light lunch or dinner option.",
        "ingredients": [
          "Arborio rice",
          "Mushrooms (cremini or wild mushrooms)",
          "Vegetable broth",
          "Onion",
          "Garlic",
          "White wine (optional)",
          "Parmesan cheese",
          "Fresh thyme",
          "Butter",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "In a large pan, sauté chopped onions and garlic in butter until soft.",
          "Add sliced mushrooms and cook until tender.",
          "Add Arborio rice and stir to coat with butter and vegetables.",
          "Pour in white wine (if using) and let it absorb.",
          "Gradually add warm vegetable broth, one ladle at a time, stirring until absorbed.",
          "Continue adding broth and stirring until rice is creamy and tender.",
          "Stir in grated parmesan cheese, fresh thyme, salt, and pepper.",
          "Serve hot, garnished with more parmesan cheese and thyme leaves."
        ],
        "videoLink": "https://www.youtube.com/watch?v=JgK9zvnO-88"
      },
      {
        "name": "Vegetarian Chili",
        "image": "assets/img/veg_recipe_5.jpg",
        "description": "Delicious vegetarian recipe with a focus on fresh produce. Balanced combination of textures and flavors. Nutrient-dense and satisfying.",
        "ingredients": [
          "Kidney beans",
          "Black beans",
          "Bell peppers",
          "Onion",
          "Garlic",
          "Tomatoes",
          "Chili powder",
          "Cumin",
          "Paprika",
          "Vegetable broth",
          "Corn kernels (optional)",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "In a large pot, sauté chopped onions and garlic until translucent.",
          "Add diced bell peppers and cook until softened.",
          "Stir in chili powder, cumin, and paprika, cook for 1-2 minutes until fragrant.",
          "Add diced tomatoes, beans, and vegetable broth.",
          "Bring to a boil, reduce heat and simmer for 20-30 minutes, stirring occasionally.",
          "Add corn kernels (if using) and cook for another 5 minutes.",
          "Season with salt and pepper to taste.",
          "Serve hot, garnished with cilantro and a dollop of sour cream (optional)."
        ],
        "videoLink": "https://www.youtube.com/watch?v=m0DL5CLBKFc"
      }
    ]
  },
  {
    "type": "nonVegetarian",
    "recipes": [
      {
        "name": "Grilled Chicken Breast",
        "image": "assets/img/non_veg_recipe_1.jpg",
        "description": "Juicy and flavorful grilled chicken breast. High in protein, low in fat. Perfect for muscle recovery and building.",
        "ingredients": [
          "Chicken breast",
          "Olive oil",
          "Garlic powder",
          "Paprika",
          "Salt and pepper to taste",
          "Fresh lemon juice (optional)"
        ],
        "instructions": [
          "Preheat grill to medium-high heat.",
          "Brush chicken breasts with olive oil and season with garlic powder, paprika, salt, and pepper.",
          "Grill chicken breasts for 6-7 minutes per side, or until fully cooked and grill marks appear.",
          "Optional: Squeeze fresh lemon juice over grilled chicken before serving.",
          "Serve hot with steamed vegetables or a side salad."
        ],
        "videoLink": "https://www.youtube.com/watch?v=XU7_fxx0lmU"
      },
      {
        "name": "Salmon Fillet with Asparagus",
        "image": "assets/img/non_veg_recipe_2.jpg",
        "description": "Healthy and omega-3 rich salmon fillet. Paired with nutritious asparagus for a balanced meal.",
        "ingredients": [
          "Salmon fillets",
          "Asparagus spears",
          "Olive oil",
          "Lemon zest",
          "Fresh dill",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "Preheat oven to 400°F (200°C).",
          "Place salmon fillets on a baking sheet lined with parchment paper.",
          "Drizzle with olive oil, season with salt, pepper, lemon zest, and fresh dill.",
          "Arrange asparagus spears around salmon fillets, drizzle with olive oil and season with salt and pepper.",
          "Bake for 12-15 minutes, or until salmon is cooked through and flakes easily with a fork.",
          "Serve hot, garnished with additional dill and lemon wedges."
        ],
        "videoLink": "https://www.youtube.com/watch?v=hQ17zrggw3Y"
      },
      {
        "name": "Beef Stir Fry",
        "image": "assets/img/non_veg_recipe_3.jpg",
        "description": "Tender beef stir fry with mixed vegetables. High in protein and vitamins. Quick and easy weeknight dinner option.",
        "ingredients": [
          "Beef (flank steak or sirloin), thinly sliced",
          "Assorted vegetables (e.g., bell peppers, broccoli, snap peas)",
          "Soy sauce",
          "Honey",
          "Garlic",
          "Ginger",
          "Olive oil",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "Heat olive oil in a large pan or wok over medium-high heat.",
          "Add minced garlic and ginger, sauté until fragrant.",
          "Add sliced beef and cook until browned.",
          "Add chopped vegetables and stir-fry until tender-crisp.",
          "In a small bowl, mix soy sauce and honey, pour over stir fry, and toss to coat evenly.",
          "Season with salt and pepper to taste.",
          "Serve hot over steamed rice or noodles."
        ],
        "videoLink": "https://www.youtube.com/watch?v=1my6W8TsY8Y"
      },
      {
        "name": "Shrimp Scampi",
        "image": "assets/img/non_veg_recipe_4.jpg",
        "description": "Buttery and garlicky shrimp scampi. Quick and elegant seafood dish. Perfect for special occasions or a gourmet dinner.",
        "ingredients": [
          "Shrimp (large, peeled and deveined)",
          "Butter",
          "Olive oil",
          "Garlic",
          "Lemon juice",
          "White wine (optional)",
          "Fresh parsley",
          "Salt and pepper to taste",
          "Cooked pasta or crusty bread for serving"
        ],
        "instructions": [
          "In a large skillet, melt butter with olive oil over medium heat.",
          "Add minced garlic and cook until fragrant.",
          "Add shrimp to the skillet and cook until pink and opaque, about 2-3 minutes per side.",
          "Pour in white wine (if using) and lemon juice, let it simmer for 1-2 minutes.",
          "Stir in chopped parsley, salt, and pepper.",
          "Serve hot over cooked pasta or with crusty bread."
        ],
        "videoLink": "https://www.youtube.com/watch?v=n-eG6zKxlBA"
      },
      {
        "name": "Grilled Steak",
        "image": "assets/img/non_veg_recipe_5.jpg",
        "description": "Perfectly grilled steak with a smoky flavor. Rich in protein and essential nutrients. Ideal for satisfying hunger and promoting muscle growth.",
        "ingredients": [
          "Steak (ribeye, sirloin, or your preferred cut)",
          "Olive oil",
          "Garlic powder",
          "Salt and pepper to taste",
          "Optional: Fresh herbs (rosemary or thyme)"
        ],
        "instructions": [
          "Preheat grill to high heat.",
          "Brush steak with olive oil and season generously with garlic powder, salt, and pepper.",
          "Place steak on the grill and cook for 4-5 minutes per side, depending on thickness and desired doneness.",
          "Optional: Add fresh herbs during grilling for added flavor.",
          "Remove from grill and let rest for 5 minutes before slicing.",
          "Serve hot with grilled vegetables or a side salad."
        ],
        "videoLink": "https://www.youtube.com/watch?v=OWqeJmE-Byc"
      }
    ]
  }
]
''';