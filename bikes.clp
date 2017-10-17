(deffacts paths
        
        path A B 10 bike
        path A C 8 walk
        path A E 10 bike

        path B A 10 bike
        path B C 5 walk
        path B F 6 walk

        path C A 8 walk
        path C B 5 walk
        path C D 6 walk
        path C G 6 walk
        path C H 6 walk

        path D C 6 walk
        path D H 14 bike

        path E A 10 bike
        path E I 20 walk
        path E J 9 bike

        path F B 6 walk
        path F K 10 walk
        path F L 6 walk

        path G C 6 walk
        path G H 8 walk
        path G L 9 walk
        path G M 12 walk

        path H C 6 walk
        path H D 14 bike
        path H G 8 walk
        path H I 12 bike

        path I H 12 bike
        path I E 20 walk
        path I O 2 walk

        path J E 9 bike
        path J O 7 bike

        path K F 10 walk
        path K L 2 bike

        path L F 6 walk
        path L G 9 walk
        path L K 2 bike
        path L M 7 bike
        path L P 6 bike

        path M G 12 walk
        path M L 7 bike
        path M Q 2 walk

        path N O 8 bike
        path N Q 6 walk

        path O I 2 walk
        path O J 7 bike
        path O N 8 bike

        path P L 6 bike
        path P Q 2 walk
        path P R 4 bike

        path Q M 2 walk
        path Q N 6 walk
        path Q P 2 walk
        path Q R 3 walk

        path R P 4 bike
        path R Q 3 walk
        )

(deffacts points
        point A bike
        point B bike
        point C normal
        point D normal
        point E normal
        point F normal
        point G normal
        point H bike
        point I normal
        point J bike
        point K bike
        point L normal
        point M bike
        point N bike
        point O normal
        point P normal
        point Q normal
        point R bike
        )


(deffacts neighbourhoods
        neighbourhood A 1
        neighbourhood B 2
        neighbourhood C 2
        neighbourhood D 2
        neighbourhood E 2
        neighbourhood J 2
        neighbourhood F 3
        neighbourhood G 3
        neighbourhood H 3
        neighbourhood I 3
        neighbourhood O 3
        neighbourhood K 4
        neighbourhood L 4
        neighbourhood M 4
        neighbourhood N 4
        neighbourhood P 5
        neighbourhood Q 5
        neighbourhood R 6
        )