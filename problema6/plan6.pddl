; Domain description
; Describe the relations and transitions that can occur
; This one describes the Tower of Hanoi puzzle
(define (domain pescaru) ; Domain name must match problem's

  ; Define what the planner must support to execute this domain
  ; Only domain requirements are currently supported
  (:requirements
    :strips                 ; basic preconditions and effects
    :negative-preconditions ; to use not in preconditions
    :equality               ; to use = in preconditions
    :typing :action-costs
  )
  
  

  ; Define the relations
  ; Question mark prefix denotes free variables
  (:predicates
       (pozitie ?c1 ?c2 ?t ?m ?p ?barca)
       (valid ?c1 ?c2 ?t ?m ?p ?barca)
       
  )

   ;muta copil 1 dreapta
   (:action mutacopiladr
      :parameters(?c2 ?t ?m ?p ?barca)
      :precondition (and 
                        (pozitie stg ?c2 ?t ?m ?p stg)
                        (valid dr ?c2 ?t ?m ?p dr)
                    )
      :effect (and 
                        (not (pozitie stg ?c2 ?t ?m ?p stg))
                        (pozitie dr ?c2 ?t ?m ?p dr)
                       ; (increase (total-cost) 1)
              )
  
      )

;muta copil 2 dreapta
   (:action mutacopilbdr
      :parameters(?c1 ?t ?m ?p ?barca)
      :precondition (and 
                        (pozitie ?c1 stg ?t ?m ?p stg)
                        (valid ?c1 dr ?t ?m ?p dr)
                    )
      :effect (and 
                        (not (pozitie ?c1 stg ?t ?m ?p stg))
                        (pozitie ?c1 dr ?t ?m ?p dr)
                     ;   (increase (total-cost) 1)
              )
  
      )

;muta copii  dreapta
   (:action mutacopiidr
      :parameters(?t ?m ?p ?barca)
      :precondition (and 
                        (pozitie stg stg ?t ?m ?p stg)
                        (valid dr dr ?t ?m ?p dr)
                    )
      :effect (and 
                        (not (pozitie stg stg ?t ?m ?p stg))
                        (pozitie dr dr ?t ?m ?p dr)
                     ;   (increase (total-cost) 1)
              )
  
      )

  ;muta tata la deapta
   (:action mutatatadr
      :parameters(?c1 ?c2 ?m ?p ?barca)
      :precondition (and 
                        (pozitie ?c1 ?c2 stg ?m ?p stg)
                        (valid ?c1 ?c2 dr ?m ?p dr)
                    )
      :effect (and 
                        (not (pozitie ?c1 ?c2 stg ?m ?p stg))
                        (pozitie ?c1 ?c2 dr ?m ?p dr)
                       ; (increase (total-cost) 1)
              )
  
      )

  ;muta mama la deapta
   (:action mutamamadr
      :parameters(?c1 ?c2 ?t ?p ?barca)
      :precondition (and 
                        (pozitie ?c1 ?c2 ?t stg ?p stg)
                        (valid ?c1 ?c2 ?t dr ?p dr)
                    )
      :effect (and 
                        (not (pozitie ?c1 ?c2 ?t stg ?p stg))
                        (pozitie ?c1 ?c2 ?t dr ?p dr)
                     ;   (increase (total-cost) 1)
              )
  
      )

  ;muta pescar la deapta
   (:action mutapescardr
      :parameters(?c1 ?c2 ?t ?m ?barca)
      :precondition (and 
                        (pozitie ?c1 ?c2 ?t ?m stg stg)
                        (valid ?c1 ?c2 ?t ?m dr dr)
                    )
      :effect (and 
                        (not (pozitie ?c1 ?c2 ?t ?m stg stg))
                        (pozitie ?c1 ?c2 ?t ?m dr dr)
                      ;  (increase (total-cost) 1)
              )
  
      )


 ;spre stanga acuma
 
 
 
    ;muta copil 1 stanga
   (:action mutacopilastg
      :parameters(?c2 ?t ?m ?p ?barca)
      :precondition (and 
                        (pozitie dr ?c2 ?t ?m ?p dr)
                        (valid stg ?c2 ?t ?m ?p stg)
                    )
      :effect (and 
                        (not (pozitie dr ?c2 ?t ?m ?p dr))
                        (pozitie stg ?c2 ?t ?m ?p stg)
                      ;  (increase (total-cost) 1)
              )
  
      )

;muta copil 2 stanga
   (:action mutacopilbstg
      :parameters(?c1 ?t ?m ?p ?barca)
      :precondition (and 
                        (pozitie ?c1 dr ?t ?m ?p dr)
                        (valid ?c1 stg ?t ?m ?p stg)
                    )
      :effect (and 
                        (not (pozitie ?c1 dr ?t ?m ?p dr))
                        (pozitie ?c1 stg ?t ?m ?p stg)
                       ; (increase (total-cost) 1)
              )
  
      )

;muta copii  stanga
   (:action mutacopiistg
      :parameters(?t ?m ?p ?barca)
      :precondition (and 
                        (pozitie dr dr ?t ?m ?p dr)
                        (valid stg stg ?t ?m ?p stg)
                    )
      :effect (and 
                        (not (pozitie dr dr ?t ?m ?p dr))
                        (pozitie stg stg ?t ?m ?p stg)
                       ; (increase (total-cost) 1)
              )
  
      )

  ;muta tata la stanga
   (:action mutatatastg
      :parameters(?c1 ?c2 ?m ?p ?barca)
      :precondition (and 
                        (pozitie ?c1 ?c2 dr ?m ?p dr)
                        (valid ?c1 ?c2 stg ?m ?p stg)
                    )
      :effect (and 
                        (not (pozitie ?c1 ?c2 dr ?m ?p dr))
                        (pozitie ?c1 ?c2 stg ?m ?p stg)
                       ; (increase (total-cost) 1)
              )
  
      )

  ;muta mama la stanga
   (:action mutamamastg
      :parameters(?c1 ?c2 ?t ?p ?barca)
      :precondition (and 
                        (pozitie ?c1 ?c2 ?t dr ?p dr)
                        (valid ?c1 ?c2 ?t stg ?p stg)
                    )
      :effect (and 
                        (not (pozitie ?c1 ?c2 ?t dr ?p dr))
                        (pozitie ?c1 ?c2 ?t stg ?p stg)
                      ;  (increase (total-cost) 1)
              )
  
      )

  ;muta pescar la stanga
   (:action mutapescarstg
      :parameters(?c1 ?c2 ?t ?m ?barca)
      :precondition (and 
                        (pozitie ?c1 ?c2 ?t ?m dr dr)
                        (valid ?c1 ?c2 ?t ?m stg stg)
                    )
      :effect (and 
                        (not (pozitie ?c1 ?c2 ?t ?m dr dr))
                        (pozitie ?c1 ?c2 ?t ?m stg stg)
                       ; (increase (total-cost) 1)
              )
  
      )





)











