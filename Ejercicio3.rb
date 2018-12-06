menu = 1
grupo = [{Nombre: 'Pedro Perez', Edad: 29, Comuna: 'Santiago', Género: 'M'},{Nombre: 'Juan Ulloa', Edad: 27, Comuna: 'Ñuñoa', Género: 'M'},{Nombre: 'Cristina Fernandez', Edad: 22, Comuna: 'Las Condes', Género: 'F'}]
while menu != 10

  puts "\nIngresa tu opción: \n 1. Ingresar una persona\n 2. Editar datos de una persona\n 3. Eliminar una persona\n 4. Cantidad de personas ingresadas\n 5. Comunas de las personas\n 6. Lista de personas entre 20 y 25 años\n 7. La suma de las edades de todos es\n 8. El promedio de las edades es\n 9. Lista de mujeres y hombres\n 10. Salir"
  menu = gets.chomp.to_i

  if menu == 1
    print "\nIngresa los datos en el siguiente formato: Nombre, Edad, Comuna, Género (M o F)\nEj: Sebastian Poblete, 30, Nunoa, M\n"
    string = gets.chomp
    string = string.split(',')
    persona = {Nombre: string[0], Edad: string[1], Comuna:string[2], Género: string[3]}
    grupo.push(persona)
    print "Datos ingresados correctamente\n"
  end

  if menu == 2
    print "\n Ingresa el nombre completo de quien quieres editar sus datos\n"
    grupo.each{|x| puts x[:Nombre]}
    nameedit = gets.chomp
    indexedit = -1
    grupo.each_with_index{ |hash, index| indexedit = index if hash[:Nombre] == nameedit
    }
    if indexedit !=-1
    print "\nIngresa el campo y valor que quieres editar en el siguiente formato: Campo , Valor\nEj: Edad, 28\n"
    campoandvalue = gets.chomp
    campoandvalue = campoandvalue.split(',')
    grupo[indexedit][campoandvalue[0]] = campoandvalue[1]
    end
  end


  if menu == 3
    print "\n Ingresa el nombre completo de quien quieres eliminar\n"
    grupo.each{|x| puts x[:Nombre]}
    namedelete = gets.chomp
    grupo.each_with_index{ |hash, index| grupo.delete_at(index) if hash[:Nombre] == namedelete
    }

  end

  if menu == 4
  print "La cantidad de personas del grupo es: " + grupo.length.to_s + "\n"
  end

  if menu == 5
    comunas =[]
    grupo.each{|x| comunas.push(x[:Comuna])}
    comunas = comunas.map { |e| e.capitalize }
    comunas = comunas.uniq
    print comunas
  end

  if menu == 6
    entre20y25 = []
    grupo.each{|x| entre20y25.push(x[:Nombre]) if (x[:Edad].to_i<26 && x[:Edad].to_i>19)}
    print "Las siguientes personas tienen entre 20 y 25"
    print entre20y25
  end

  if menu == 7
    suma = 0
    grupo.each{|x| suma +=x[:Edad].to_i}
    print "La suma de la edad de todos es: " + suma.to_s
  end


  if menu == 8
    suma = 0
    grupo.each{|x| suma +=x[:Edad]}
    puts "El promedio de la edad de todos es: " + (suma/(grupo.length)).to_s
  end

  if menu == 9
    hombres =[]
    mujeres = []
    grupo.each{|x|
      if x[:Género]=='M'
        hombres.push(x[:Nombre])
      else mujeres.push(x[:Nombre])
      end
    }
  print "\n Lista de hombres: "
  print hombres
  print "\n Lista de mujeres: "
  print mujeres
  end

end
