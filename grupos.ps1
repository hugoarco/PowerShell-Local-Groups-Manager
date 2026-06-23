# Copyright (c) 2026 Hugo Arco
function identificacionusuarios {

    $usuariosvalidos = @(
        "Hugo"
    )

    $eleccionusuario = Read-Host "Introduzca usuario valido"

    if ($usuariosvalidos -contains $eleccionusuario) {
        Write-Host "Usuario validado" -ForegroundColor Green
    }
    else {
        Write-Host "Usuario no valido" -ForegroundColor Yellow
        exit
    }
}


function menu {

    $opcionmenu = 0

    while ($opcionmenu -ne 6) {
        Write-Host "1. Ver grupos del equipo"
        Write-Host "2. Crear grupo"
        Write-Host "3. Borrar grupo"
        Write-Host "4. Añadir usuario a grupo"
        Write-Host "5. Ver usuarios de un grupo"
        Write-Host "6. Salir"

        $opcionmenu = Read-Host "Seleccione opcion"

        switch ([int]$opcionmenu) {

            1 { VerGrupos }
            2 { CrearGrupo }
            3 { BorrarGrupo }
            4 { AñadirUsuarioGrupo }
            5 { VerUsuariosGrupo }
            6 { Salir }

            Default {
                Write-Host "Opcion incorrecta" -ForegroundColor Red
            }
        }
    }
}


function VerGrupos {
    Write-Host "Grupos existentes:" -ForegroundColor Green
    net localgroup

}


function CrearGrupo {
    $nombregrupo = Read-Host "Nombre del grupo a crear introduzcalo por pantalla"

    try {
        net localgroup $nombregrupo /add


    }
    catch {

        Write-Host "Error creando grupo" -ForegroundColor Red

    }
}


function BorrarGrupo {

    $nombregrupo = Read-Host "Nombre del grupo a borrar"

    try {

    net localgroup $nombregrupo /delete

        Write-Host "Grupo eliminado" -ForegroundColor Green
           

    }
    catch {

        Write-Host "No se pudo borrar" -ForegroundColor Red

    }
}


function AñadirUsuarioGrupo {

    $nombreusuario = Read-Host "Usuario a añadir"

    $nombregrupo = Read-Host "Grupo destino"

    try {

    net localgroup $nombregrupo $nombreusuario /add
        Write-Host "Usuario añadido al grupo" -ForegroundColor Green

    }
    catch {

        Write-Host "Error añadiendo usuario" -ForegroundColor Red

    }

}


function VerUsuariosGrupo {

    $grupo = Read-Host "Grupo a consultar"

    try {

        net localgroup $grupo 

    }
    catch {

        Write-Host "Grupo no encontrado" -ForegroundColor Red

    }

}


function Salir {

    $salir = Read-Host "Desea salir Si/No"

    if ($salir -eq "Si") {

        Write-Host "Saliendo del script" -ForegroundColor Green
        exit

    }

    else {

        Write-Host "Volviendo al menu" -ForegroundColor Yellow

    }
}

identificacionusuarios
menu
