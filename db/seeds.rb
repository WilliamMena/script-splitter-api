# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ipsum1 = "Lorem ipsum dolor amet gastropub hashtag four loko, actually food truck chartreuse godard post-ironic. Locavore quinoa cold-pressed chicharrones craft beer kale chips. Franzen truffaut pok pok flexitarian. Fanny pack keffiyeh try-hard, cray gochujang williamsburg woke.

Single-origin coffee succulents actually, heirloom blue bottle next level before they sold out freegan tacos VHS tousled. Mumblecore hot chicken +1 sriracha heirloom cronut iPhone you probably haven't heard of them vaporware schlitz. Blog chambray copper mug hell of pok pok semiotics tacos. Distillery echo park vegan bushwick gentrify knausgaard tumblr. Shabby chic meditation intelligentsia yr fashion axe iPhone tumblr direct trade taiyaki letterpress cornhole YOLO."

ipsum2 = "Lorem ipsum dolor amet laboris shabby chic mustache pok pok. Ut tilde four loko meditation, small batch retro kinfolk 3 wolf moon. Small batch cronut subway tile retro est qui chia stumptown veniam hell of. Jianbing snackwave cold-pressed XOXO, forage cliche four dollar toast cred prism coloring book hot chicken.

Deep v vexillologist duis, iceland eiusmod brunch 3 wolf moon ramps cardigan williamsburg vice commodo tofu officia. Twee pop-up offal, pour-over brooklyn sint pariatur vaporware actually quis incididunt stumptown edison bulb truffaut. Prism esse try-hard salvia, ut ut brunch. 8-bit quinoa tousled williamsburg forage. Tofu et cliche selvage VHS taiyaki small batch forage consequat. Lo-fi kitsch cronut meditation schlitz sunt sed, beard pickled health goth 8-bit commodo. Cred asymmetrical enamel pin jianbing, gentrify whatever quis ad qui pitchfork tbh enim tousled flannel hammock.

Gastropub exercitation veniam, snackwave paleo est id. Schlitz hot chicken mlkshk next level, whatever aliqua ramps kinfolk live-edge. Adipisicing cold-pressed tbh, fingerstache celiac flannel esse pop-up deep v consequat eu organic veniam. Keffiyeh semiotics duis VHS, banjo celiac pork belly meh fanny pack. Paleo fingerstache banjo four dollar toast, squid tofu velit wolf. Kitsch aliquip polaroid voluptate, bicycle rights quis salvia pop-up bitters anim selfies everyday carry."

william = User.create(username: "William", password: "password")
william.scripts.create(title: "Test Script", text: ipsum1)

rocio = User.create(username: "Rocio", password: "password")
rocio.scripts.create(title: "Test Script 2", text: ipsum2)
