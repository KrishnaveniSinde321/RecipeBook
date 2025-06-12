-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2019 at 08:59 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dishes`
--
CREATE DATABASE IF NOT EXISTS `dishes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dishes`;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE IF NOT EXISTS `dishes` (
  `id` int(3) NOT NULL DEFAULT 0,
  `name` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(10) DEFAULT NULL,
  `country` varchar(10) DEFAULT NULL,
  `time` int(4) DEFAULT NULL,
  `ingredients` varchar(1000) NOT NULL,
  `recipe` varchar(10000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`id`,`name`, `description`, `image`, `category`, `country`, `time`, `ingredients`, `recipe`) VALUES
(1,'Chicken Tikka Masala', 'Enjoy the robust flavors of chicken tikka masala, featuring grilled chicken chunks in a spicy and creamy tomato sauce.', 'images/chicken-tikka-masala.jpg', 'main course', 'india', '75', '1 lb chicken breast, 1 cup yogurt, 2 tbsp lemon juice, 1 tbsp turmeric, 2 tbsp garam masala, 1 tbsp cumin, 2 tbsp vegetable oil, 1 large onion, 3 tomatoes, 6 cloves garlic, 1 inch ginger, 1 cup heavy cream, 4 tbsp unsalted butter, salt to taste, fresh cilantro for garnish', 'Marinate chicken in yogurt, spices, and lemon juice for 2 hours. Grill until charred. Sauté onions, garlic, and ginger in oil. Add chopped tomatoes, remaining spices; cook until thick. Add cream, butter, cooked chicken; simmer 20 minutes. Garnish with cilantro.'),
(2,'Tandoori Chicken', 'Experience the tantalizing taste of tandoori chicken, marinated in yogurt and spices, then roasted to perfection in a tandoor oven.', 'images/tandoori-chicken.jpg', 'main course', 'india', '90', '2 lbs chicken legs, 1 cup yogurt, 2 tbsp lemon juice, 3 tbsp tandoori masala, 1 tsp red chili powder, salt to taste, 2 tbsp mustard oil, 1 tbsp garam masala', 'Clean chicken, make incisions. Marinate in yogurt, lemon juice, spices, and oil overnight. Preheat tandoor or oven to 400°F. Place chicken on skewers, cook for 30-35 minutes. Serve hot with mint chutney and onions.'),
(3,'Aloo Gobi', 'Delight in aloo gobi, a flavorful vegetarian dish made with potatoes and cauliflower roasted with Indian spices.', 'images/aloo-gobi.jpg', 'side dish', 'india', '45', '1 large cauliflower, 2 large potatoes, 1 onion, 2 tomatoes, 1 tsp cumin seeds, 2 tbsp coriander powder, 1 tsp turmeric, 1 tsp garam masala, 2 tbsp oil, salt to taste, cilantro for garnish', 'Cut cauliflower and potatoes into small pieces. Heat oil, add cumin seeds until they splutter. Add onions, sauté until golden. Add spices, tomatoes, stir well. Add vegetables, cover and cook on low heat until tender. Garnish with cilantro.'),
(4,'Palak Paneer', 'Indulge in the smooth and creamy palak paneer, a popular dish where paneer cheese cubes are cooked in a mild spinach sauce.', 'images/palak-paneer.jpg', 'main course', 'india', '30', '2 cups spinach, 1 cup paneer, 1 onion, 2 tomatoes, 6 cloves garlic, 1 inch ginger, 2 green chilies, 1 tsp cumin, 1/2 cup cream, 2 tbsp oil, salt to taste', 'Blanch spinach, make into puree. Fry paneer until golden, set aside. In the same pan, add cumin, chopped onion, garlic, ginger, and chilies. Add tomatoes, cook until soft. Add spinach, simmer for 10 minutes. Add paneer, cream, cook for 5 minutes.'),
(5,'Chicken Biriyani', 'Dive into the layers of fragrant and spiced rice and marinated chicken in this traditional chicken biriyani, a staple at celebrations.', 'images/chicken-biriyani.jpg', 'main course', 'india', '90', '2 cups basmati rice, 1 lb chicken, 1 cup yogurt, 2 onions, 2 tomatoes, 1/4 cup cooking oil, 2 tbsp biriyani masala, 1 tsp turmeric, 1/2 cup mint leaves, 4 cups water, salt to taste', 'Marinate chicken in yogurt, spices for 2 hours. Fry sliced onions until crispy, set aside. In the same oil, cook tomatoes with biriyani masala. Add chicken, cook until tender. Boil water, add rice and cook halfway. Layer rice and chicken, cook on low heat for 20 minutes.'),
(6,'Egg Curry', 'Savor the rich and spicy flavors of egg curry, where hard-boiled eggs are simmered in a robust tomato and onion gravy.', 'images/egg-curry.jpg', 'main course', 'india', '30', '6 hard-boiled eggs, 2 onions, 2 tomatoes, 1 tsp chili powder, 1 tsp turmeric, 1 tsp coriander powder, 1/2 tsp garam masala, 2 tbsp oil, salt to taste, cilantro for garnish', 'Peel eggs, make slight cuts on them. Heat oil, fry onions until golden. Add spices, tomatoes, cook until oil separates. Add eggs, coat well with masala. Add water, simmer for 10 minutes. Garnish with cilantro.'),
(7,'Kung Pao Chicken', 'Explore the spicy and nutty flavors of Kung Pao chicken, a classic Chinese dish with chicken, peanuts, and chili peppers.', 'images/kung-pao-chicken.jpg', 'main course', 'china', '30', '1 lb chicken breast, 1/4 cup roasted peanuts, 8 dried red chili peppers, 2 tbsp soy sauce, 1 tbsp hoisin sauce, 1 tsp sugar, 1/2 tsp cornstarch, 2 tbsp vegetable oil, 3 cloves garlic, 1 inch ginger, green onions for garnish', 'Cube chicken, marinate in soy sauce, hoisin, cornstarch, and sugar for 15 minutes. Heat oil, fry chili peppers, garlic, and ginger. Add chicken, cook until browned. Add peanuts, stir well. Garnish with green onions.'),
(8,'Mongolian Chicken', 'Enjoy the sweet and savory taste of Mongolian chicken, featuring tender strips of chicken glazed in a rich sauce with scallions.', 'images/mongolian-chicken.jpg', 'main course', 'china', '30', '1 lb chicken breast, 2 tbsp soy sauce, 1 tbsp hoisin sauce, 1 tsp sugar, 1/2 tsp cornstarch, 2 tbsp vegetable oil, 1 bunch scallions, 1/4 cup hoisin sauce, 1/4 cup water, 1 tbsp sesame oil', 'Slice chicken, marinate in soy sauce, hoisin, cornstarch, and sugar for 15 minutes. Heat oil, add chicken, cook until browned. Add hoisin sauce, water, and cook until thickened. Stir in scallions, sesame oil.'),
(9,'Chicken Stir Fry', 'Relish the fresh and vibrant flavors of chicken stir fry, a quick and healthy dish with colorful vegetables and soy sauce.', 'images/chicken-stir-fry.jpg', 'main course', 'china', '20', '1 lb chicken breast, 2 cups mixed vegetables (bell peppers, broccoli, carrots), 2 tbsp soy sauce, 1 tbsp oyster sauce, 1 tsp cornstarch, 2 tbsp vegetable oil, 1 garlic clove, 1 tsp ginger', 'Slice chicken, mix with soy sauce, oyster sauce, cornstarch. Heat oil, sauté garlic, ginger, add vegetables, stir fry until crisp. Add chicken, cook until done. Serve hot.'),
(10,'Chicken Parmesan Pizza', 'Delight in the cheesy and crispy chicken parmesan pizza, a unique twist combining pizza with breaded chicken and marinara sauce.', 'images/chicken-parmesan-pizza.jpg', 'main course', 'italy', '45', '1 pre-made pizza dough, 1 cup marinara sauce, 2 breaded chicken cutlets, cooked and sliced, 1 cup mozzarella cheese, 1/4 cup grated Parmesan, 1 tbsp olive oil, basil leaves for garnish', 'Preheat oven to 475°F. Spread marinara on dough, top with sliced chicken, mozzarella, and Parmesan. Drizzle with olive oil. Bake for 12-15 minutes until crust is golden. Garnish with basil.'),
(11,'Meatballs', 'Savor the rich and tender meatballs, seasoned with herbs and simmered in a savory tomato sauce.', 'images/meatballs.jpg', 'main course', 'italy', '60', '1 lb ground beef, 1/4 cup breadcrumbs, 1 egg, 2 tbsp grated Parmesan, 1 tsp garlic powder, 1 tsp onion powder, 1 cup marinara sauce, 2 tbsp olive oil, salt and pepper to taste', 'Mix beef, breadcrumbs, Parmesan, egg, garlic, onion, salt, and pepper. Form into balls. Heat oil, brown meatballs on all sides. Add marinara sauce, simmer for 30 minutes. Serve with pasta or bread.'),
(12,'Spaghetti Carbonara', 'Indulge in the classic spaghetti carbonara, a creamy pasta dish made with eggs, crispy pancetta, and Parmesan cheese.', 'images/spaghetti-carbonara.jpg', 'main course', 'italy', '30', '1 lb spaghetti, 4 ounces pancetta, 2 large eggs, 1 cup grated Parmesan, 2 cloves garlic, 1 tbsp olive oil, black pepper to taste', 'Cook spaghetti al dente. Fry pancetta until crispy, add garlic. Whisk eggs, Parmesan, pepper. Drain pasta, return to pot, add pancetta, pour egg mixture, stir quickly. Serve immediately.'),
(13,'Gulab Jamun', 'Indulge in the sweet, spongy, and delectably syrup-soaked gulab jamun, a classic Indian dessert beloved by all.', 'images/gulab-jamun.jpg', 'dessert', 'india', '45', '1 cup powdered milk, 1/4 cup all-purpose flour, 1 tsp baking soda, 2 tbsp ghee, 1/4 cup milk, 1 tsp cardamom powder, 2 cups sugar, 4 cups water, 1 tsp rose water, oil for deep frying', 'Mix powdered milk, flour, and baking soda. Add ghee and milk to form a dough. Rest for 10 minutes. Make small balls from the dough. Heat oil, fry balls until golden brown. Simultaneously, prepare syrup by boiling water and sugar, adding rose water and cardamom. Soak fried balls in warm syrup for 30 minutes. Serve warm.'),
(14,'Rasmalai', 'Delight in Rasmalai, a luxurious Indian dessert of soft, creamy cheese patties soaked in sweet, saffron-infused milk syrup.', 'images/rasmalai.jpg', 'dessert', 'india', '60', 'For the patties: 1 cup paneer (cottage cheese), 3 tbsp powdered sugar, 1 tbsp all-purpose flour, For the syrup: 4 cups whole milk, 1/2 cup sugar, a few strands of saffron, 1/2 tsp cardamom powder, pistachios and almonds for garnishing', 'Knead paneer, sugar, and flour into a smooth dough. Form into small, flat discs. Boil water with a little sugar, gently add patties, cook for 10 minutes, remove. Boil milk, add sugar, saffron, and cardamom. Reduce to a thick cream. Add cooled patties to the milk. Chill for a few hours. Garnish with pistachios and almonds before serving.'),
(15,'Jalebi', 'Experience the crispy, sugary delight of Jalebi, a popular Indian sweet made from fermented batter fried into spirals and soaked in syrup.', 'images/jalebi.jpg', 'dessert', 'india', '50', '1 cup all-purpose flour, 2 tbsp gram flour (besan), 1/2 tsp baking soda, 1 tbsp yogurt, 3/4 cup warm water, 2 cups sugar, 1 cup water, 1/2 tsp cardamom powder, 1 tsp saffron strands, 1 tsp lemon juice, vegetable oil for frying', 'Mix flour, gram flour, and baking soda. Add yogurt and warm water to form a smooth batter. Let it ferment for 24 hours. Make syrup by boiling sugar, water, cardamom, saffron, and lemon juice until sticky. Heat oil, pipe batter in hot oil in spiral shapes. Fry until crisp. Dip immediately in warm syrup for a few seconds. Serve hot.'),
(16,'Tiramisu', 'Experience the delightful layers of espresso-soaked ladyfingers and creamy mascarpone cheese, dusted with cocoa powder.', 'images/tiramisu.jpg', 'dessert', 'italy', '45', '6 egg yolks, 3/4 cup granulated sugar, 1 cup mascarpone cheese, 1 and 1/2 cups heavy cream, 2 cups brewed espresso, cooled, 1/2 cup coffee liqueur (optional), 24 ladyfinger cookies, Cocoa powder, for dusting', 'In a large bowl, beat egg yolks and sugar with an electric mixer until thick and pale. Add mascarpone cheese and beat until smooth. In a separate bowl, whip heavy cream until stiff peaks form. Gently fold whipped cream into mascarpone mixture until smooth. In a shallow dish, combine brewed espresso and coffee liqueur. Dip each ladyfinger into the espresso mixture briefly, making sure not to soak them too much. Arrange a layer of soaked ladyfingers in the bottom of a 9x13 inch dish. Spread half of the mascarpone mixture over the ladyfingers. Repeat with another layer of soaked ladyfingers and the remaining mascarpone mixture. Cover and refrigerate for at least 4 hours, or overnight. Before serving, dust the top with cocoa powder. Slice and serve chilled.'),
(17,'Red Velvet Cake', 'Delight in the luxurious taste and vibrant color of this velvety red velvet cake, layered with cream cheese frosting.', 'images/red-velvet-cake.jpg', 'dessert', 'italy', '60', 'For the cake: 2 and 1/2 cups all-purpose flour, 1 and 1/2 cups granulated sugar, 1 teaspoon baking soda, 1 teaspoon salt, 1 teaspoon cocoa powder, 1 and 1/2 cups vegetable oil, 1 cup buttermilk, room temperature, 2 large eggs, room temperature, 2 tablespoons red food coloring, 1 teaspoon vanilla extract, 1 teaspoon white vinegar, For the frosting: 16 ounces cream cheese, softened, 1/2 cup unsalted butter, softened, 4 cups powdered sugar, 1 teaspoon vanilla extract', 'Preheat your oven to 350°F (175°C). Grease and flour two 9-inch round cake pans. In a large bowl, sift together flour, sugar, baking soda, salt, and cocoa powder. In another bowl, mix together oil, buttermilk, eggs, food coloring, vanilla extract, and vinegar. Gradually add the wet ingredients to the dry ingredients, mixing until smooth and well combined. Divide the batter evenly between the prepared cake pans. Bake for 25 to 30 minutes, or until a toothpick inserted into the center comes out clean. Allow the cakes to cool in the pans for 10 minutes, then transfer to wire racks to cool completely. In a mixing bowl, beat cream cheese and butter until smooth and creamy. Gradually add powdered sugar and vanilla extract, beating until fluffy. Place one cake layer on a serving plate and spread a layer of frosting on top. Place the second cake layer on top and frost the top and sides of the cake with the remaining frosting. Decorate as desired. Chill the cake in the refrigerator for at least 1 hour before serving.'),
(18,'Chongyang Cake', 'Celebrate the Double Ninth Festival with Chongyang Cake, a traditional Chinese steamed cake adorned with nuts and seeds.', 'images/chongyang-cake.jpg', 'dessert', 'china', '90', '2 cups glutinous rice flour, 1 cup rice flour, 3/4 cup sugar, 1/2 tsp baking powder, 1/4 cup vegetable oil, 1 cup water, 1/2 cup mixed nuts and seeds (walnuts, sesame seeds, pumpkin seeds), 1/4 cup dried jujube dates, chopped', 'Combine glutinous rice flour, rice flour, sugar, and baking powder in a bowl. Stir in vegetable oil and water to form a smooth batter. Mix in half of the nuts and seeds. Pour batter into a greased cake pan. Sprinkle the remaining nuts, seeds, and chopped dates on top. Steam over medium heat for 1 hour or until a toothpick inserted into the center comes out clean. Let cool before serving. This cake is traditionally enjoyed during the Double Ninth Festival.');





COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
