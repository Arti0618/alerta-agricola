clc;
clear;

disp("SISTEMA DE ALERTA AGRICOLA");

cultivo = input("Escribe el cultivo: ", "s");
problema = input("Describe el problema: ", "s");
ubicacion = input("Escribe la ubicacion: ", "s");

problemaMinusculas = lower(problema);

if contains(problemaMinusculas, "plaga") || ...
        contains(problemaMinusculas, "muchas plantas") || ...
        contains(problemaMinusculas, "avance rapido")

    prioridad = "Alta";

elseif contains(problemaMinusculas, "manchas") || ...
        contains(problemaMinusculas, "hojas amarillas")

    prioridad = "Media";

else
    prioridad = "Baja";
end

fprintf("\nREPORTE CLASIFICADO\n");
fprintf("Cultivo: %s\n", cultivo);
fprintf("Problema: %s\n", problema);
fprintf("Ubicacion: %s\n", ubicacion);
fprintf("Prioridad: %s\n", prioridad);

carpetaReportes = "../reportes";
numeroReporte = 1;

nombreArchivo = sprintf("reporte-%03d.txt", numeroReporte);
rutaArchivo = fullfile(carpetaReportes, nombreArchivo);

while isfile(rutaArchivo)
    numeroReporte = numeroReporte + 1;
    nombreArchivo = sprintf("reporte-%03d.txt", numeroReporte);
    rutaArchivo = fullfile(carpetaReportes, nombreArchivo);
end

archivo = fopen(rutaArchivo, "w");

if archivo == -1
    error("No se pudo crear el archivo del reporte.");
end

fprintf(archivo, "Cultivo: %s\n", cultivo);
fprintf(archivo, "Problema: %s\n", problema);
fprintf(archivo, "Ubicacion: %s\n", ubicacion);
fprintf(archivo, "Prioridad: %s\n", prioridad);

fclose(archivo);

fprintf("\nEl reporte se guardo correctamente en: %s\n", nombreArchivo);