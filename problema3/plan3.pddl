(define (domain excursionistii)

   (:predicates
       (pozitie ?e1 ?e2 ?e3 ?e4 ?c1 ?c2 ?barca)
       (valid ?e1 ?e2 ?e3 ?e4 ?c1 ?c2 ?barca)
   )
   ;muta excursionistii spre dreapta
       (:action mutaex1adr
      :parameters(?e2 ?e3 ?e4 ?c1 ?c2)
      :precondition (and 
                        (pozitie stg ?e2 ?e3 ?e4 ?c1 ?c2 stg)
                        (valid dr ?e2 ?e3 ?e4 ?c1 ?c2 dr)
                    )
      :effect (and 
                        (not (pozitie stg ?e2 ?e3 ?e4 ?c1 ?c2 stg))
                        (pozitie dr ?e2 ?e3 ?e4 ?c1 ?c2 dr)
              )
  
      )
      
        (:action mutaex1bdr
      :parameters(?e1 ?e3 ?e4 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?e1 stg ?e3 ?e4 ?c1 ?c2 stg)
                        (valid ?e1 dr ?e3 ?e4 ?c1 ?c2 dr)
                    )
      :effect (and 
                        (not (pozitie ?e1 stg ?e3 ?e4 ?c1 ?c2 stg))
                        (pozitie ?e1 dr ?e3 ?e4 ?c1 ?c2 dr)
              )
  
      )
      
        (:action mutaex1cdr
      :parameters(?e1 ?e2 ?e4 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?e1 ?e2 stg ?e4 ?c1 ?c2 stg)
                        (valid ?e1 ?e2 dr ?e4 ?c1 ?c2 dr)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 stg ?e4 ?c1 ?c2 stg))
                        (pozitie ?e1 ?e2 dr ?e4 ?c1 ?c2 dr)
              )
  
      )
      
        (:action mutaex1ddr
      :parameters(?e1 ?e2 ?e3 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?e1 ?e2 ?e3 stg ?c1 ?c2 stg)
                        (valid ?e1 ?e2 ?e3 dr ?c1 ?c2 dr)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 ?e3 stg ?c1 ?c2 stg))
                        (pozitie ?e1 ?e2 ?e3 dr ?c1 ?c2 dr)
              )
  
      )
        
        ;muta excursionistii spre stanga
       (:action mutaex1astg
      :parameters(?e2 ?e3 ?e4 ?c1 ?c2)
      :precondition (and 
                        (pozitie dr ?e2 ?e3 ?e4 ?c1 ?c2 dr)
                        (valid stg ?e2 ?e3 ?e4 ?c1 ?c2 stg)
                    )
      :effect (and 
                        (not (pozitie dr ?e2 ?e3 ?e4 ?c1 ?c2 dr))
                        (pozitie stg ?e2 ?e3 ?e4 ?c1 ?c2 stg)
              )
  
      )
      
        (:action mutaex1bstg
      :parameters(?e1 ?e3 ?e4 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?e1 dr ?e3 ?e4 ?c1 ?c2 dr)
                        (valid ?e1 stg ?e3 ?e4 ?c1 ?c2 stg)
                    )
      :effect (and 
                        (not (pozitie ?e1 dr ?e3 ?e4 ?c1 ?c2 dr))
                        (pozitie ?e1 stg ?e3 ?e4 ?c1 ?c2 stg)
              )
  
      )
      
        (:action mutaex1cstg
      :parameters(?e1 ?e2 ?e4 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?e1 ?e2 dr ?e4 ?c1 ?c2 dr)
                        (valid ?e1 ?e2 stg ?e4 ?c1 ?c2 stg)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 dr ?e4 ?c1 ?c2 dr))
                        (pozitie ?e1 ?e2 stg ?e4 ?c1 ?c2 stg)
              )
  
      )
      
        (:action mutaex1dstg
      :parameters(?e1 ?e2 ?e3 ?c1 ?c2)
      :precondition (and 
                        (pozitie ?e1 ?e2 ?e3 dr ?c1 ?c2 dr)
                        (valid ?e1 ?e2 ?e3 stg ?c1 ?c2 stg)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 ?e3 dr ?c1 ?c2 dr))
                        (pozitie ?e1 ?e2 ?e3 stg ?c1 ?c2 stg)
              )
  
      )
    
    ;muta copii spre dreapta
     (:action mutacopiidr
      :parameters(?e1 ?e2 ?e3 ?e4)
      :precondition (and 
                        (pozitie ?e1 ?e2 ?e3 ?e4 stg stg stg)
                        (valid ?e1 ?e2 ?e3 ?e4 dr dr dr)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 ?e3 ?e4 stg stg stg))
                        (pozitie ?e1 ?e2 ?e3 ?e4 dr dr dr)
              )
  
      )
      ;muta copii spre stanga
     (:action mutacopiistg
      :parameters(?e1 ?e2 ?e3 ?e4)
      :precondition (and 
                        (pozitie ?e1 ?e2 ?e3 ?e4 dr dr dr)
                        (valid ?e1 ?e2 ?e3 ?e4 stg stg stg)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 ?e3 ?e4 dr dr dr))
                        (pozitie ?e1 ?e2 ?e3 ?e4 stg stg stg)
              )
  
      )
      
     ;muta un singur copil spre dreapta

    (:action mutacopiladr
      :parameters(?e1 ?e2 ?e3 ?e4 ?c2)
      :precondition (and 
                        (pozitie ?e1 ?e2 ?e3 ?e4 stg ?c2 stg)
                        (valid ?e1 ?e2 ?e3 ?e4 dr ?c2 dr)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 ?e3 ?e4 stg ?c2 stg))
                        (pozitie ?e1 ?e2 ?e3 ?e4 dr ?c2 dr)
              )
  
      )
      
           (:action mutacopilbdr
      :parameters(?e1 ?e2 ?e3 ?e4 ?c1)
      :precondition (and 
                        (pozitie ?e1 ?e2 ?e3 ?e4 ?c1 stg stg)
                        (valid ?e1 ?e2 ?e3 ?e4 ?c1 dr dr)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 ?e3 ?e4 ?c1 stg stg))
                        (pozitie ?e1 ?e2 ?e3 ?e4 ?c1 dr dr)
              )
  
      )
      
      ;muta aun singur copil spre stanga
      
      (:action mutacopilastg
      :parameters(?e1 ?e2 ?e3 ?e4 ?c2)
      :precondition (and 
                        (pozitie ?e1 ?e2 ?e3 ?e4 dr ?c2 dr)
                        (valid ?e1 ?e2 ?e3 ?e4 stg ?c2 stg)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 ?e3 ?e4 dr ?c2 dr))
                        (pozitie ?e1 ?e2 ?e3 ?e4 stg ?c2 stg)
              )
  
      )
      
           (:action mutacopilbstg
      :parameters(?e1 ?e2 ?e3 ?e4 ?c1)
      :precondition (and 
                        (pozitie ?e1 ?e2 ?e3 ?e4 ?c1 dr dr)
                        (valid ?e1 ?e2 ?e3 ?e4 ?c1 stg stg)
                    )
      :effect (and 
                        (not (pozitie ?e1 ?e2 ?e3 ?e4 ?c1 dr dr))
                        (pozitie ?e1 ?e2 ?e3 ?e4 ?c1 stg stg)
              )
  
      )





)











