# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
question = [
	"Quelle est la couleur du cheval blanc d'Henry IV ?",
	"Bacchus se verse à boire la moitié d’une bouteille pleine de bon vin. Il revient vers la bouteille et boit le tiers de ce qui reste. Puis il retourne boire le quart du dernier reste. Le contenu restant de la bouteille lui permet de se remplir en n un dernier
	verre de 33 cL. Quelle est la capacité de cette bouteille ?",
	"Au moment où elle met au monde son quatrième enfant, une mère (professeur
	de maths) a 3 fois la somme des âges de ses 3 premiers enfants. Sachant que dans
	8 ans son âge sera la somme de ceux de ses 4 enfants, quel est son âge actuel ?",
	"Si x, y et z sont trois nombres non nuls tels que 1 / z = 1 / x + 1 / y, alors x =...",
	"Les trois nombres entiers positifs non nuls et différents a, b, c véri ent
	a + b + c = 6. Que vaut : 1 / (a + b) + 1 / (b + c) + 1 / (a + c) ?"
]
A = ["Noir", "66 cL", "36 ans","y z / (z – y)","17 / 30"]
B = ["Gris", "100 cL", "35 ans", "y z / (y – z)", "27 / 40"]
C = ["Blanc", "120 cL", "33 ans", "(y – z) / y z", "37 / 50"]
D = ["je ne sais pas", "132 cL", "30 ans", "(z – y) /y z", "47 / 60"]

solution = [
	"C","D","A","B","D"
]

description = [
	"blanc comme son nom l'indique",
	"Au lieu de se lancer dans des équations ou des calculs de fractions, on peut essayer
	de véri er si l’on obtient le 33 cL  nal à partir d’une des valeurs pro posées.

	Un premier essai astucieux est de partir de la valeur du milieu parmi les proposi-
	tions : ici 120 cL.

	Bacchus verse 60 cL, il reste 60 cL. Il boit le tiers du reste soit 20 cL. Il reste 40 cL
	dans la bouteille. Il boit le quart de ce reste soit 10 cL, il reste 30 cL dans la bouteille
	et non 33 cL. Notre choix c. n’est pas le bon, mais comme il donne un peu moins
	que ce qu’il faut, on peut abandonner les essais pour une valeur moindre, et faire
	un autre essai avec la valeur du d. un peu supérieure : 132 cL.
	Bacchus verse 66 cL, il reste 66 cL. Il boit le tiers du reste soit 22 cL, il reste 44 cL
	dans la bouteille. Il boit le quart du reste, soit 11 cL. Il reste 33 cL dans la bouteille :
	c’est ce qu’on souhaitait, la bonne réponse est d.",
	"Partons de la valeur 36 ans.
	Elle est bien divisible par 3, car 36 c’est 3 × 12. Dans 8 ans la mère aura 44 ans.
	Chaque enfant aura 8 ans de plus, et à quatre cela fera 8 × 4 = 32 ans de plus, la
	somme de leurs âges sera aussi 12 + 32 = 44. On a trouvé, la solu tion est le a.",
	"Chacun sait que 1⁄2 = 1⁄4 + 1⁄4.On peut donc imaginer x = 4, y = 4 et z = 2 et voir s’il
	n’y a pas qu’une seule des formules proposées qui serait valable pour ces valeurs
	concrètes là.
	a. y z / (z – y) = 8 / (– 2) = – 4 ; b. y z / (y – z) = 8 / 2 = 4 ; c. (y – z) / y z = 2 / 8 = 1⁄4 ;
	d. (z – y) / y z = – 2 / 8 = – 1⁄4 ; z – y = 2 ; seule la formule b. donne la bonne valeur
	de x = 4. La solution est b.",
	"On peut imaginer a = 1, b = 2, c = 3, on a bien a + b + c = 6.
	On obtient alors 1 / (a + b) + 1 / (b + c) + 1 / (a + c) = 1 / 3 + 1 / 5 + 1 / 4
	= (20 + 12 + 15) / 60 = 47 / 60.
	La bonne réponse est donc d."

]


for i in 0...question.length
	Question.create(niveau: "première", question: "#{question[i]}", A: "#{A[i]}", B: "#{B[i]}", C: "#{C[i]}", D: "#{D[i]}", timeout: 30)
	Solution.create(solution: "#{solution[i]}")
	Description.create(solution_id:"#{i+1}",question_id: "#{i+1}", description: "#{description[i]}")
end