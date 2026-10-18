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