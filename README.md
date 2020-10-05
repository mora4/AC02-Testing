# RSpec & SimpleCov

* Instalar dependencias: `bundle install`
* Correr 1 test: `ruby tests/test_1.rb`
* Correr todos los test: `ruby tests/*`
* Ver coverage: `open coverage/index.html` (ejecutar despues de correr 1 o más test)

**Imporante**: no correr con `rspec` porque se genera un error por el uso de SimpleCov (`require 'simplecov'`). De querer usar dicho comando, comentar el contenido del archivo `test_helper.rb`.
