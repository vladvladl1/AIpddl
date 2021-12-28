
(define (domain iepure) ;problema 9 cea cu iepurele


  (:predicates
    (undeiepure ?r ?c) ;predicatul pentru a afla pozitia iepurelui
    (nuecapcana ?r ?c); in poz rand r si col c nu este capcana
    (urmrand ?r1 ?r2) ;se muta din rand r1 in rand r2
    (urmcol ?c1 ?c2) ;se muta din coloana c1 in col c2
  )
 
    (:action misca-plusdr
     :parameters (?randvechi ?randnou ?colvechi ?colnou )
     :precondition (and (urmrand ?randvechi ?randnou)
                        (urmcol ?colvechi ?colnou)
                        (nuecapcana ?randnou ?colnou)        
                        (undeiepure ?randvechi ?colvechi)
                   )
                   
     :effect       (and (not (undeiepure ?randvechi ?colvechi))
                        (undeiepure ?randnou ?colnou)
                   ))
                   
    (:action misca-minusdr
     :parameters (?randvechi ?randnou ?colvechi ?colnou )
     :precondition (and (urmrand ?randnou ?randvechi)
                        (urmcol ?colvechi ?colnou)
                        (nuecapcana ?randnou ?colnou)        
                        (undeiepure ?randvechi ?colvechi)
                   )
                   
     :effect       (and (not (undeiepure ?randvechi ?colvechi))
                        (undeiepure ?randnou ?colnou)
                   ))
                   
    (:action misca-plusstg 
     :parameters (?randvechi ?randnou ?colvechi ?colnou )
     :precondition (and (urmrand ?randvechi ?randnou)
                        (urmcol ?colnou ?colvechi)
                        (nuecapcana ?randnou ?colnou)        
                        (undeiepure ?randvechi ?colvechi)
                   )
                   
     :effect       (and (not (undeiepure ?randvechi ?colvechi))
                        (undeiepure ?randnou ?colnou)
                   ))
                   
    (:action misca-minusstg 
     :parameters (?randvechi ?randnou ?colvechi ?colnou )
     :precondition (and (urmrand ?randnou ?randvechi)
                        (urmcol ?colnou ?colvechi)
                        (nuecapcana ?randnou ?colnou)        
                        (undeiepure ?randvechi ?colvechi)
                   )
                   
     :effect       (and (not (undeiepure ?randvechi ?colvechi))
                        (undeiepure ?randnou ?colnou)
                   ))
                   
                   
)

