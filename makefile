#Juan del Pozo Ávila
#Necesito 9 clases

ejecucion: ./jar/Programa.jar
	java -jar ./jar/Programa.jar


./jar/Programa.jar: ./bin/fp2/poo/pfpoojuadelavi/Main.class \
	./bin/fp2/poo/pfpoojuadelavi/Saldo.class \
	./bin/fp2/poo/pfpoojuadelavi/Dni.class \
	./bin/fp2/poo/pfpoojuadelavi/NumeroDeCuenta.class \
	./bin/fp2/poo/pfpoojuadelavi/Excepciones/NumeroDeCuentaIncorrectaExcepcion.class \
	./bin/fp2/poo/pfpoojuadelavi/Excepciones/DniIncorrectoExcepcion.class \
	./bin/fp2/poo/utilidades/SaldoInterfaz.class \
	./bin/fp2/poo/utilidades/NumeroDeCuentaInterfaz.class \
	./bin/fp2/poo/utilidades/DniInterfaz.class

	jar cvfe ./jar/Programa.jar fp2.poo.pfpoojuadelavi.Main \
	-C ./bin ./fp2/poo/pfpoojuadelavi/Main.class \
	-C ./bin ./fp2/poo/pfpoojuadelavi/Saldo.class \
	-C ./bin ./fp2/poo/pfpoojuadelavi/Dni.class \
	-C ./bin ./fp2/poo/pfpoojuadelavi/NumeroDeCuenta.class \
	-C ./bin ./fp2/poo/pfpoojuadelavi/Excepciones/NumeroDeCuentaIncorrectaExcepcion.class \
	-C ./bin ./fp2/poo/pfpoojuadelavi/Excepciones/DniIncorrectoExcepcion.class \
	-C ./bin ./fp2/poo/utilidades/SaldoInterfaz.class \
	-C ./bin ./fp2/poo/utilidades/NumeroDeCuentaInterfaz.class \
	-C ./bin ./fp2/poo/utilidades/DniInterfaz.class





#Main

./bin/fp2/poo/pfpoojuadelavi/Main.class: ./src/fp2/poo/pfpoojuadelavi/Main.java \
	./bin/fp2/poo/pfpoojuadelavi/Saldo.class \
	./bin/fp2/poo/pfpoojuadelavi/Dni.class \
	./bin/fp2/poo/pfpoojuadelavi/NumeroDeCuenta.class \
	./bin/fp2/poo/pfpoojuadelavi/Excepciones/NumeroDeCuentaIncorrectaExcepcion.class \
	./bin/fp2/poo/pfpoojuadelavi/Excepciones/DniIncorrectoExcepcion.class \
	./bin/fp2/poo/utilidades/SaldoInterfaz.class \
	./bin/fp2/poo/utilidades/NumeroDeCuentaInterfaz.class \
	./bin/fp2/poo/utilidades/DniInterfaz.class

	javac -cp ./bin -d ./bin ./src/fp2/poo/pfpoojuadelavi/Main.java


#Las 3 clases

./bin/fp2/poo/pfpoojuadelavi/Saldo.class: ./src/fp2/poo/pfpoojuadelavi/Saldo.java \
	./bin/fp2/poo/utilidades/SaldoInterfaz.class

	javac -cp ./bin -d ./bin ./src/fp2/poo/pfpoojuadelavi/Saldo.java



./bin/fp2/poo/pfpoojuadelavi/Dni.class: ./src/fp2/poo/pfpoojuadelavi/Dni.java \
	./bin/fp2/poo/utilidades/DniInterfaz.class \
	./bin/fp2/poo/pfpoojuadelavi/Excepciones/DniIncorrectoExcepcion.class

	javac -cp ./bin -d ./bin ./src/fp2/poo/pfpoojuadelavi/Dni.java

./bin/fp2/poo/pfpoojuadelavi/NumeroDeCuenta.class: ./src/fp2/poo/pfpoojuadelavi/NumeroDeCuenta.java \
	./bin/fp2/poo/utilidades/NumeroDeCuentaInterfaz.class \
	./bin/fp2/poo/pfpoojuadelavi/Excepciones/NumeroDeCuentaIncorrectaExcepcion.class

	javac -cp ./bin -d ./bin ./src/fp2/poo/pfpoojuadelavi/NumeroDeCuenta.java

#Las 2 excepciones

./bin/fp2/poo/pfpoojuadelavi/Excepciones/NumeroDeCuentaIncorrectaExcepcion.class: ./src/fp2/poo/pfpoojuadelavi/Excepciones/NumeroDeCuentaIncorrectaExcepcion.java

	javac -d ./bin ./src/fp2/poo/pfpoojuadelavi/Excepciones/NumeroDeCuentaIncorrectaExcepcion.java

./bin/fp2/poo/pfpoojuadelavi/Excepciones/DniIncorrectoExcepcion.class: ./src/fp2/poo/pfpoojuadelavi/Excepciones/DniIncorrectoExcepcion.java

	javac -d ./bin ./src/fp2/poo/pfpoojuadelavi/Excepciones/DniIncorrectoExcepcion.java


#Las 3 interfaces

./bin/fp2/poo/utilidades/SaldoInterfaz.class: ./src/fp2/poo/utilidades/SaldoInterfaz.java

	javac -d ./bin ./src/fp2/poo/utilidades/SaldoInterfaz.java

./bin/fp2/poo/utilidades/NumeroDeCuentaInterfaz.class: ./src/fp2/poo/utilidades/NumeroDeCuentaInterfaz.java \
	./bin/fp2/poo/pfpoojuadelavi/Excepciones/NumeroDeCuentaIncorrectaExcepcion.class

	javac -cp ./bin -d ./bin ./src/fp2/poo/utilidades/NumeroDeCuentaInterfaz.java


./bin/fp2/poo/utilidades/DniInterfaz.class: ./src/fp2/poo/utilidades/DniInterfaz.java \
	./bin/fp2/poo/pfpoojuadelavi/Excepciones/DniIncorrectoExcepcion.class

	javac -cp ./bin -d ./bin ./src/fp2/poo/utilidades/DniInterfaz.java


