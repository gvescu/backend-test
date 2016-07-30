# Prueba de Ingenious Softworks para candidatos - Gustavo Vera

Para la prueba elegí el test del backend.

## Instalación

1. Clonar el repo.
```
git clone https://github.com/gvescu/backend-test.git
```

2. Abrir el directorio de la app desde la consola/terminal.

   El proyecto se encuentra en ```app/events.```

3. Instalar las gemas y la versión de Rails utilizada (```bundler``` debe estar ya instalado).
```
bundle install
```

4. Restaurar la base de datos.

   Ya tenía algunos datos de prueba cargados en mi servidor local. Utilicé una gema llamada ```yaml_db``` que me permite hacer un backup de la base de datos en formato YAML (el archivo se encuentra en ```db/data.yml```). Lo que haremos ahora será restaurar todo.
```
rake db:migrate
rake db:data:load
```

   En este punto ya estaría todo listo. Sólo faltaría arrancar el servidor y probar.

## Usuario de prueba

**Email**: gvescu@gmail.com  
**Contraseña**: gustavo123

Igual se pueden crear todos los usuarios que quieran. Tiene una forma de crearlos.

## Recursos utilizados
* Windows 10 Pro (v1511)
* Ruby 2.2.4p230 (mingw32)
* Ruby on Rails 4.2.5.1
* SQLite
* Foundation 6 for Sites
