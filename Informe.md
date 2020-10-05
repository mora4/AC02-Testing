# Actividad 2
Integrante 1:
- Patricio De Solminihac
- pdesolminihac@uc.cl
- 16635191  

Integrante 2:
- Antonio Mora
- amora2@uc.cl
- 16635469


Para los análisis de cobertura de *pdf_pricer.rb* vamos a numerar las cláusulas y los predicados de la siguiente manera:

Los predicados son:  
1. p1: (is_hardcover)
2. p2: (is_frecuent_client)
3. p3: (total_pages > 500 && total_pages_images >= 6)
4. p4: (is_premium_book && (pages_of_text > 300 || total_pages_images >= 5) && ! is_frecuent_client)

Las cláusulas son:
1. c1: is_hardcover
2. c2: is_frecuent_client
3. c3: total_pages > 500
4. c4: total_pages_images >= 6
5. c5: is_premium_book
6. c6: pages_of_text > 300
7. c7: total_pages_images >= 5

## Clause Coverage (CC):  

Los *test requirements* (TR) son:
1. TR1: c1 debe ser True
2. TR2: c1 debe ser False 
3. TR3: c2 debe ser True
4. TR4: c2 debe ser False 
5. TR5: c3 debe ser True
6. TR6: c3 debe ser False 
7. TR7: c4 debe ser True
8. TR8: c4 debe ser False 
9. TR9: c5 debe ser True
10. TR10: c5 debe ser False 
11. TR11: c6 debe ser True
12. TR12: c6 debe ser False 
13. TR13: c7 debe ser True
14. TR14: c7 debe ser False  

Los *test case* son:
1) TC1: Para cumplir con TR1, TR3, TR5, TR7, TR9, TR11:  
- Input: PDF.new(1000, 6, 5, true, true), is_frecuent_client = True
- Output: 10.000

2) TC2: Para cumplir con TR2, TR6, TR10:
- Input: PDF.new(100, 1, 1, false, false), is_frecuent_client = false
- Output: 8.000

3) TC3: Para cumplir con TR4, TR8, TR13:
- Input: PDF.new(500, 1, 3, true, true), is_frecuent_client = false
- Output: 16.000

4) TC4: Para cumplir con TR12, TR14:
- Input: PDF.new(100, 1, 1, true, true), is_frecuent_client = false
- Output: 8000  

## Correlated Active Clause Coverage (CACC):
Los *test requirements* (TR) para cada uno de los predicados son:  
(Nota: Los TR que son iguales a otro TR tienen la misma numeración)  
- Para la clausula mayor c1 en el predicado p1 = c1:
1. TR1: c1 debe ser True
2. TR2: c1 debe ser False
- Para la clausula mayor c2 en el predicado p2 = c2:
3. TR3: c2 debe ser True
4. TR4: c2 debe ser False
- Para la clausula mayor c3 en el predicado p3 = c3 & c4:
5. TR5: c3 debe ser True y c4 debe ser True.
6. TR6: c3 debe ser False y c4 debe ser True.
- Para la clausula mayor c4 en el predicado p3:
7. TR5: c3 debe ser True y c4 debe ser True.
8. TR7: c3 debe ser True y c4 debe ser False.
- Para la clausula mayor c5 en el predicado p4 = c5 & (c6 || c7) & !c2:
9. TR8: c5 debe ser True, c6 debe ser True, c7 debe ser True y c2 debe ser False.
10. TR9: c5 debe ser False, c6 debe ser True, c7 debe ser True y c2 debe ser False.
- Para la clausula mayor c6 en el predicado p4 = c5 & (c6 || c7) & !c2:
11. TR10: c5 debe ser True, c6 debe ser True, c7 debe ser False y c2 debe ser False.
12. TR11: c5 debe ser True, c6 debe ser False, c7 debe ser False y c2 debe ser False.
- Para la clausula mayor c7 en el predicado p4:
13. TR12: c5 debe ser True, c6 debe ser False, c7 debe ser True y c2 debe ser False.
14. TR11: c5 debe ser True, c6 debe ser False, c7 debe ser False y c2 debe ser False.
- Para la clausula mayor c2 en el predicado p4:
15. TR8: c5 debe ser True, c6 debe ser True, c7 debe ser True y c2 debe ser False.
16. TR13: c5 debe ser True, c6 debe ser True, c7 debe ser True y c2 debe ser True.

Los *test case* son:
1) TC1: Para cumplir con TR1, TR3, TR5, TR13:
- c1: True, c2: True, c3: True, c4: True, c5: True, c6: True, c7: True
- Input: PDF.new(1000, 6, 5, true, true), is_frecuent_client = true
- Output: 10.000

2) TC2: Para cumplir con TR2, TR4, TR6, TR8:
- c1: False, c2: False, c3: False, c4: True, c5: True, c6: True, c7: True
- Input: PDF.new(301, 6, 1, false, true), is_frecuent_client = false
- Output: 8.000

3) TC3: Para cumplir con TR7:
 - c1: False, c2: False, c3: True, c4: False, c5: False, c6: True, c7: True
- Input: PDF.new(1000, 0, 5, false, false), is_frecuent_client = false
- Output: 4000

4) TC4: Para cumplir con TR9:
 - c1: False, c2: False, c3: True, c4: False, c5: False, c6: True, c7: True
- Input: PDF.new(501, 1, 3, false, false), is_frecuent_client = false
- Output: 4.000

5) TC5: Para cumplir con TR10:
- c1: False, c2: False, c3: True, c4: False, c5: True, c6: True, c7: False
- Input: PDF.new(501, 1, 1, false, true), is_frecuent_client = false
- Output: 8.000

6) TC6: Para cumplir con TR11:
- c1: False, c2: False, c3: False, c4: False, c5: True, c6: False, c7: False
- Input: PDF.new(50, 0, 0, false, true), is_frecuent_client = false
- Output: 4.000

7) TC7: Para cumplir con TR12:
- c1: False, c2: True, c3: True, c4: False, c5: True, c6: True, c7: True
- Input: PDF.new(1150, 0, 5, false, false), is_frecuent_client = true
- Output: 4.000