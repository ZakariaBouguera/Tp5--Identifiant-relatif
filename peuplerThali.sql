insert into Objectif(code,libelle) values

(1 , 'Ressourcement général'),
(2 , 'Entretien dun bon état de santé');




insert into Soin(code,libelle) values

(1 , 'massages normaux'),
(2 , 'massages relaxants'),
(3 , 'douches à affusion'),
(4 , 'bains bouillonnants algués'),
(5 , 'soin hydratant du visage' ),
(6 , 'enveloppements dalgues'),
(7 , 'douches sous-marines'),
(8 , 'bains hydromassants'),
(9 , 'manucure'),
(10 , 'soin des pieds');



insert into Criteres(num,cure,libelle) values

(1 , 'AM55' , 'tour de taille'),
(2 , 'AM55' , 'tour de hanche'),
(3 , 'AM55' , 'tour de cuisse');



insert into Cure(code,nom,vertus,visiteMedicale,remboursementPossible) values

('AM55' , 'Amincissement' , '' , False , False),
('BE33' , 'Bien-être' , '' , False , False     );


insert into Avoir(cure,objectif) values

('BE33' , 1),
('BE33' , 2 );




insert into Comporter(cure,soin,nb) values

('BE33' , 1 , 3),
('BE33' , 2 , 3    ),
('BE33' , 3 , 3 ),
('BE33' , 4 , 3  ),
('BE33' , 5 , 1  ),
('BE33' , 6 , 3   ),
('BE33' , 7 , 3   ),
('BE33' , 8 , 3   ),
('BE33' , 9 , 1   ),
('BE33' , 10 , 1  );



insert into Saison(code,annee,libelle) values

(1,2021,'Saison hivernale'),
(2,2021,'Basse saison'),
(3,2021,'Moyenne saison'),
(4,2021,'Haute saison');



insert into TariferCure(cure,saison,montant) values

('BE33' , 1 , 440),
('BE33' , 2 , 480  ),
('BE33' , 3 , 520   ),
('BE33' , 4 , 570   );



insert into Situation(code,libelle) values

(1 , 'mer'),
(2 , 'jardin'),
(3 , 'rue');



insert into NatureChambre(code,libelle) values

(1 , 'Chambre standard simple'),
(2 , 'Chambre standard double'),
(3 , 'Chambre confort simple'),
(4 , 'Chambre confort double'),
(5 , 'Suite');




insert into TariferHebergement(saison,annee,natureChambre,situation,tarif) values

(1 , 2021 , 1 , 1 , 200),
(1 , 2021 , 1 , 2 , 190   ),
(1 , 2021 , 1 , 3 , 175   ),

(1 , 2021 , 2 , 1 , 150 ),
(1 , 2021 , 2 , 2 , 140  ),
(1 , 2021 , 2 , 3 , 125  ),

(1 , 2021 , 3 , 1 , 230  ),
(1 , 2021 , 3 , 2 , 220 ),
(1 , 2021 , 3 , 3 , 200 ),

(1 , 2021 , 4 , 1 , 175  ),
(1 , 2021 , 4 , 2 , 165),
(1 , 2021 , 4 , 3 , 150   ),

(1 , 2021 , 5 , 1 , 400   ),
(1 , 2021 , 5 , 2 , 375   ),


(2 , 2021 , 1 , 1 , 220  ),
(2 , 2021 , 1 , 2 , 200 ),
(2 , 2021 , 1 , 3 , 190  ),

(2 , 2021 , 2 , 1 , 170   ),
(2 , 2021 , 2 , 2 , 150  ),
(2 , 2021 , 2 , 3 , 140  ),

(2 , 2021 , 3 , 1 , 250),
(2 , 2021 , 3 , 2 , 230  ),
(2 , 2021 , 3 , 3 , 220  ),

(2 , 2021 , 4 , 1 , 195   ),
(2 , 2021 , 4 , 2 , 175   ),
(2 , 2021 , 4 , 3 , 165   ),

(2 , 2021 , 5 , 1 , 425   ),
(2 , 2021 , 5 , 2 , 400   ),


(3 , 2021 , 1 , 1 , 250   ),
(3 , 2021 , 1 , 2 , 230    ),
(3 , 2021 , 1 , 3 , 220    ),

(3 , 2021 , 2 , 1 , 200  ),
(3 , 2021 , 2 , 2 , 180  ),
(3 , 2021 , 2 , 3 , 170  ),

(3 , 2021 , 3 , 1 , 280 ),
(3 , 2021 , 3 , 2 , 255 ),
(3 , 2021 , 3 , 3 , 245 ),

(3 , 2021 , 4 , 1 , 225  ),
(3 , 2021 , 4 , 2 , 205 ),
(3 , 2021 , 4 , 3 , 195 ),

(3 , 2021 , 5 , 1 , 455 ),
(3 , 2021 , 5 , 2 , 450 ),


(4 , 2021 , 1 , 1 , 270 ),
(4 , 2021 , 1 , 2 , 240 ),
(4 , 2021 , 1 , 3 , 230 ),

(4 , 2021 , 2 , 1 , 230 ),
(4 , 2021 , 2 , 2 , 190),
(4 , 2021 , 2 , 3 , 175 ),

(4 , 2021 , 3 , 1 , 300 ),
(4 , 2021 , 3 , 2 , 265 ),
(4 , 2021 , 3 , 3 , 250  ),

(4 , 2021 , 4 , 1 , 250  ),
(4 , 2021 , 4 , 2 , 200 ),
(4 , 2021 , 4 , 3 , 175 ),

(4 , 2021 , 5 , 1 , 525   ),
(4 , 2021 , 5 , 2 , 455 );



insert into Periode(num,saison,annee,debut,fin) values

(1 , 1 , 2021 , '2021-01-15' , '2021-02-04'),

(1 , 2 , 2021 , '2021-02-19' , '2021-03-25'),
(2 , 2 , 2021 , '2021-10-08' , '2021-12-02'),

(1 , 3 , 2021 , '2021-02-05' , '2021-02-18'),
(2 , 3 , 2021 , '2021-03-26' , '2021-07-08'),
(3 , 3 , 2021 , '2021-09-24' , '2021-10-07'),

(1 , 4 , 2021 , '2021-07-09' , '2021-07-23');


