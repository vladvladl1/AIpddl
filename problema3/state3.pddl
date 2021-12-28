; Problem description
; Describe one scenario within the domain constraints
; This one describes the Tower of Hanoi with 3 discs
(define (problem pb3)
  (:domain excursionistii)

  ; Objects are candidates to replace free variables
  (:objects e1 e2 e3 e4 c1 c2 barca)

  ; The initial state describe what is currently true
  ; Everything else is considered false
  (:init
    (pozitie stg stg stg stg stg stg stg)
    ;barca ii pe stanga
    ;s(4 0/2 0)
    (valid stg stg stg stg stg stg stg)
     ;s(4 0/0 2)
    (valid stg stg stg stg dr dr stg)
     ;s(0 4/2 0)
    (valid dr dr dr dr stg stg stg)
     ;s(0 4/0 2)
    (valid dr dr dr dr dr dr stg)
    
    ;pentru copil solo
    ;s(4 0/1 1)
    (valid stg stg stg stg dr stg stg)
    (valid stg stg stg stg stg dr stg)
    ;s(0 4 1 1)
    (valid dr dr dr dr dr stg stg)
    (valid dr dr dr dr stg dr stg)
    
    ;s(3 1/2 0)
    (valid stg stg stg dr stg stg stg)
    (valid stg stg dr stg stg stg stg)
    (valid stg dr stg stg stg stg stg)
    (valid dr stg stg stg stg stg stg)
    
    
    
    ;pentru copil solo
     ;s(3 1/1 1)
    (valid stg stg stg dr dr stg stg)
    (valid stg stg dr stg dr stg stg)
    (valid stg dr stg stg dr stg stg)
    (valid dr stg stg stg dr stg stg)
     ;s(3 1/1 1)
    (valid stg stg stg dr stg dr stg)
    (valid stg stg dr stg stg dr stg)
    (valid stg dr stg stg stg dr stg)
    (valid dr stg stg stg stg dr stg)
    
    
    
    ;s(3 1/0 2)
    (valid stg stg stg dr dr dr stg)
    (valid stg stg dr stg dr dr stg)
    (valid stg dr stg stg dr dr stg)
    (valid dr stg stg stg dr dr stg)
    ;s(2 2/2 0)
    (valid stg stg dr dr stg stg stg)
    (valid dr dr stg stg stg stg stg)
    (valid dr stg dr stg stg stg stg)
    (valid dr stg stg dr stg stg stg)
    (valid stg dr stg dr stg stg stg)
    (valid stg dr dr stg stg stg stg)
    
    ;pentru copil solo
    ;s(2 2/1 1)
    (valid stg stg dr dr dr stg stg)
    (valid dr dr stg stg dr stg stg)
    (valid dr stg dr stg dr stg stg)
    (valid dr stg stg dr dr stg stg)
    (valid stg dr stg dr dr stg stg)
    (valid stg dr dr stg dr stg stg)
    (valid stg stg dr dr stg dr stg)
    (valid dr dr stg stg stg dr stg)
    (valid dr stg dr stg stg dr stg)
    (valid dr stg stg dr stg dr stg)
    (valid stg dr stg dr stg dr stg)
    (valid stg dr dr stg stg dr stg)
    
     ;s(2 2/0 2)
    (valid stg stg dr dr dr dr stg)
    (valid dr dr stg stg dr dr stg)
    (valid dr stg dr stg dr dr stg)
    (valid dr stg stg dr dr dr stg)
    (valid stg dr stg dr dr dr stg)
    (valid stg dr dr stg dr dr stg)
    
      ;s(1 3/2 0)
    (valid dr dr dr stg stg stg stg)
    (valid dr dr stg dr stg stg stg)
    (valid dr stg dr dr stg stg stg)
    (valid stg dr dr dr stg stg stg)
    ;s(1 3/0 2)
    (valid dr dr dr stg dr dr stg)
    (valid dr dr stg dr dr dr stg)
    (valid dr stg dr dr dr dr stg)
    (valid stg dr dr dr dr dr stg)
        ;pt copil solo
    ;s(1 3/1 1)
    (valid dr dr dr stg stg dr stg)
    (valid dr dr stg dr stg dr stg)
    (valid dr stg dr dr stg dr stg)
    (valid stg dr dr dr stg dr stg)
    (valid dr dr dr stg dr stg stg)
    (valid dr dr stg dr dr stg stg)
    (valid dr stg dr dr dr stg stg)
    (valid stg dr dr dr dr stg stg)
    
    ;barca ii pe dreapta
    ;s(4 0/2 0)
    (valid stg stg stg stg stg stg dr)
     ;s(4 0/0 2)
    (valid stg stg stg stg dr dr dr)
     ;s(0 4/2 0)
    (valid dr dr dr dr stg stg dr)
     ;s(0 4/0 2)
    (valid dr dr dr dr dr dr dr)
    
        ;pentru copil solo
    ;s(4 0/1 1)
    (valid stg stg stg stg dr stg dr)
    (valid stg stg stg stg stg dr dr)
    ;s(0 4 1 1)
    (valid dr dr dr dr dr stg dr)
    (valid dr dr dr dr stg dr dr)
    
    
        ;pentru copil solo
     ;s(3 1/1 1)
    (valid stg stg stg dr dr stg dr)
    (valid stg stg dr stg dr stg dr)
    (valid stg dr stg stg dr stg dr)
    (valid dr stg stg stg dr stg dr)
     ;s(3 1/1 1)
    (valid stg stg stg dr stg dr dr)
    (valid stg stg dr stg stg dr dr)
    (valid stg dr stg stg stg dr dr)
    (valid dr stg stg stg stg dr dr)
    
    ;s(3 1/2 0)
    (valid stg stg stg dr stg stg dr)
    (valid stg stg dr stg stg stg dr)
    (valid stg dr stg stg stg stg dr)
    (valid dr stg stg stg stg stg dr)
    ;s(3 1/0 2)
    (valid stg stg stg dr dr dr dr)
    (valid stg stg dr stg dr dr dr)
    (valid stg dr stg stg dr dr dr)
    (valid dr stg stg stg dr dr dr)
    ;s(2 2/2 0)
    (valid stg stg dr dr stg stg dr)
    (valid dr dr stg stg stg stg dr)
    (valid dr stg dr stg stg stg dr)
    (valid dr stg stg dr stg stg dr)
    (valid stg dr stg dr stg stg dr)
    (valid stg dr dr stg stg stg dr)
    
        ;s(2 2/0 2)
    (valid stg stg dr dr dr dr dr)
    (valid dr dr stg stg dr dr dr)
    (valid dr stg dr stg dr dr dr)
    (valid dr stg stg dr dr dr dr)
    (valid stg dr stg dr dr dr dr)
    (valid stg dr dr stg dr dr dr)
    
      ;s(1 3/2 0)
    (valid dr dr dr stg stg stg dr)
    (valid dr dr stg dr stg stg dr)
    (valid dr stg dr dr stg stg dr)
    (valid stg dr dr dr stg stg dr)
    ;s(1 3/0 2)
    (valid dr dr dr stg dr dr dr)
    (valid dr dr stg dr dr dr dr)
    (valid dr stg dr dr dr dr dr)
    (valid stg dr dr dr dr dr dr)
    
    ;pt copil solo
    ;s(1 3/1 1)
    (valid dr dr dr stg stg dr dr)
    (valid dr dr stg dr stg dr dr)
    (valid dr stg dr dr stg dr dr)
    (valid stg dr dr dr stg dr dr)
    (valid dr dr dr stg dr stg dr)
    (valid dr dr stg dr dr stg dr)
    (valid dr stg dr dr dr stg dr)
    (valid stg dr dr dr dr stg dr)
        ;pentru copil solo
    ;s(2 2/1 1)
    (valid stg stg dr dr dr stg dr)
    (valid dr dr stg stg dr stg dr)
    (valid dr stg dr stg dr stg dr)
    (valid dr stg stg dr dr stg dr)
    (valid stg dr stg dr dr stg dr)
    (valid stg dr dr stg dr stg dr)
    (valid stg stg dr dr stg dr dr)
    (valid dr dr stg stg stg dr dr)
    (valid dr stg dr stg stg dr dr)
    (valid dr stg stg dr stg dr dr)
    (valid stg dr stg dr stg dr dr)
    (valid stg dr dr stg stg dr dr)
    
   
   )
  
    
  
  ; The goal state describe what we desire to achieve
  (:goal (pozitie dr dr dr dr stg stg stg))
)


















