INSERT INTO CATEGORIAS (nombre, abbr, imagen) VALUE
						("BEBES","BEB", "url5");
                        
INSERT INTO PRODUCTOS (nombre, precio, disponible ) VALUES
					  ("SANDALIAS BOB TORONJA", 19.90, true);


SELECT * FROM CATEGORIAS INNER JOIN PRODUCTOS ON CATEGORIAS.ID = PRODUCTOS.CATEGORIA_ID;

SELECT * FROM CATEGORIAS LEFT JOIN PRODUCTOS ON CATEGORIAS.ID = PRODUCTOS.CATEGORIA_ID;

SELECT * FROM CATEGORIAS RIGHT JOIN PRODUCTOS ON CATEGORIAS.ID = PRODUCTOS.CATEGORIA_ID;

-- SELECCIONA TODOS LOS NOMBRES CUYO ALIAS SERA NOMBRE DEL PRODUCTO, PRECIOS Y DISPONIBLE DE 
-- CATEGORIAS INTERSECCION PRODUCCION CUANDO CAT.ID = PROD.CATEGORIA_ID DONDE EL NOMBRE DE LA CATEGORIA
-- SEA ZAPATO
SELECT cat.nombre as 'nombre del producto', prod.precio, prod.disponible
FROM CATEGORIAS AS cat JOIN PRODUCTOS as prod ON cat.ID = prod.CATEGORIA_ID 
WHERE cat.nombre = "ZAPATO";
