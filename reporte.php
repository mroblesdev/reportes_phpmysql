<?php

/**
 * Reporte en PDF con FPDF v1.85
 * 
 * Fecha: 17/01/2023
 * Autor: Marco Robles
 * Web:   https://github.com/mroblesdev
 */

require "conexion.php";
require "plantilla.php";

if (!empty($_POST)) {

    $idGrado = mysqli_escape_string($mysqli, $_POST['grado']);

    $sqlGrado = "SELECT grado FROM grados WHERE id = $idGrado";
    $resultadoGrado = $mysqli->query($sqlGrado);
    $row_grado = $resultadoGrado->fetch_assoc();
    $nombreGrado = $row_grado['grado'];

    $tituloReporte = "Reporte de alumnos";

    $sql = "SELECT id, nombre, edad, matricula, correo FROM alumnos WHERE id_grado = $idGrado";
    $resultado = $mysqli->query($sql);

    $pdf = new PDF("P", "mm", "letter");
    $pdf->SetTitle($tituloReporte);
    $pdf->SetAuthor('Marco Robles');
    $pdf->AliasNbPages();
    $pdf->SetMargins(10, 10, 10);
    $pdf->AddPage();

    $pdf->SetFont("Arial", "B", 9);

    $pdf->Cell(10, 5, "Id", 1, 0, "C");
    $pdf->Cell(40, 5, "Nombre", 1, 0, "C");
    $pdf->Cell(20, 5, "Edad", 1, 0, "C");
    $pdf->Cell(40, 5, "Matricula", 1, 0, "C");
    $pdf->Cell(30, 5, "Grado", 1, 0, "C");
    $pdf->Cell(50, 5, "Correo", 1, 1, "C");

    $pdf->SetFont("Arial", "", 9);

    while ($fila = $resultado->fetch_assoc()) {
        $pdf->Cell(10, 5, $fila['id'], 1, 0, "C");
        $pdf->Cell(40, 5, mb_convert_encoding($fila['nombre'], 'ISO-8859-1', 'UTF-8'), 1, 0, "C");
        $pdf->Cell(20, 5, $fila['edad'], 1, 0, "C");
        $pdf->Cell(40, 5, $fila['matricula'], 1, 0, "C");
        $pdf->Cell(30, 5, $nombreGrado, 1, 0, "C");
        $pdf->Cell(50, 5, $fila['correo'], 1, 1, "C");
    }

    $pdf->Output('I', $tituloReporte . '.pdf');
}
