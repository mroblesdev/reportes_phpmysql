<?php

/**
 * Plantilla para encabezado y pie de página
 * 
 * Fecha: 17/01/2023
 * Autor: Marco Robles
 * Web:   https://github.com/mroblesdev
 */

require 'fpdf/fpdf.php';

class PDF extends FPDF
{
    // Cabecera de página
    function Header()
    {
        global $nombreGrado;
        global $tituloReporte;
        // Logo
        $this->Image("images/logo.png", 10, 5, 13);

        // Arial bold 15
        $this->SetFont("Arial", "B", 12);

        // Título
        $this->Cell(25);
        $this->Cell(140, 5,  mb_convert_encoding($tituloReporte, 'ISO-8859-1', 'UTF-8'), 0, 0, "C");

        //Fecha
        $this->SetFont("Arial", "", 9);
        $this->Cell(25, 5, "Fecha: " . date("d/m/Y"), 0, 1, "C");

        $this->Cell(0, 5, "Grado: " . $nombreGrado, 0, 1, "C");

        // Salto de línea
        $this->Ln(10);
    }

    // Pie de página
    function Footer()
    {
        // Posición: a 1,5 cm del final
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial', 'I', 8);
        // Número de página
        $this->Cell(0, 10, 'Pagina ' . $this->PageNo() . '/{nb}', 0, 0, 'C');
    }
}
