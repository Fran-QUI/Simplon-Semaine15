def initialiser
	$nombre_ia = rand(100)
	$nombre_coups = 0
	jeu
end

def jeu
	victoire = 0
	#puts ("Cheat mode : le nombre a trouver est " + $nombre_ia.to_s	 )

	while victoire == 0
		
		$nombre_coups = $nombre_coups + 1

		puts ("Quel nombre entre 1 et 100 ?")
		nombre_joueur = gets.chomp.to_i

		if nombre_joueur > $nombre_ia
			puts("trop haut")
		elsif nombre_joueur < $nombre_ia
			puts("trop bas")
		else 
			puts("c'est gagné en #{$nombre_coups} coups")
			victoire = 1
		end

	end

		puts ("Une Nouvelle Partie ? O/N")
		if gets.chomp.to_s == "O"
			initialiser
		end
end

initialiser


	
