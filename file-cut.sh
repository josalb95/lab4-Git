
#!/bin/bash

# Nombre de los archivos fastq
Sample1="./Sample1.fastq"
Sample2="./Sample2.fastq"
Sample3="./Sample3.fastq"
Sample4="./Sample4.fastq"


# Función para calcular el tercio del total de líneas
calcular_tercio() {
    total_lineas=$(wc -l < "$1")
    echo $((total_lineas / 3))
}

# Obtener el tercio superior de cada archivo
tercio1=$(calcular_tercio "$Sample1")
tercio2=$(calcular_tercio "$Sample2")
tercio3=$(calcular_tercio "$Sample3")
tercio4=$(calcular_tercio "$Sample4")

# Guardar el tercio superior en archivos nuevos
head -n "$tercio1" "$Sample1" > tercio_superior_archivo1.fastq
head -n "$tercio2" "$Sample2" > tercio_superior_archivo2.fastq
head -n "$tercio3" "$Sample3" > tercio_superior_archivo3.fastq
head -n "$tercio4" "$Sample4" > tercio_superior_archivo4.fastq


