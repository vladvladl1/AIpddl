; Problem description
; Describe one scenario within the domain constraints
; This one describes the Tower of Hanoi with 3 discs
(define (problem pb4)
  (:domain husband)

  ; Objects are candidates to replace free variables
  (:objects f1 f2 b1 b2 barca)

  ; The initial state describe what is currently true
  ; Everything else is considered false
  (:init
    (pozitie stg stg stg stg stg)
    ;pentru barca pe stanga
    ;s(1 1/1 1)
    (valid dr dr dr dr stg)
    ;s(1 0/1 1)
    (valid dr stg dr dr stg)
    ;s(0 1/1 1)
    (valid stg dr dr dr stg)
    ;s(0 0/1 1)
    (valid stg stg dr dr stg)
    ;s(1 1/0 0)
    (valid dr dr stg stg stg)
    ;s(1 0/0 0)
    (valid dr stg stg stg stg)
    ;s(0 1/0 0)
    (valid stg dr stg stg stg)
    ;s(0 0/0 0)
    (valid stg stg stg stg stg)
    ;s(0 1/0 1)
    (valid stg dr stg dr stg)
    ;s(1 0/1 0)
    (valid dr stg dr stg stg)
    
        ;pentru barca pe dreapta
    ;s(1 1/1 1)
    ;s(1 1/1 1)
    (valid dr dr dr dr dr)
    ;s(1 0/1 1)
    (valid dr stg dr dr dr)
    ;s(0 1/1 1)
    (valid stg dr dr dr dr)
    ;s(0 0/1 1)
    (valid stg stg dr dr dr)
    ;s(1 1/0 0)
    (valid dr dr stg stg dr)
    ;s(1 0/0 0)
    (valid dr stg stg stg dr)
    ;s(0 1/0 0)
    (valid stg dr stg stg dr)
    ;s(0 0/0 0)
    (valid stg stg stg stg dr)
    ;s(0 1/0 1)
    (valid stg dr stg dr dr)
    ;s(1 0/1 0)
    (valid dr stg dr stg dr)
    
    
    
    
    
   )
  
    
  
  ; The goal state describe what we desire to achieve
  (:goal (pozitie dr dr dr dr dr))
)


















