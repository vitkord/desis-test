
// Función para cargar opciones desde la base de datos
function cargarOpciones(descripcion, selectId, storedProcedure, parametros) {
    var select = document.getElementById(selectId);
    select.innerHTML = ""; // Limpiar opciones actuales

    // Realizar la petición AJAX para obtener las opciones
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'get_options.php', true);
    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
    xhr.onload = function () {
        if (xhr.status === 200) {
            //console.log("opciones :"+xhr.responseText);
            
            var opciones = JSON.parse(xhr.responseText);            
            
            // Agregar opciones al select
            for (var i = 0; i <= opciones.length; i++) {
                var option = document.createElement("option");
                if(selectId == "region"){
                    if(i == 0){
                        option.text = "--Seleccione una Región";
                        option.value = 0;
                        select.add(option);
                    }else{
                        option.text = opciones[i - 1].nombre_region; 
                        option.value = opciones[i -1].id; 
                        select.add(option);
                    }                    
                                                                              
                }else if(selectId == "comuna"){        
                    if(i != 0){
                        option.text = opciones[i - 1].nombre_comuna; 
                        option.value = opciones[i - 1].id_comuna; 
                        select.add(option);
                    }                                                    
                }else if(selectId == "candidato"){
                    if(i != 0){
                        option.text = opciones[i - 1].nombre_apellido; 
                        option.value = opciones[i - 1].nombre_apellido; 
                        select.add(option);
                    }                    
                }                
            }
            
        } else {
            alert('Error al cargar opciones: ' + xhr.responseText);
        }
    };

    var params = "descripcion=" + descripcion + "&storedProcedure=" + storedProcedure + "&parametros="+ parametros;
 
    xhr.send(params);
}

// Función para cargar las opciones de regiones y candidatos cuando el DOM este cargado
document.addEventListener('DOMContentLoaded', function () {    
    cargarOpciones("Región", "region", "sp_get_regiones", "");
    cargarOpciones("Candidato", "candidato", "sp_get_candidatos", "");  
});

// Evento de cambio en el select de regiones para cargar las comunas correspondientes

document.getElementById('region').addEventListener('change', function () {
    var idRegion = this.value;   
    cargarOpciones("Comuna", "comuna", "sp_get_comunas_por_id_region", idRegion);
});

// Función para validar el formato del correo electrónico
function validarEmail(email) {
    var regex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return regex.test(email);
}

function validarRut(rut) {
    var regex = /^[0-9]{7,8}-[0-9kK]{1}$/;

    if (!regex.test(rut)) {        
        return "badformat"; // El formato no es válido
    }
    // Eliminar guiones y convertir a mayúsculas
    rut = rut.replace('-', '').toUpperCase();

    var rutNumerico = parseInt(rut.slice(0, -1), 10);
    var digitoVerificador = rut.slice(-1);

    // Calcular el dígito verificador esperado
    var suma = 0;
    var multiplicador = 2;

    for (var i = rutNumerico.toString().length - 1; i >= 0; i--) {
        suma += multiplicador * parseInt(rutNumerico.toString().charAt(i), 10);
        multiplicador = multiplicador < 7 ? multiplicador + 1 : 2;
    }

    var resto = suma % 11;
    var resultado = 11 - resto;

    // Comparar el dígito verificador calculado con el proporcionado
    if (resultado === 11) {
        resultado = 0;
    }

    console.log("resultado digito :"+resultado);
    console.log("digito ingresado :"+digitoVerificador);

    return resultado.toString() === digitoVerificador;
}

//código para enviar el formulario y las validaciones
function enviarFormulario() {
    // Obtener los valores del formulario
    var nombre_apellido = document.getElementById('nombre_apellido').value;
    var alias = document.getElementById('alias').value;
    var rut = document.getElementById('rut').value;
    var email = document.getElementById('email').value;
    var region = document.getElementById('region').value;
    var comuna = document.getElementById('comuna').value;
    var candidato = document.getElementById('candidato').value;

    // Validaciones
    if (nombre_apellido === '' || alias === '' || rut === '' || email === '' || region === '' || comuna === '' || candidato === '') {
        alert('Todos los campos son obligatorios');
        return;
    }

    // Validar el formato del correo electrónico    
    if (!validarEmail(email)) {
        alert('Ingrese un correo electrónico válido');
        return;
    }

    //validar el formato del RUT
    if(validarRut(rut) == "badformat"){
        alert('Ingrese RUT válido, sin puntos y con guión');
        return;
    }
    else if(!validarRut(rut)){
        alert('Su digito verificador es incorrecto');
        return;
    }

    // Crear objeto con los datos del formulario
    var formData = new FormData();
    formData.append('nombre_apellido', nombre_apellido);
    formData.append('alias', alias);
    formData.append('rut', rut);
    formData.append('email', email);
    formData.append('region', region);
    formData.append('comuna', comuna);
    formData.append('candidato', candidato);

    // Obtener las opciones seleccionadas de "Como se enteró de nosotros"
    var opcionesComoSeEntero = document.querySelectorAll('input[name="como_se_entero"]:checked');
    if (opcionesComoSeEntero.length < 2) {
        alert('Debe seleccionar al menos dos opciones en "Como se enteró de nosotros"');
        return;
    }

    var comoSeEnteroValues = [];
    opcionesComoSeEntero.forEach(function (opcion) {
        comoSeEnteroValues.push(opcion.value);
    });

    formData.append('como_se_entero', comoSeEnteroValues.join(', '));

    // Realizar la petición AJAX    
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'save_data.php', true);
    xhr.onload = function () {
        if (xhr.status === 200) {
            alert(xhr.responseText);
        } else {
            alert('Error al enviar el formulario');
        }
    };
    xhr.send(formData);        
    document.getElementById('votacionForm').reset();
}

