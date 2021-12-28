(define (domain husband)

   (:predicates
       (pozitie ?f1 ?f2 ?b1 ?b2 ?barca)
       (valid ?f1 ?f2 ?b1 ?b2 ?barca)
   )
  
  ;barbatii singuri 
     (:action barbatadr
      :parameters(?f1 ?f2 ?b2)
      :precondition (and 
                        (pozitie ?f1 ?f2 stg ?b2 stg)
                        (valid ?f1 ?f2 dr ?b2 dr)
                    )
      :effect (and 
                        (not (pozitie ?f1 ?f2 stg ?b2 stg))
                        (pozitie ?f1 ?f2 dr ?b2 dr)
              )
  
      )
      
      
    (:action barbatbdr
      :parameters(?f1 ?f2 ?b1)
      :precondition (and 
                        (pozitie ?f1 ?f2 ?b1 stg stg)
                        (valid ?f1 ?f2 ?b1 dr dr)
                    )
      :effect (and 
                        (not (pozitie ?f1 ?f2 ?b1 stg stg))
                        (pozitie ?f1 ?f2 ?b1 dr dr)
              )
  
      )

;femeile singure 
     (:action femeieadr
      :parameters(?f2 ?b1 ?b2)
      :precondition (and 
                        (pozitie stg ?f2 ?b1 ?b2 stg)
                        (valid dr ?f2 ?b1 ?b2 dr)
                    )
      :effect (and 
                        (not (pozitie stg ?f2 ?b1 ?b2 stg))
                        (pozitie dr ?f2 ?b1 ?b2 dr)
              )
  
      )
      
      
    (:action femeiebdr
      :parameters(?f1 ?b1 ?b2)
      :precondition (and 
                        (pozitie ?f1 stg ?b1 ?b2 stg)
                        (valid ?f1 stg ?b1 ?b2 dr)
                    )
      :effect (and 
                        (not (pozitie ?f1 stg ?b1 ?b2 stg))
                        (pozitie ?f1 stg ?b1 ?b2 dr)
              )
  
      )
      
      
      ;barbat barbat spre dreapta
      (:action barbatbarbatdr
      :parameters(?f1 ?f2)
      :precondition (and 
                        (pozitie ?f1 ?f2 stg stg stg)
                        (valid ?f1 ?f2 dr dr dr)
                    )
      :effect (and 
                        (not (pozitie ?f1 ?f2 stg stg stg))
                        (pozitie ?f1 ?f2 dr dr dr)
              )
  
      )
      
      ;femeie femeie spre dreapta

    (:action femeiefemeiedr
      :parameters(?b1 ?b2)
      :precondition (and 
                        (pozitie stg stg ?b1 ?b2 stg)
                        (valid dr dr ?b1 ?b2 dr)
                    )
      :effect (and 
                        (not (pozitie stg stg ?b1 ?b2 stg))
                        (pozitie dr dr ?b1 ?b2 dr)
              )
  
      )
      
        
      ;femeie barbat spre dreapta

    (:action femeiebarbatadr
      :parameters(?f1 ?b1)
      :precondition (and 
                        (pozitie ?f1 stg ?b1 stg stg)
                        (valid ?f1 dr ?b1 dr dr)
                    )
      :effect (and 
                        (not (pozitie ?f1 stg ?b1 stg stg))
                        (pozitie ?f1 dr ?b1 dr dr)
              )
  
      )
      
       (:action femeiebarbatbdr
      :parameters(?f2 ?b2)
      :precondition (and 
                        (pozitie stg ?f2 stg ?b2 stg)
                        (valid dr ?f2 dr ?b2 dr)
                    )
      :effect (and 
                        (not (pozitie stg ?f2 stg ?b2 stg))
                        (pozitie dr ?f2 dr ?b2 dr)
              )
  
      )
      
      
      
      
      
      
      ;spre stanga
      
      
      ;barbatii singuri 
     (:action barbatastg
      :parameters(?f1 ?f2 ?b2)
      :precondition (and 
                        (pozitie ?f1 ?f2 dr ?b2 dr)
                        (valid ?f1 ?f2 stg ?b2 stg)
                    )
      :effect (and 
                        (not (pozitie ?f1 ?f2 dr ?b2 dr))
                        (pozitie ?f1 ?f2 stg ?b2 stg)
              )
  
      )
      
      
    (:action barbatbstg
      :parameters(?f1 ?f2 ?b1)
      :precondition (and 
                        (pozitie ?f1 ?f2 ?b1 dr dr)
                        (valid ?f1 ?f2 ?b1 stg stg)
                    )
      :effect (and 
                        (not (pozitie ?f1 ?f2 ?b1 dr dr))
                        (pozitie ?f1 ?f2 ?b1 stg stg)
              )
  
      )

;femeile singure 
     (:action femeieastg
      :parameters(?f2 ?b1 ?b2)
      :precondition (and 
                        (pozitie dr ?f2 ?b1 ?b2 dr)
                        (valid stg ?f2 ?b1 ?b2 stg)
                    )
      :effect (and 
                        (not (pozitie dr ?f2 ?b1 ?b2 dr))
                        (pozitie stg ?f2 ?b1 ?b2 stg)
              )
  
      )
      
      
    (:action femeiebstg
      :parameters(?f1 ?b1 ?b2)
      :precondition (and 
                        (pozitie ?f1 dr ?b1 ?b2 dr)
                        (valid ?f1 stg ?b1 ?b2 stg)
                    )
      :effect (and 
                        (not (pozitie ?f1 dr ?b1 ?b2 dr))
                        (pozitie ?f1 stg ?b1 ?b2 stg)
              )
  
      )
      
      
      ;barbat barbat spre stanga
      (:action barbatbarbatstg
      :parameters(?f1 ?f2)
      :precondition (and 
                        (pozitie ?f1 ?f2 dr dr dr)
                        (valid ?f1 ?f2 stg stg stg)
                    )
      :effect (and 
                        (not (pozitie ?f1 ?f2 dr dr dr))
                        (pozitie ?f1 ?f2 stg stg stg)
              )
  
      )
      
      ;femeie femeie spre stanga

    (:action femeiefemeiestg
      :parameters(?b1 ?b2)
      :precondition (and 
                        (pozitie dr dr ?b1 ?b2 dr)
                        (valid stg stg ?b1 ?b2 stg)
                    )
      :effect (and 
                        (not (pozitie dr dr ?b1 ?b2 dr))
                        (pozitie stg stg ?b1 ?b2 stg)
              )
  
      )
      
        
      ;femeie barbat spre stanga

    (:action femeiebarbatastg
      :parameters(?f1 ?b1)
      :precondition (and 
                        (pozitie ?f1 dr ?b1 dr dr)
                        (valid ?f1 stg ?b1 stg stg)
                    )
      :effect (and 
                        (not (pozitie ?f1 dr ?b1 dr dr))
                        (pozitie ?f1 stg ?b1 stg stg)
              )
  
      )
      
       (:action femeiebarbatbstg
      :parameters(?f2 ?b2)
      :precondition (and 
                        (pozitie dr ?f2 dr ?b2 dr)
                        (valid stg ?f2 stg ?b2 stg)
                    )
      :effect (and 
                        (not (pozitie dr ?f2 dr ?b2 dr))
                        (pozitie stg ?f2 stg ?b2 stg)
              )
  
      )
      
      
)
