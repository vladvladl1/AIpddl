(define (problem pb9)
  (:domain iepure)

  ; Objects are candidates to replace free variables
  (:objects rand1 rand2 rand3 rand4 rand5 rand6 rand7 rand8 
  col1 col2 col3 col4 col5 col6 col7 col8 )

  ; The initial state describe what is currently true
  ; Everything else is considered false
  (:init
    (urmrand rand1 rand2)  
    (urmrand rand2 rand3)
    (urmrand rand3 rand4)
    (urmrand rand4 rand5)
    (urmrand rand5 rand6) 
    (urmrand rand6 rand7) 
    (urmrand rand7 rand8) 
    
    (urmcol col1 col2)
    (urmcol col2 col3)
    (urmcol col3 col4)
    (urmcol col4 col5)
    (urmcol col5 col6)
    (urmcol col6 col7)
    (urmcol col7 col8)
    
    (nuecapcana rand1 col1)
    (nuecapcana rand1 col2)
    (nuecapcana rand1 col3)
    (nuecapcana rand1 col5)
    (nuecapcana rand1 col6)
    (nuecapcana rand1 col7)
    (nuecapcana rand1 col8)
    
    
    (nuecapcana rand2 col1)
    (nuecapcana rand2 col3)
    (nuecapcana rand2 col4)
    (nuecapcana rand2 col5)
    (nuecapcana rand2 col6)
    (nuecapcana rand2 col7)
    (nuecapcana rand2 col8)
    
    
    (nuecapcana rand3 col1)
    (nuecapcana rand3 col2)
    (nuecapcana rand3 col3)
    (nuecapcana rand3 col4)
    (nuecapcana rand3 col5)
    (nuecapcana rand3 col7)
    
    
    (nuecapcana rand4 col1)
    (nuecapcana rand4 col2)
    (nuecapcana rand4 col3)
    (nuecapcana rand4 col4)
    (nuecapcana rand4 col6)
    (nuecapcana rand4 col7)
    (nuecapcana rand4 col8)
    
    
    (nuecapcana rand5 col1)
    (nuecapcana rand5 col2)
    (nuecapcana rand5 col3)
    (nuecapcana rand5 col5)
    (nuecapcana rand5 col6)
    (nuecapcana rand5 col7)
    (nuecapcana rand5 col8)
   
    
    (nuecapcana rand6 col2)
    (nuecapcana rand6 col3)
    (nuecapcana rand6 col4)
    (nuecapcana rand6 col5)
    (nuecapcana rand6 col7)
    (nuecapcana rand6 col8)
    
    (nuecapcana rand7 col1)
    (nuecapcana rand7 col3)
    (nuecapcana rand7 col4)
    (nuecapcana rand7 col5)
    (nuecapcana rand7 col6)
    (nuecapcana rand7 col7)
    (nuecapcana rand7 col8)
    
    (nuecapcana rand8 col1)
    (nuecapcana rand8 col2)
    (nuecapcana rand8 col3)
    (nuecapcana rand8 col4)
    (nuecapcana rand8 col5)
    (nuecapcana rand8 col6)
    (nuecapcana rand8 col7)
  
   
    (undeiepure rand1 col8)
  )

  ; The goal state describe what we desire to achieve
  (:goal (undeiepure rand8 col5))
)