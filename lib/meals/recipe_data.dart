const String recipeData = '''
[
  {
    "type": "vegetarian",
    "recipes": [
      {
        "name": "Chickpea and Spinach Curry",
        "image": "assets/img/Chickpea and Spinach Curry.jpeg",
        "description": "A high-protein vegetarian curry made with chickpeas and spinach. Rich in fiber, iron, and essential vitamins.",
        "ingredients": [
          "Chickpeas",
          "Spinach",
          "Onion",
          "Tomatoes",
          "Garlic",
          "Ginger",
          "Turmeric",
          "Cumin",
          "Coriander",
          "Garam masala",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "Heat oil in a pan and sauté chopped onions until golden brown.",
          "Add minced garlic and ginger, cook until fragrant.",
          "Add chopped tomatoes and cook until soft.",
          "Stir in turmeric, cumin, coriander, and garam masala.",
          "Add chickpeas and spinach, cook until spinach is wilted and chickpeas are heated through.",
          "Season with salt and pepper to taste.",
          "Serve hot with brown rice or whole wheat roti."
        ],
        "videoLink": "https://www.youtube.com/watch?v=SJnORmH0WEk&pp=ygUaQ2hpY2twZWEgYW5kIFNwaW5hY2ggQ3Vycnk%3D"
      },
      {
        "name": "Moong Dal Khichdi",
        "image": "assets/img/Moong Dal Khichdi.jpg",
        "description": "A light and nutritious dish made with moong dal and rice. Easy to digest and high in protein.",
        "ingredients": [
          "Moong dal (split green gram)",
          "Rice",
          "Ginger",
          "Garlic",
          "Turmeric",
          "Cumin seeds",
          "Salt and pepper to taste",
          "Ghee or oil"
        ],
        "instructions": [
          "Wash and soak moong dal and rice for 15-20 minutes.",
          "Heat ghee in a pressure cooker, add cumin seeds and let them splutter.",
          "Add minced garlic and ginger, sauté until fragrant.",
          "Add soaked dal and rice, turmeric, salt, and water.",
          "Cook under pressure for 3-4 whistles.",
          "Let the pressure release naturally, stir well and serve hot.",
          "Optional: Garnish with fresh coriander leaves."
        ],
        "videoLink": "https://www.youtube.com/watch?v=3QGtLL_BM94&pp=ygURTW9vbmcgRGFsIEtoaWNoZGk%3D"
      },
      {
        "name": "Paneer Bhurji",
        "image": "assets/img/Paneer Bhurji.jpg",
        "description": "A protein-rich Indian scrambled cottage cheese dish. Perfect for a post-workout meal.",
        "ingredients": [
          "Paneer (cottage cheese)",
          "Onion",
          "Tomatoes",
          "Green chilies",
          "Ginger",
          "Turmeric",
          "Cumin seeds",
          "Coriander powder",
          "Garam masala",
          "Salt and pepper to taste",
          "Coriander leaves"
        ],
        "instructions": [
          "Heat oil in a pan, add cumin seeds and let them splutter.",
          "Add chopped onions, green chilies, and ginger, sauté until golden brown.",
          "Add chopped tomatoes and cook until soft.",
          "Add turmeric, coriander powder, and garam masala.",
          "Crumble paneer and add to the pan, cook for a few minutes.",
          "Season with salt and pepper, garnish with fresh coriander leaves.",
          "Serve hot with whole wheat roti or bread."
        ],
        "videoLink": "https://www.youtube.com/watch?v=KgW--wj5iBM&pp=ygUNUGFuZWVyIEJodXJqaQ%3D%3D"
      },
      {
        "name": "Quinoa Pulao",
        "image": "assets/img/Quinoa Pulao.jpg",
        "description": "A healthy and protein-packed alternative to traditional rice pulao. Made with quinoa and mixed vegetables.",
        "ingredients": [
          "Quinoa",
          "Mixed vegetables (carrots, peas, beans, bell peppers)",
          "Onion",
          "Tomatoes",
          "Garlic",
          "Ginger",
          "Turmeric",
          "Cumin seeds",
          "Garam masala",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "Rinse quinoa and cook according to package instructions.",
          "Heat oil in a pan, add cumin seeds and let them splutter.",
          "Add chopped onions, garlic, and ginger, sauté until golden brown.",
          "Add chopped tomatoes and cook until soft.",
          "Add mixed vegetables, turmeric, and garam masala, cook until vegetables are tender.",
          "Add cooked quinoa, season with salt and pepper.",
          "Mix well and serve hot."
        ],
        "videoLink": "https://www.youtube.com/watch?v=K68LKGXHjhE&pp=ygUMUXVpbm9hIFB1bGFv"
      },
      {
        "name": "Lentil Soup",
        "image": "assets/img/Lentil Soup.jpg",
        "description": "A hearty and protein-rich lentil soup. Packed with vitamins and minerals, perfect for a nutritious meal.",
        "ingredients": [
          "Lentils (masoor dal)",
          "Onion",
          "Carrots",
          "Celery",
          "Garlic",
          "Tomatoes",
          "Turmeric",
          "Cumin",
          "Coriander",
          "Vegetable broth",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "Heat oil in a large pot, add chopped onions, carrots, and celery, sauté until soft.",
          "Add minced garlic and cook until fragrant.",
          "Add chopped tomatoes, turmeric, cumin, and coriander.",
          "Add lentils and vegetable broth, bring to a boil.",
          "Reduce heat and simmer until lentils are tender.",
          "Season with salt and pepper to taste.",
          "Serve hot, garnished with fresh coriander leaves."
        ],
        "videoLink": "https://www.youtube.com/watch?v=BR67V-U72s8&pp=ygULTGVudGlsIFNvdXA%3D"
      },
      {
        "name": "Sprouted Moong Salad",
        "image": "assets/img/Sprouted Moong Salad.jpg",
        "description": "A protein-rich and refreshing salad made with sprouted moong beans. Perfect as a light meal or side dish.",
        "ingredients": [
          "Sprouted moong beans",
          "Tomatoes",
          "Cucumber",
          "Onion",
          "Green chilies",
          "Lemon juice",
          "Salt and pepper to taste",
          "Fresh coriander leaves"
        ],
        "instructions": [
          "In a bowl, combine sprouted moong beans, chopped tomatoes, cucumber, and onion.",
          "Add chopped green chilies, lemon juice, salt, and pepper.",
          "Mix well and garnish with fresh coriander leaves.",
          "Serve chilled as a refreshing salad."
        ],
        "videoLink": "https://www.youtube.com/watch?v=gXTj3o0P0bE&pp=ygUUU3Byb3V0ZWQgTW9vbmcgU2FsYWQ%3D"
      },
      {
        "name": "Baingan Bharta",
        "image": "assets/img/Baingan Bharta.jpg",
        "description": "A smoky and flavorful roasted eggplant dish. Low in calories and rich in fiber and vitamins.",
        "ingredients": [
          "Eggplant",
          "Onion",
          "Tomatoes",
          "Garlic",
          "Ginger",
          "Green chilies",
          "Turmeric",
          "Cumin seeds",
          "Coriander powder",
          "Salt and pepper to taste",
          "Fresh coriander leaves"
        ],
        "instructions": [
          "Roast the eggplant over an open flame until charred and soft.",
          "Peel the skin and mash the eggplant pulp.",
          "Heat oil in a pan, add cumin seeds and let them splutter.",
          "Add chopped onions, garlic, ginger, and green chilies, sauté until golden brown.",
          "Add chopped tomatoes, turmeric, and coriander powder, cook until tomatoes are soft.",
          "Add mashed eggplant, season with salt and pepper.",
          "Cook for a few minutes, garnish with fresh coriander leaves.",
          "Serve hot with whole wheat roti."
        ],
        "videoLink": "https://www.youtube.com/watch?v=exp-Fo1H57U&pp=ygUOQmFpbmdhbiBCaGFydGE%3D"
      },
      {
        "name": "Methi Thepla",
        "image": "assets/img/Methi Thepla.jpeg",
        "description": "A nutritious and flavorful Indian flatbread made with fenugreek leaves. High in fiber and vitamins.",
        "ingredients": [
          "Whole wheat flour",
          "Fresh fenugreek leaves (methi)",
          "Yogurt",
          "Turmeric",
          "Red chili powder",
          "Cumin seeds",
          "Salt to taste",
          "Oil"
        ],
        "instructions": [
          "In a bowl, mix whole wheat flour, chopped fenugreek leaves, yogurt, turmeric, red chili powder, cumin seeds, and salt.",
          "Knead into a soft dough using water as needed.",
          "Divide the dough into small balls and roll out into thin circles.",
          "Heat a tawa or griddle and cook the theplas on both sides until golden brown.",
          "Serve hot with yogurt or pickle."
        ],
        "videoLink": "https://www.youtube.com/watch?v=l-6wWsZoFpE&pp=ygUMTWV0aGkgVGhlcGxh"
      },
      {
        "name": "Stuffed Bell Peppers",
        "image": "assets/img/Stuffed Bell Peppers.jpg",
        "description": "Colorful and nutritious bell peppers stuffed with a protein-rich filling. Perfect for a healthy and satisfying meal.",
        "ingredients": [
          "Bell peppers",
          "Paneer (cottage cheese)",
          "Onion",
          "Tomatoes",
          "Green chilies",
          "Garlic",
          "Ginger",
          "Turmeric",
          "Cumin seeds",
          "Coriander powder",
          "Garam masala",
          "Salt and pepper to taste",
          "Fresh coriander leaves"
        ],
        "instructions": [
          "Cut the tops off the bell peppers and remove the seeds.",
          "Heat oil in a pan, add cumin seeds and let them splutter.",
          "Add chopped onions, green chilies, garlic, and ginger, sauté until golden brown.",
          "Add chopped tomatoes, turmeric, coriander powder, and garam masala, cook until tomatoes are soft.",
          "Crumble paneer and add to the pan, cook for a few minutes.",
          "Season with salt and pepper, garnish with fresh coriander leaves.",
          "Stuff the bell peppers with the paneer mixture.",
          "Place the stuffed bell peppers in a baking dish and bake at 180°C (350°F) for 20-25 minutes.",
          "Serve hot as a main dish or side."
        ],
        "videoLink": "https://www.youtube.com/watch?v=UEUmG5CcXoE&pp=ygUUU3R1ZmZlZCBCZWxsIFBlcHBlcnM%3D"
      }
    ]
  },
  {
    "type": "nonVegetarian",
    "recipes": [
      {
        "name": "Grilled Tandoori Chicken",
        "image": "assets/img/Grilled Tandoori Chicken.jpg",
        "description": "A high-protein dish made with marinated grilled chicken. Flavored with tandoori spices for a delicious meal.",
        "ingredients": [
          "Chicken breast",
          "Yogurt",
          "Lemon juice",
          "Garlic",
          "Ginger",
          "Tandoori masala",
          "Turmeric",
          "Paprika",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "In a bowl, mix yogurt, lemon juice, minced garlic, ginger, and tandoori masala.",
          "Marinate chicken breasts in the yogurt mixture for at least 2 hours.",
          "Preheat grill to medium-high heat.",
          "Grill chicken for 6-7 minutes per side, or until fully cooked.",
          "Serve hot with a side of grilled vegetables or salad."
        ],
        "videoLink": "https://www.youtube.com/watch?v=A3lcRok1zf8&pp=ygUYR3JpbGxlZCBUYW5kb29yaSBDaGlja2Vu"
      },
      {
        "name": "Fish Curry",
        "image": "assets/img/Fish Curry.jpg",
        "description": "A nutritious and protein-rich fish curry. Made with fresh fish and traditional Indian spices.",
        "ingredients": [
          "Fish fillets",
          "Onion",
          "Tomatoes",
          "Garlic",
          "Ginger",
          "Turmeric",
          "Coriander powder",
          "Cumin seeds",
          "Coconut milk",
          "Salt and pepper to taste",
          "Fresh coriander leaves"
        ],
        "instructions": [
          "Heat oil in a pan, add cumin seeds and let them splutter.",
          "Add chopped onions, garlic, and ginger, sauté until golden brown.",
          "Add chopped tomatoes, turmeric, coriander powder, and cook until tomatoes are soft.",
          "Add coconut milk and bring to a simmer.",
          "Add fish fillets and cook until fish is fully cooked.",
          "Season with salt and pepper, garnish with fresh coriander leaves.",
          "Serve hot with brown rice or quinoa."
        ],
        "videoLink": "https://www.youtube.com/watch?v=6Tme3rLiFzg&pp=ygUKRmlzaCBDdXJyeQ%3D%3D"
      },
      {
        "name": "Chicken Tikka",
        "image": "assets/img/Chicken Tikka.jpg",
        "description": "A protein-rich and low-fat chicken dish. Marinated in yogurt and spices, then grilled to perfection.",
        "ingredients": [
          "Chicken breast",
          "Yogurt",
          "Lemon juice",
          "Garlic",
          "Ginger",
          "Tikka masala",
          "Turmeric",
          "Paprika",
          "Salt and pepper to taste"
        ],
        "instructions": [
          "In a bowl, mix yogurt, lemon juice, minced garlic, ginger, and tikka masala.",
          "Marinate chicken breasts in the yogurt mixture for at least 2 hours.",
          "Preheat grill to medium-high heat.",
          "Grill chicken for 6-7 minutes per side, or until fully cooked.",
          "Serve hot with a side of grilled vegetables or salad."
        ],
        "videoLink": "https://www.youtube.com/watch?v=TMCpPiHSZBY&pp=ygUNQ2hpY2tlbiBUaWtrYQ%3D%3D"
      },
      {
        "name": "Egg Bhurji",
        "image": "assets/img/Egg Bhurji.jpg",
        "description": "A quick and easy protein-packed scrambled eggs dish. Flavored with Indian spices for a delicious meal.",
        "ingredients": [
          "Eggs",
          "Onion",
          "Tomatoes",
          "Green chilies",
          "Garlic",
          "Ginger",
          "Turmeric",
          "Cumin seeds",
          "Coriander powder",
          "Salt and pepper to taste",
          "Fresh coriander leaves"
        ],
        "instructions": [
          "Heat oil in a pan, add cumin seeds and let them splutter.",
          "Add chopped onions, green chilies, and ginger, sauté until golden brown.",
          "Add chopped tomatoes and cook until soft.",
          "Add turmeric and coriander powder.",
          "Beat eggs and add to the pan, cook until eggs are fully cooked.",
          "Season with salt and pepper, garnish with fresh coriander leaves.",
          "Serve hot with whole wheat roti or bread."
        ],
        "videoLink": "https://www.youtube.com/watch?v=glUEnS8J84Q&pp=ygUKRWdnIEJodXJqaQ%3D%3D"
      },
      {
        "name": "Spicy Prawn Curry",
        "image": "assets/img/Spicy Prawn Curry.jpg",
        "description": "A delicious and protein-rich prawn curry. Spiced with traditional Indian flavors for a hearty meal.",
        "ingredients": [
          "Prawns",
          "Onion",
          "Tomatoes",
          "Garlic",
          "Ginger",
          "Turmeric",
          "Coriander powder",
          "Cumin seeds",
          "Coconut milk",
          "Salt and pepper to taste",
          "Fresh coriander leaves"
        ],
        "instructions": [
          "Heat oil in a pan, add cumin seeds and let them splutter.",
          "Add chopped onions, garlic, and ginger, sauté until golden brown.",
          "Add chopped tomatoes, turmeric, coriander powder, and cook until tomatoes are soft.",
          "Add coconut milk and bring to a simmer.",
          "Add prawns and cook until they turn pink and are fully cooked.",
          "Season with salt and pepper, garnish with fresh coriander leaves.",
          "Serve hot with brown rice or quinoa."
        ],
        "videoLink": "https://www.youtube.com/watch?v=LSYWBfmHAHo&pp=ygURU3BpY3kgUHJhd24gQ3Vycnk%3D"
      },
      {
        "name": "Chicken and Vegetable Stir Fry",
        "image": "assets/img/Swanson-Chicken-and-Vegetable-Stir-Fry.jpg",
        "description": "A quick and healthy stir fry made with chicken and mixed vegetables. High in protein and low in fat.",
        "ingredients": [
          "Chicken breast",
          "Mixed vegetables (broccoli, bell peppers, carrots, snap peas)",
          "Garlic",
          "Ginger",
          "Soy sauce",
          "Lemon juice",
          "Salt and pepper to taste",
          "Sesame oil"
        ],
        "instructions": [
          "Cut chicken breast into thin strips.",
          "Heat sesame oil in a pan, add minced garlic and ginger, sauté until fragrant.",
          "Add chicken strips and cook until no longer pink.",
          "Add mixed vegetables and stir fry until tender-crisp.",
          "Add soy sauce, lemon juice, salt, and pepper to taste.",
          "Stir well and serve hot with brown rice or quinoa."
        ],
        "videoLink": "https://www.youtube.com/watch?v=5dybdeTylz0&pp=ygUeQ2hpY2tlbiBhbmQgVmVnZXRhYmxlIFN0aXIgRnJ5"
      },
      {
        "name": "Keema Matar",
        "image": "assets/img/Keema Matar.jpg",
        "description": "A flavorful and protein-rich ground meat dish with peas. Perfect for a hearty meal.",
        "ingredients": [
          "Ground meat (chicken, turkey, or lamb)",
          "Peas",
          "Onion",
          "Tomatoes",
          "Garlic",
          "Ginger",
          "Green chilies",
          "Turmeric",
          "Coriander powder",
          "Garam masala",
          "Salt and pepper to taste",
          "Fresh coriander leaves"
        ],
        "instructions": [
          "Heat oil in a pan, add chopped onions, garlic, ginger, and green chilies, sauté until golden brown.",
          "Add chopped tomatoes, turmeric, coriander powder, and cook until tomatoes are soft.",
          "Add ground meat and cook until browned.",
          "Add peas and garam masala, cook until peas are tender.",
          "Season with salt and pepper, garnish with fresh coriander leaves.",
          "Serve hot with whole wheat roti or brown rice."
        ],
        "videoLink": "https://www.youtube.com/watch?v=fI-M9DKwpaM&pp=ygULS2VlbWEgTWF0YXI%3D"
      },
      {
        "name": "Chicken Curry",
        "image": "assets/img/Chicken Curry.jpg",
        "description": "A traditional Indian chicken curry made with aromatic spices. High in protein and perfect for a nutritious meal.",
        "ingredients": [
          "Chicken pieces (breast or thighs)",
          "Onion",
          "Tomatoes",
          "Garlic",
          "Ginger",
          "Turmeric",
          "Coriander powder",
          "Cumin seeds",
          "Garam masala",
          "Salt and pepper to taste",
          "Fresh coriander leaves"
        ],
        "instructions": [
          "Heat oil in a pan, add cumin seeds and let them splutter.",
          "Add chopped onions, garlic, and ginger, sauté until golden brown.",
          "Add chopped tomatoes, turmeric, coriander powder, and cook until tomatoes are soft.",
          "Add chicken pieces and cook until browned.",
          "Add water and bring to a simmer, cook until chicken is fully cooked.",
          "Add garam masala, season with salt and pepper.",
          "Garnish with fresh coriander leaves and serve hot with brown rice or whole wheat roti."
        ],
        "videoLink": "https://www.youtube.com/watch?v=jwyge5daKUQ&pp=ygUNQ2hpY2tlbiBDdXJyeQ%3D%3D"
      },
      {
        "name": "Egg Curry",
        "image": "assets/img/Egg Curry.jpg",
        "description": "A simple and protein-packed egg curry. Made with hard-boiled eggs and a spiced tomato gravy.",
        "ingredients": [
          "Hard-boiled eggs",
          "Onion",
          "Tomatoes",
          "Garlic",
          "Ginger",
          "Turmeric",
          "Coriander powder",
          "Cumin seeds",
          "Garam masala",
          "Salt and pepper to taste",
          "Fresh coriander leaves"
        ],
        "instructions": [
          "Heat oil in a pan, add cumin seeds and let them splutter.",
          "Add chopped onions, garlic, and ginger, sauté until golden brown.",
          "Add chopped tomatoes, turmeric, coriander powder, and cook until tomatoes are soft.",
          "Add water and bring to a simmer.",
          "Cut hard-boiled eggs in half and add to the gravy.",
          "Cook for a few minutes, season with salt and pepper.",
          "Garnish with fresh coriander leaves and serve hot with brown rice or whole wheat roti."
        ],
        "videoLink": "https://www.youtube.com/watch?v=_BA9OiyjReQ&pp=ygUJRWdnIEN1cnJ5"
      }
    ]
  }
]
''';
