; Problem description
; Describe one scenario within the domain constraints
; This one describes the Tower of Hanoi with 3 discs
(define (problem pb2)
  (:domain misionaricanibali)

  ; Objects are candidates to replace free variables
  (:objects m1 m2 m3 c1 c2 c3 barca)

  ; The initial state describe what is currently true
  ; Everything else is considered false
  (:init
    (pozitie stg stg stg stg stg stg stg)
    ;dreapta
    ;s(3 0/3 0)
    (valid stg stg stg stg stg stg dr)
    ;s(0 3/0 3)
    (valid dr dr dr dr dr dr dr)
    ;s(0 3/3 0)
    (valid dr dr dr stg stg stg dr)
    ;s(3 0/0 3)
    (valid stg stg stg dr dr dr dr)
    ;s(3 0/2 1)
    (valid stg stg stg stg stg dr dr)
    (valid stg stg stg stg dr stg dr)
    (valid stg stg stg dr stg stg dr)
    ;s(3 0/1 2)
    (valid stg stg stg dr stg dr dr)
    (valid stg stg stg stg dr dr dr)
    (valid stg stg stg dr dr stg dr)
    ;s(0 3/1 2)
    (valid dr dr dr dr dr stg dr)
    (valid dr dr dr dr stg dr dr)
    (valid dr dr dr stg dr dr dr)
    ;s(0 3/2 1)
    (valid dr dr dr stg stg dr dr)
    (valid dr dr dr stg dr stg dr)
    (valid dr dr dr dr stg stg dr)
    ;s(2 1/2 1)
    (valid dr stg stg stg stg dr dr)
    (valid dr stg stg stg dr stg dr)
    (valid dr stg stg dr stg stg dr)
    
    (valid stg stg dr stg stg dr dr)
    (valid stg stg dr stg dr stg dr)
    (valid stg stg dr dr stg stg dr)
    
    (valid stg dr stg stg stg dr dr)
    (valid stg dr stg stg dr stg dr)
    (valid stg dr stg dr stg stg dr)
    ;s(1 2/1 2)
    (valid stg dr dr dr dr stg dr)
    (valid stg dr dr dr stg dr dr)
    (valid stg dr dr stg dr dr dr)
    
    (valid dr dr stg dr dr stg dr)
    (valid dr dr stg dr stg dr dr)
    (valid dr dr stg stg dr dr dr)
    
    (valid dr stg dr dr dr stg dr)
    (valid dr stg dr dr stg dr dr)
    (valid dr stg dr stg dr dr dr)
    
    ;stanga
        ;s(3 0/3 0)
    (valid stg stg stg stg stg stg stg)
    ;s(0 3/0 3)
    (valid dr dr dr dr dr dr stg)
    ;s(0 3/3 0)
    (valid dr dr dr stg stg stg stg)
    ;s(3 0/0 3)
    (valid stg stg stg dr dr dr stg)
    ;s(3 0/2 1)
    (valid stg stg stg stg stg dr stg)
    (valid stg stg stg stg dr stg stg)
    (valid stg stg stg dr stg stg stg)
    ;s(3 0/1 2)
    (valid stg stg stg dr stg dr stg)
    (valid stg stg stg stg dr dr stg)
    (valid stg stg stg dr dr stg stg)
    ;s(0 3/1 2)
    (valid dr dr dr dr dr stg stg)
    (valid dr dr dr dr stg dr stg)
    (valid dr dr dr stg dr dr stg)
    ;s(0 3/2 1)
    (valid dr dr dr stg stg dr stg)
    (valid dr dr dr stg dr stg stg)
    (valid dr dr dr dr stg stg stg)
    ;s(2 1/2 1)
    (valid dr stg stg stg stg dr stg)
    (valid dr stg stg stg dr stg stg)
    (valid dr stg stg dr stg stg stg)
    
    (valid stg stg dr stg stg dr stg)
    (valid stg stg dr stg dr stg stg)
    (valid stg stg dr dr stg stg stg)
    
    (valid stg dr stg stg stg dr stg)
    (valid stg dr stg stg dr stg stg)
    (valid stg dr stg dr stg stg stg)
    ;s(1 2/1 2)
    (valid stg dr dr dr dr stg stg)
    (valid stg dr dr dr stg dr stg)
    (valid stg dr dr stg dr dr stg)
    
    (valid dr dr stg dr dr stg stg)
    (valid dr dr stg dr stg dr stg)
    (valid dr dr stg stg dr dr stg)
    
    (valid dr stg dr dr dr stg stg)
    (valid dr stg dr dr stg dr stg)
    (valid dr stg dr stg dr dr stg)
    
  )

  ; The goal state describe what we desire to achieve
  (:goal (pozitie dr dr dr dr dr dr dr))
)


