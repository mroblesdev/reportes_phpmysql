<?php
/************************************************************
* Reporte en PDF con FPDF                                   *
*                                                           *
* Fecha:    2021-02-09                                      *
* Autor:  Marko Robles                                      *
* Web:  www.codigosdeprogramacion.com                       *
************************************************************/

require "conexion.php";
require "plantilla.php";

if (!empty($_POST)) {

    $grado = mysqli_escape_string($mysqli, $_POST['grado']);

    $sql = "SELECT a.id, a.nombre, a.edad, a.matricula, a.correo, g.grado FROM alumnos AS a INNER JOIN grados AS g ON a.id_grado=g.id WHERE g.id = $grado";
    $resultado = $mysqli->query($sql);

    $pdf = new PDF("P", "mm", "letter");
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
        $pdf->Cell(40, 5, utf8_decode($fila['nombre']), 1, 0, "C");
        $pdf->Cell(20, 5, $fila['edad'], 1, 0, "C");
        $pdf->Cell(40, 5, $fila['matricula'], 1, 0, "C");
        $pdf->Cell(30, 5, $fila['grado'], 1, 0, "C");
        $pdf->Cell(50, 5, $fila['correo'], 1, 1, "C");
    }

    $pdf->Output();
}
