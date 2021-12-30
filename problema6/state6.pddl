; Problem description
; Describe one scenario within the domain constraints
; This one describes the Tower of Hanoi with 3 discs
(define (problem pb6)
  (:domain pescaru)

  ; Objects are candidates to replace free variables
  (:objects c1 c2 t m p barca)

  ; The initial state describe what is currently true
  ; Everything else is considered false
  (:init
  
    ; Discs are smaller than pegs
    (pozitie stg stg stg stg stg stg)
    
    ;toti 0
    ;s(00/00/00)
    (valid stg stg stg stg stg stg)
    
    
    ;1 singur 1
    ;s(00/00/11)
    (valid stg stg stg stg dr dr)
    ;s(00/01/01)
    (valid stg stg stg dr stg dr)
    ;s(00/10/01)
    (valid stg stg dr stg stg dr)
    ;s(01/00/01)
    (valid stg dr stg stg stg dr)
    ;s(10/00/01)
    (valid dr stg stg stg stg dr)
    
    
    ;2 de 1
    ;cu pescaru
    ;s(00/01/11)
    (valid stg stg stg dr dr dr)
    ;s(00/10/11)
    (valid stg stg dr stg dr dr)
    ;s(01/00/11)
    (valid stg dr stg stg dr dr)
    ;s(10/00/11)
    (valid dr stg stg stg dr dr)
    
    ;cu mama
    ;s(00/11/01)
    (valid stg stg dr dr stg dr)
    ;s(01/01/01)
    (valid stg dr stg dr stg dr)
    ;s(10/01/01)
    (valid dr stg stg dr stg dr)
    
    ;cu tata
    ;s(01/10/01)
    (valid stg dr dr stg stg dr)
    ;s(10/10/01)
    (valid dr stg dr stg stg dr)
    
    ;copii
    ;s(11/00/01)
    (valid dr dr stg stg stg dr)
    
    
    ;3 de 1
    ;pescar+mama+restu
    ;s(00/11/11)
    (valid stg stg dr dr dr dr)
    ;s(01/01/11)
    (valid stg dr stg dr dr dr)
    ;s(10/01/11)
    (valid dr stg stg dr dr dr)
   
    ;pescar+tata+restu
    ;s(01/10/11)
    (valid stg dr dr stg dr dr)
    ;s(10/10/11)
    (valid dr stg dr stg dr dr)
    
    ;pescar+copii
    ;s(01/10/11)
    (valid dr dr stg stg dr dr)
    
    ;mama+tata+restu
    ;s(01/11/01)
    (valid stg dr dr dr stg dr)
    ;s(10/11/01)
    (valid dr stg dr dr stg dr)
    
    ;tata + copii
    ;s(11/10/01)
    (valid dr dr dr stg stg dr)
    
    ;4 de 1
    ;pesca+mama+tata+restu
    ;s(01/11/11)
    (valid stg dr dr dr dr dr)
    ;s(10/11/11)
    (valid dr stg dr dr dr dr)
    
    ;pescar+tata+copii
    ;s(11/10/11)
    (valid dr dr dr stg dr dr)
    
    ;pescar+mama+copii
    ;s(11/01/11)
    (valid dr dr stg dr dr dr)
    
    ;tot familionu
    ;s(11/11/01)
    (valid dr dr dr dr stg dr)
    
    ;toti pe dreapta
    ;s(11/11/11)
    (valid dr dr dr dr dr dr)
    
    
   
    
    
    ;la fel da cu barca pe stanga
    
    
    
    
    
    
    
    (valid stg stg stg stg dr stg)
    ;s(00/01/01)
    (valid stg stg stg dr stg stg)
    ;s(00/10/01)
    (valid stg stg dr stg stg stg)
    ;s(01/00/01)
    (valid stg dr stg stg stg stg)
    ;s(10/00/01)
    (valid dr stg stg stg stg stg)
    
    
    ;2 de 1
    ;cu pescaru
    ;s(00/01/11)
    (valid stg stg stg dr dr stg)
    ;s(00/10/11)
    (valid stg stg dr stg dr stg)
    ;s(01/00/11)
    (valid stg dr stg stg dr stg)
    ;s(10/00/11)
    (valid dr stg stg stg dr stg)
    
    ;cu mama
    ;s(00/11/01)
    (valid stg stg dr dr stg stg)
    ;s(01/01/01)
    (valid stg dr stg dr stg stg)
    ;s(10/01/01)
    (valid dr stg stg dr stg stg)
    
    ;cu tata
    ;s(01/10/01)
    (valid stg dr dr stg stg stg)
    
    ;s(10/10/01)
    (valid dr stg dr stg stg stg)
    
    ;copii
    ;s(11/00/01)
    (valid dr dr stg stg stg stg)
    
    
    ;3 de 1
    ;pescar+mama+restu
    ;s(00/11/11)
    (valid stg stg dr dr dr stg)
    ;s(01/01/11)
    (valid stg dr stg dr dr stg)
    ;s(10/01/11)
    (valid dr stg stg dr dr stg)
   
    ;pescar+tata+restu
    ;s(01/10/11)
    (valid stg dr dr stg dr stg)
    ;s(10/10/11)
    (valid dr stg dr stg dr stg)
    
    ;pescar+copii
    ;s(01/10/11)
    (valid dr dr stg stg dr stg)
    ;s(00/11/00)
    (valid stg stg dr dr stg stg)
    
    ;mama+tata+copi
    ;s(01/11/01)
    (valid stg dr dr dr stg stg)
    ;s(10/11/01)
    (valid dr stg dr dr stg stg)
    
    ;tata + copii
    ;s(11/10/01)
    (valid dr dr dr stg stg stg)
    
    ;4 de 1
    ;pesca+mama+tata+restu
    ;s(01/11/11)
    (valid stg dr dr dr dr stg)
    ;s(10/11/11)
    (valid dr stg dr dr dr stg)
    
    
    ;pescar+tata+copii
    ;s(11/10/11)
    (valid dr dr dr stg dr stg)
    
    ;pescar+mama+copii
    ;s(11/01/11)
    (valid dr dr stg dr dr stg)
    
    ;tot familionu
    ;s(11/11/01)
    (valid dr dr dr dr stg stg)
    
    
    ;stari noi
   ; (valid stg dr dr dr dr dr)
    
  )

  ; The goal state describe what we desire to achieve
  (:goal (and
    ; Discs stacked on peg3
    (pozitie dr dr dr dr stg stg)
  ))
)
















