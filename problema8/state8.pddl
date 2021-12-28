(define (problem pb9)
  (:domain soarece)

  ; Objects are candidates to replace free variables
  (:objects rand1 rand2 rand3 rand4 rand5
  col1 col2 col3 col4 col5 )

  ; The initial state describe what is currently true
  ; Everything else is considered false
  (:init
    (urmrand rand1 rand2)  
    (urmrand rand2 rand3)
    (urmrand rand3 rand4)
    (urmrand rand4 rand5)
    
    (urmcol col1 col2)
    (urmcol col2 col3)
    (urmcol col3 col4)
    (urmcol col4 col5)
    
    (nuecapcana rand1 col1)
    (nuecapcana rand1 col2)
    (nuecapcana rand1 col3)
    (nuecapcana rand1 col5)
    
    (nuecapcana rand2 col1)
    (nuecapcana rand2 col3)
    (nuecapcana rand2 col4)
    (nuecapcana rand2 col5)
    
    (nuecapcana rand3 col2)
    (nuecapcana rand3 col3)
    (nuecapcana rand3 col4)
    
    (nuecapcana rand4 col1)
    (nuecapcana rand4 col2)
    (nuecapcana rand4 col4)
    (nuecapcana rand4 col5)
    
    (nuecapcana rand5 col1)
    (nuecapcana rand5 col2)
    (nuecapcana rand5 col3)
    (nuecapcana rand5 col4)
    (nuecapcana rand5 col5)
   
    (undesoarece rand1 col1)
  )

  ; The goal state describe what we desire to achieve
  (:goal (undesoarece rand3 col3))
)