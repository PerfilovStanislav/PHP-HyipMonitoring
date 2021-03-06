<?php

namespace App\Helpers\Locales;

class Es extends AbstractLanguage {

    public string
        $active            = 'Activo',
        $addLevel          = 'Agregar nivel',
        $addPlan           = 'Agregar plan',
        $addProject        = 'Agregar proyecto',
        $after             = 'through',
        $availableValues   = 'Valores posibles',
        $badPassword       = 'Contraseña no válida',
        $chat              = 'Chat',
        $check             = 'comprobar',
        $contact           = 'Contacto',
        $dateStart         = 'Fecha de inicio',
        $deleted           = 'Eliminado',
        $deposit           = 'Depósito',
        $description       = 'Descripción',
        $enter             = 'Iniciar sesión',
        $error             = 'Error',
        $exit              = 'Salir',
        $expectedNumber    = 'Número esperado',
        $fileNotFound      = 'Archivo %s no encontrado',
        $fixedLength       = 'Longitud fija',
        $free              = 'gratis',
        $freeForAddProject = 'Añadiendo un proyecto a la base de datos por completo',
        $from              = 'desde',
        $guest             = 'Invitado',
        $headKeywords      = 'monitoreo del hype 2020, proyectos altamente rentables, ganancias en Internet, proyectos de inversión, pirámides',
        $headDescription   = 'Proyectos de inversión de alto rendimiento 2020',
        $headTitle         = 'Mercado de inversiones',
        $invalidDateFormat = 'Formato de fecha no válido',
        $languages         = 'Idiomas del sitio',
        $level             = 'nivel',
        $login             = 'Iniciar sesión',
        $loginIsBusy       = 'Este inicio de sesión ya está registrado. Por favor ingrese otro ',
        $maxLength         = 'Número máximo de caracteres:',
        $maxValue          = 'Valor máximo:',
        $message           = 'Mensaje',
        $messageIsSent     = 'Mensaje enviado',
        $minDeposit        = 'Depósito mínimo',
        $minLength         = 'Número mínimo de caracteres:',
        $minValue          = 'Valor mínimo:',
        $menu              = 'Menú',
        $name              = 'Nombre',
        $needAuthorization = 'Necesitas autorizar',
        $no                = 'No',
        $noAccess          = 'Sin acceso',
        $noLanguage        = 'Idioma no encontrado',
        $noUser            = 'Usuario no encontrado',
        $noPage            = 'Página no encontrada',
        $noProject         = 'Proyecto no encontrado',
        $notPublished      = 'No publicado',
        $options           = 'Opciones',
        $password          = 'Contraseña',
        $paymentSystem     = 'Sistemas de pago',
        $paywait           = 'Esperando pago',
        $period            = 'Periodo',
        $placeBanner       = 'Colocar un banner|por $%d por semana',
        $plans             = 'Planes de tarifas',
        $profit            = 'Beneficio',
        $projectName       = 'Nombre del proyecto',
        $projectIsAdded    = 'Proyecto agregado',
        $projectUrl        = 'Enlace al proyecto (o enlace de referencia)',
        $prohibitedChars   = 'Caracteres ilegales ingresados',
        $rating            = 'Valoración',
        $refProgram        = 'Programa de recomendación',
        $registration      = 'Registro',
        $remember          = 'Recordar',
        $remove            = 'Eliminar',
        $repeatPassword    = 'Repetir contraseña',
        $required          = 'Necesario',
        $scam              = 'Estafa',
        $sendForm          = 'Enviar formulario',
        $showAllLangs      = 'Mostrar todos los idiomas',
        $siteExists        = 'El sitio ya está en la base de datos',
        $siteIsFree        = 'El sitio no está en la base de datos',
        $startDate         = 'Fecha de inicio del proyecto',
        $success           = 'Exitoso',
        $userRegistered    = 'El usuario está registrado',
        $userRegistration  = 'Registro de usuario',
        $writeMessage      = 'Escribir un mensaje',
        $wrongUrl          = 'URL del sitio incorrecta',
        $wrongValue        = 'Valor no válido',
        $yes               = 'Sí',
        $youAreAuthorized  = 'Está autorizado';

    public array
        $paymentType       = ['Tipo de pago', 'Manual', 'Instantáneo', 'Automático'],
        $periodName        = ['', 'minutos', 'horas', 'días', 'semanas', 'meses', 'año'],
        $currency          = ['dólar', 'euro', 'bitcoin', 'rublo', 'libra', 'yen', 'won', 'rupia'];

    public function getPeriodName(int $i, int $k): string {
        return ['minuto', 'hora', 'día', 'semana', 'mes', 'año'][$i-1].(
            $k>1
                ? ($i === 5 ? 'es' : 's')
                : ''
            );
    }
}
