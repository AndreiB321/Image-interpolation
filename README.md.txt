1. Nearest-neighbor
In functia nn_2x2 am calculat cel mai apropiat punct si i am atribuit valoarea
aceluia, acelasi lucru a fost realizat la nn_2x2_RGB de 3 ori. In functia 
resize, dupa ce se calculeaza indicii din matricea initiala, se atribuie in 
noua matrice o valoare apropiata. Acelasi lucru este realizat de 3 ori in 
functia resize_RGB.

2. Biliniar
Dupa calcularea coeficientilor interpolarii, se calculeaza valoarea elemntului
matricii folosind formula. (la fel si pentru RGB). In surrounding_points se 
calculeaza valorile intregi care inconjoara punctele date. Pentru resize am
procedat asemanator punctului 1. Pentru rotate se realizeaza matricea de 
rotatie si se utilizeaza formula.

3. Bicubic
Se calculeaza matricele derivatelor punctelor (in functie de x, y, xy) cu
ajutorul functilor de derivare. Utilizand matricile derivatelor se calculeaza
coeficientii de interpolare. Resize-ul si surrounding_points este asemanator
punctului anterior.
