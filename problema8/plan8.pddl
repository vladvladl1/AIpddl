
(define (domain soarece) ;problema 8 cea cu soarecele


  (:predicates
    (undesoarece ?r ?c) ;predicatul pentru a afla pozitia soarecelui
    (nuecapcana ?r ?c); in poz rand r si col c nu este capcana
    (urmrand ?r1 ?r2) ;se muta din rand r1 in rand r2
    (urmcol ?c1 ?c2) ;se muta din coloana c1 in col c2
    
  )
 
    (:action misca-sus 
     :parameters (?randvechi ?randnou ?coloana)
     :precondition (and (urmrand ?randvechi ?randnou)
                        (nuecapcana ?randnou ?coloana)        
                        (undesoarece ?randvechi ?coloana)
                   )
                   
     :effect       (and (not (undesoarece ?randvechi ?coloana))
                        (undesoarece ?randnou ?coloana)
                   ))
                   
    (:action misca-jos 
     :parameters (?randvechi ?randnou ?coloana)
     :precondition (and (urmrand ?randnou ?randvechi)
                        (nuecapcana ?randnou ?coloana)        
                        (undesoarece ?randvechi ?coloana)
                   )
                   
     :effect       (and (not (undesoarece ?randvechi ?coloana))
                        (undesoarece ?randnou ?coloana)
                   ))
    (:action misca-dreapta 
     :parameters (?rand ?colvechi ?colnou)
     :precondition (and (urmcol ?colvechi ?colnou)
                        (nuecapcana ?rand ?colnou)        
                        (undesoarece ?rand ?colvechi)
                   )
                   
     :effect       (and (not (undesoarece ?rand ?colvechi))
                        (undesoarece ?rand ?colnou)
                   ))
                   
    (:action misca-stanga 
     :parameters (?rand ?colvechi ?colnou)
     :precondition (and (urmcol ?colnou ?colvechi)
                        (nuecapcana ?rand ?colnou)        
                        (undesoarece ?rand ?colvechi)
                   )
                   
     :effect       (and (not (undesoarece ?rand ?colvechi))
                        (undesoarece ?rand ?colnou)
                   ))
                   
                   
)

