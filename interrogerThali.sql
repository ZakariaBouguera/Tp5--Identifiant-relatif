"1 " select Cure.code, nom, libelle from Cure inner join Avoir on Cure.code = Avoir.cure inner join Objectif on Avoir.objectif = Objectif.code where nom = 'Bien-être';
"2 " select cure, nb, libelle,nom from Comporter inner join Soin on Comporter.soin = Soin.code inner join Cure on Comporter.cure=Cure.code where nom= 'Bien-être';
"3 " select cure, sum(nb) from Comporter where cure = 'BE33';
"4 " select Saison.libelle, NatureChambre.libelle, avg(tarif) from TariferHebergement inner join Saison on TariferHebergement.saison = Saison.code inner join NatureChambre on TariferHebergement.natureChambre = NatureChambre.code where Saison.libelle = 'Basse saison' and NatureChambre.libelle = 'Chambre standard double';

