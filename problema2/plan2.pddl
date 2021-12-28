
(define (domain misionaricanibali) ;problema2

   (:predicates
       (pozitie ?m1 ?m2 ?m3 ?c1 ?c2 ?c3 ?barca)
       (valid ?m1 ?m2 ?m3 ?c1 ?c2 ?c3 ?barca)
   )

  
  (:action mm3spredr
      :parameters(?m3 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie stg stg ?m3 ?c1 ?c2 ?c3 stg)
                        (valid dr dr ?m3 ?c1 ?c2 ?c3 dr dr)
                    )
      :effect (and 
                        (not (pozitie stg stg ?m3 ?c1 ?c2 ?c3 stg))
                        (pozitie dr dr ?m3 ?c1 ?c2 ?c3 dr dr)
              )
  
  )
  
    (:action mm2spredr
      :parameters(?m2 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie stg ?m2 stg ?c1 ?c2 ?c3 stg)
                        (valid dr ?m2 dr ?c1 ?c2 ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie stg ?m2 stg ?c1 ?c2 ?c3 stg))
                        (pozitie dr ?m2 dr ?c1 ?c2 ?c3 dr)
              )
  
  )
  
  
    (:action mm1spredr
      :parameters(?m1 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 stg stg ?c1 ?c2 ?c3 stg)
                        (valid ?m1 dr dr ?c1 ?c2 ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 stg stg ?c1 ?c2 ?c3 stg))
                        (pozitie ?m1 dr dr ?c1 ?c2 ?c3 dr)
              )
  
    )


    (:action m3spredr
      :parameters(?m1 ?m2 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 stg ?c1 ?c2 ?c3 stg)
                        (valid ?m1 ?m2 dr ?c1 ?c2 ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 stg ?c1 ?c2 ?c3 stg))
                        (pozitie ?m1 ?m2 dr ?c1 ?c2 ?c3 dr)
              )
  
    )
    
    (:action m2spredr
      :parameters(?m1 ?m3 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 stg ?m3 ?c1 ?c2 ?c3 stg)
                        (valid ?m1 dr ?m3 ?c1 ?c2 ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 stg ?m3 ?c1 ?c2 ?c3 stg))
                        (pozitie ?m1 dr ?m3 ?c1 ?c2 ?c3 dr)
              )
  
    )
    
    
    (:action m1spredr
      :parameters(?m2 ?m3 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie stg ?m2 ?m3 ?c1 ?c2 ?c3 stg)
                        (valid dr ?m2 ?m3 ?c1 ?c2 ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie stg ?m2 ?m3 ?c1 ?c2 ?c3 stg))
                        (pozitie dr ?m2 ?m3 ?c1 ?c2 ?c3 dr)
              )
  
    )

    (:action cc3spredr
      :parameters(?m1 ?m2 ?m3 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 stg stg ?c3 stg)
                        (valid ?m1 ?m2 ?m3 dr dr ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 stg stg ?c3 stg))
                        (pozitie ?m1 ?m2 ?m3 dr dr ?c3 dr)
              )
  
    )
    
    (:action cc2spredr
      :parameters(?m1 ?m2 ?m3 ?c2)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 stg ?c2 stg stg)
                        (valid ?m1 ?m2 ?m3 dr ?c2 dr dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 stg ?c2 stg stg))
                        (pozitie ?m1 ?m2 ?m3 dr ?c2 dr dr)
              )
  
    )
    
    (:action cc1spredr
      :parameters(?m1 ?m2 ?m3 ?c1)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 ?c1 stg stg stg)
                        (valid ?m1 ?m2 ?m3 ?c1 dr dr dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 ?c1 stg stg stg))
                        (pozitie ?m1 ?m2 ?m3 ?c1 dr dr dr)
              )
  
    )

    (:action c1spredr
      :parameters(?m1 ?m2 ?m3 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 stg ?c2 ?c3 stg)
                        (valid ?m1 ?m2 ?m3 dr ?c2 ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 stg ?c2 ?c3 stg))
                        (pozitie ?m1 ?m2 ?m3 dr ?c2 ?c3 dr)
              )
  
    )
    
    (:action c2spredr
      :parameters(?m1 ?m2 ?m3 ?c1 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 ?c1 stg ?c3 stg)
                        (valid ?m1 ?m2 ?m3 ?c1 dr ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 ?c1 stg ?c3 stg))
                        (pozitie ?m1 ?m2 ?m3 ?c1 dr ?c3 dr)
              )
  
    )
    
    (:action c3spredr
      :parameters(?m1 ?m2 ?m3 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 ?c1 ?c2 stg stg)
                        (valid ?m1 ?m2 ?m3 ?c1 ?c2 dr dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 ?c1 ?c2 stg stg))
                        (pozitie ?m1 ?m2 ?m3 ?c1 ?c2 dr dr)
              )
  
    )
    
    (:action mc1spredr
      :parameters(?m2 ?m3 ?c2 ?c3)
      :precondition (and 
                        (pozitie stg ?m2 ?m3 stg ?c2 ?c3 stg)
                        (valid dr ?m2 ?m3 dr ?c2 ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie stg ?m2 ?m3 stg ?c2 ?c3 stg))
                        (pozitie dr ?m2 ?m3 dr ?c2 ?c3 dr)
              )
  
    )
    
    (:action mc2spredr
      :parameters(?m2 ?m3 ?c1 ?c3)
      :precondition (and 
                        (pozitie stg ?m2 ?m3 ?c1 stg ?c3 stg)
                        (valid dr ?m2 ?m3 ?c1 dr ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie stg ?m2 ?m3 ?c1 stg ?c3 stg))
                        (pozitie dr ?m2 ?m3 ?c1 dr ?c3 dr)
              )
  
    )

    (:action mc3spredr
      :parameters(?m2 ?m3 ?c1 ?c2)
      :precondition (and 
                        (pozitie stg ?m2 ?m3 ?c1 ?c2 stg stg)
                        (valid dr ?m2 ?m3 ?c1 ?c2 dr dr)
                    )
      :effect (and 
                        (not (pozitie stg ?m2 ?m3 ?c1 ?c2 stg stg))
                        (pozitie dr ?m2 ?m3 ?c1 ?c2 dr dr)
              )
  
    )
    
    (:action mc4spredr
      :parameters(?m1 ?m3 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 stg ?m3 stg ?c2 ?c3 stg)
                        (valid ?m1 dr ?m3 dr ?c2 ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 stg ?m3 stg ?c2 ?c3 stg))
                        (pozitie ?m1 dr ?m3 dr ?c2 ?c3 dr)
              )
  
    )
    
    
    (:action mc5spredr
      :parameters(?m1 ?m3 ?c1 ?c3)
      :precondition (and 
                        (pozitie ?m1 stg ?m3 ?c1 stg ?c3 stg)
                        (valid ?m1 dr ?m3 ?c1 dr ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 stg ?m3 ?c1 stg ?c3 stg))
                        (pozitie ?m1 dr ?m3 ?c1 dr ?c3 dr)
              )
  
    )
    
    
    (:action mc6spredr
      :parameters(?m1 ?m3 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?m1 stg ?m3 ?c1 ?c2 stg stg)
                        (valid ?m1 dr ?m3 ?c1 ?c2 dr dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 stg ?m3 ?c1 ?c2 stg stg))
                        (pozitie ?m1 dr ?m3 ?c1 ?c2 dr dr)
              )
  
    )
    
    (:action mc7spredr
      :parameters(?m1 ?m2 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 stg stg ?c2 ?c3 stg)
                        (valid ?m1 ?m2 dr dr ?c2 ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 stg stg ?c2 ?c3 stg))
                        (pozitie ?m1 ?m2 dr dr ?c2 ?c3 dr)
              )
  
    )
    
    (:action mc8spredr
      :parameters(?m1 ?m2 ?c1 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 stg ?c1 stg ?c3 stg)
                        (valid ?m1 ?m2 dr ?c1 dr ?c3 dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 stg ?c1 stg ?c3 stg))
                        (pozitie ?m1 ?m2 dr ?c1 dr ?c3 dr)
              )
  
    )
    
    (:action mc9spredr
      :parameters(?m1 ?m2 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?m1 ?m2 stg ?c1 ?c2 stg stg)
                        (valid ?m1 ?m2 dr ?c1 ?c2 dr dr)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 stg ?c1 ?c2 stg stg))
                        (pozitie ?m1 ?m2 dr ?c1 ?c2 dr dr)
              )
  
    )


 ;miscarea pe care o executa pentru a travesa de pe partea stanga pe dreapta
 ;pentru oricare ar stare posibiila si combinatie intre canibali si misioanri
 
 
 
 ; in acest moment urmeaza codul necesar pentru a traversa de pe partea stanga 
 ;pe partea dreapta a raului




  (:action mm3sprestg
      :parameters(?m3 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie dr dr ?m3 ?c1 ?c2 ?c3 dr)
                        (valid stg stg ?m3 ?c1 ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie dr dr ?m3 ?c1 ?c2 ?c3 dr))
                        (pozitie stg stg ?m3 ?c1 ?c2 ?c3 stg)
              )
  
  )
  
    (:action mm2sprestg
      :parameters(?m2 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie dr ?m2 dr ?c1 ?c2 ?c3 dr)
                        (valid stg ?m2 stg ?c1 ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie dr ?m2 dr ?c1 ?c2 ?c3 dr))
                        (pozitie stg ?m2 stg ?c1 ?c2 ?c3 stg)
              )
  
  )
  
  
    (:action mm1sprestg
      :parameters(?m1 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 dr dr ?c1 ?c2 ?c3 dr)
                        (valid ?m1 stg stg ?c1 ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 dr dr ?c1 ?c2 ?c3 dr))
                        (pozitie ?m1 stg stg ?c1 ?c2 ?c3 stg)
              )
  
    )


    (:action m3sprestg
      :parameters(?m1 ?m2 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 dr ?c1 ?c2 ?c3 dr)
                        (valid ?m1 ?m2 stg ?c1 ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 dr ?c1 ?c2 ?c3 dr))
                        (pozitie ?m1 ?m2 stg ?c1 ?c2 ?c3 stg)
              )
  
    )
    
    (:action m2sprestg
      :parameters(?m1 ?m3 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 dr ?m3 ?c1 ?c2 ?c3 dr)
                        (valid ?m1 stg ?m3 ?c1 ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 dr ?m3 ?c1 ?c2 ?c3 dr))
                        (pozitie ?m1 stg ?m3 ?c1 ?c2 ?c3 stg)
              )
  
    )
    
    
    (:action m1sprestg
      :parameters(?m2 ?m3 ?c1 ?c2 ?c3)
      :precondition (and 
                        (pozitie dr ?m2 ?m3 ?c1 ?c2 ?c3 dr)
                        (valid stg ?m2 ?m3 ?c1 ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie dr ?m2 ?m3 ?c1 ?c2 ?c3 dr))
                        (pozitie stg ?m2 ?m3 ?c1 ?c2 ?c3 stg)
              )
  
    )

    (:action cc3sprestg
      :parameters(?m1 ?m2 ?m3 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 dr dr ?c3 dr)
                        (valid ?m1 ?m2 ?m3 stg stg ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 dr dr ?c3 dr))
                        (pozitie ?m1 ?m2 ?m3 stg stg ?c3 stg)
              )
  
    )
    
    (:action cc2sprestg
      :parameters(?m1 ?m2 ?m3 ?c2)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 dr ?c2 dr dr)
                        (valid ?m1 ?m2 ?m3 stg ?c2 stg stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 dr ?c2 dr dr))
                        (pozitie ?m1 ?m2 ?m3 stg ?c2 stg stg)
              )
  
    )
    
    (:action cc1sprestg
      :parameters(?m1 ?m2 ?m3 ?c1)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 ?c1 dr dr dr)
                        (valid ?m1 ?m2 ?m3 ?c1 stg stg stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 ?c1 dr dr dr))
                        (pozitie ?m1 ?m2 ?m3 ?c1 stg stg stg)
              )
  
    )

    (:action c1sprestg
      :parameters(?m1 ?m2 ?m3 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 dr ?c2 ?c3 dr)
                        (valid ?m1 ?m2 ?m3 stg ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 dr ?c2 ?c3 dr))
                        (pozitie ?m1 ?m2 ?m3 stg ?c2 ?c3 stg)
              )
  
    )
    
    (:action c2sprestg
      :parameters(?m1 ?m2 ?m3 ?c1 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 ?c1 dr ?c3 dr)
                        (valid ?m1 ?m2 ?m3 ?c1 stg ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 ?c1 dr ?c3 dr))
                        (pozitie ?m1 ?m2 ?m3 ?c1 stg ?c3 stg)
              )
  
    )
    
    (:action c3sprestg
      :parameters(?m1 ?m2 ?m3 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?m1 ?m2 ?m3 ?c1 ?c2 dr dr)
                        (valid ?m1 ?m2 ?m3 ?c1 ?c2 stg stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 ?m3 ?c1 ?c2 dr dr))
                        (pozitie ?m1 ?m2 ?m3 ?c1 ?c2 stg stg)
              )
  
    )
    
    (:action mc1sprestg
      :parameters(?m2 ?m3 ?c2 ?c3)
      :precondition (and 
                        (pozitie dr ?m2 ?m3 dr ?c2 ?c3 dr)
                        (valid stg ?m2 ?m3 stg ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie dr ?m2 ?m3 dr ?c2 ?c3 dr))
                        (pozitie stg ?m2 ?m3 stg ?c2 ?c3 stg)
              )
  
    )
    
    (:action mc2sprestg
      :parameters(?m2 ?m3 ?c1 ?c3)
      :precondition (and 
                        (pozitie dr ?m2 ?m3 ?c1 dr ?c3 dr)
                        (valid stg ?m2 ?m3 ?c1 stg ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie dr ?m2 ?m3 ?c1 dr ?c3 dr))
                        (pozitie stg ?m2 ?m3 ?c1 stg ?c3 stg)
              )
  
    )

    (:action mc3sprestg
      :parameters(?m2 ?m3 ?c1 ?c2)
      :precondition (and 
                        (pozitie dr ?m2 ?m3 ?c1 ?c2 dr dr)
                        (valid stg ?m2 ?m3 ?c1 ?c2 stg stg)
                    )
      :effect (and 
                        (not (pozitie dr ?m2 ?m3 ?c1 ?c2 dr dr))
                        (pozitie stg ?m2 ?m3 ?c1 ?c2 stg stg)
              )
  
    )
    
    (:action mc4sprestg
      :parameters(?m1 ?m3 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 dr ?m3 dr ?c2 ?c3 dr)
                        (valid ?m1 stg ?m3 stg ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 dr ?m3 dr ?c2 ?c3 dr))
                        (pozitie ?m1 stg ?m3 stg ?c2 ?c3 stg)
              )
  
    )
    
    
    (:action mc5sprestg
      :parameters(?m1 ?m3 ?c1 ?c3)
      :precondition (and 
                        (pozitie ?m1 dr ?m3 ?c1 dr ?c3 dr)
                        (valid ?m1 stg ?m3 ?c1 stg ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 dr ?m3 ?c1 dr ?c3 dr))
                        (pozitie ?m1 stg ?m3 ?c1 stg ?c3 stg)
              )
  
    )
    
    
    (:action mc6sprestg
      :parameters(?m1 ?m3 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?m1 dr ?m3 ?c1 ?c2 dr dr)
                        (valid ?m1 stg ?m3 ?c1 ?c2 stg stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 dr ?m3 ?c1 ?c2 dr dr))
                        (pozitie ?m1 stg ?m3 ?c1 ?c2 stg stg)
              )
  
    )
    
    (:action mc7sprestg
      :parameters(?m1 ?m2 ?c2 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 dr dr ?c2 ?c3 dr)
                        (valid ?m1 ?m2 stg stg ?c2 ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 dr dr ?c2 ?c3 dr))
                        (pozitie ?m1 ?m2 stg stg ?c2 ?c3 stg)
              )
  
    )
    
    (:action mc8spretg
      :parameters(?m1 ?m2 ?c1 ?c3)
      :precondition (and 
                        (pozitie ?m1 ?m2 dr ?c1 dr ?c3 dr)
                        (valid ?m1 ?m2 stg ?c1 stg ?c3 stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 dr ?c1 dr ?c3 dr))
                        (pozitie ?m1 ?m2 stg ?c1 stg ?c3 stg)
              )
  
    )
    
    (:action mc9sprestg
      :parameters(?m1 ?m2 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?m1 ?m2 dr ?c1 ?c2 dr dr)
                        (valid ?m1 ?m2 stg ?c1 ?c2 stg stg)
                    )
      :effect (and 
                        (not (pozitie ?m1 ?m2 dr ?c1 ?c2 dr dr))
                        (pozitie ?m1 ?m2 stg ?c1 ?c2 stg stg)
              )
  
    )
    )

