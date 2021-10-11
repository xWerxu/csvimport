<?php

$servername = "localhost";     // nazwa serwera
$username = "root";            // login do serwera
$password = "";                // haslo do serwera
$dbname = "kubki-reklamowe";   // nazwa bazy danych

$filename = "testowe3.csv";   // sciezka do pliku

// ============================================

    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8mb4", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->exec("set names utf8");
    echo "Polaczono z baza danych <br>";


    $conn->query("ALTER DATABASE `$dbname` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci");

    $data = [];
    $f = fopen($filename, 'r');

    if ($f === false) {
        die('Nie udalo sie otworzyc pliku ' . $filename);
    }
    $firstline = fgetcsv($f,0,";"); // Wywołuje pierwszą linie poza loopem skipując nazwy kolumn

    while (($row = fgetcsv($f,0,";")) !== false) {
        $data[] = $row;
    }
    fclose($f);

    // Stworzenie
    $sql = <<<SQL
                SET NAMES utf8;
                SET CHARACTER SET utf8;
                DROP TABLE IF EXISTS `csv_import`;
                CREATE TABLE  csv_import(
                id int NOT NULL AUTO_INCREMENT,
                PRIMARY KEY (id),
                status int(1) NOT NULL DEFAULT 0,
                id_Manufacturer varchar(255),
                nr_katalogowy varchar(255),
                skrocony_numer_katalogowy varchar(255) COLLATE utf8_unicode_ci,
                kategoria_produktu nvarchar(1023) COLLATE utf8_unicode_ci,
                ID_Kategori  nvarchar(63),
                model_code nvarchar(511) COLLATE utf8_unicode_ci,
                nazwa nvarchar(1023) COLLATE utf8_unicode_ci,
                opis longtext COLLATE utf8_unicode_ci,
                zdjecie_glowne nvarchar(1023) COLLATE utf8_unicode_ci,
                zdjecie_dodatkowe nvarchar(1023) COLLATE utf8_unicode_ci,
                meta_opis nvarchar(2047) COLLATE utf8_unicode_ci,
                meta_keywords nvarchar(2047) COLLATE utf8_unicode_ci,
                cena text COLLATE utf8_unicode_ci,
                price_flag nvarchar(511) COLLATE utf8_unicode_ci,
                hydrokolor varchar(15),
                kolory nvarchar(511) COLLATE utf8_unicode_ci,
                dodatkowe_kolory nvarchar(2047) COLLATE utf8_unicode_ci,
                waga nvarchar(511) COLLATE utf8_unicode_ci,
                rozmiar nvarchar(511) COLLATE utf8_unicode_ci,
                pojemnosc nvarchar(511) COLLATE utf8_unicode_ci,
                material nvarchar(511) COLLATE utf8_unicode_ci,
                dodatkowy_material_wykonania nvarchar(2047) COLLATE utf8_unicode_ci,
                rozmiar_opakowania nvarchar(511) COLLATE utf8_unicode_ci,
                multipack nvarchar(511) COLLATE utf8_unicode_ci,
                rozmiar_opakowania_zbiorczego nvarchar(511) COLLATE utf8_unicode_ci,
                minimalne_zamowienie nvarchar(511) COLLATE utf8_unicode_ci,
                coloration nvarchar(1023) COLLATE utf8_unicode_ci,
                znakowanie nvarchar(511) COLLATE utf8_unicode_ci,
                kraj_produkcji nvarchar(511) COLLATE utf8_unicode_ci,
                rozmiar_nadruku nvarchar(1023) COLLATE utf8_unicode_ci
                ) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

        SQL;

    try {


        if(!$conn->query($sql))
        {
            echo "Błąd w dodawaniu tabeli 'csv_import' do bazy danych <br>";
        }else echo "Dodano tabele 'csv_import' do bazy danych<br>";


        if(!$sql_insert = $conn->prepare("INSERT INTO csv_import (id_Manufacturer, nr_katalogowy, skrocony_numer_katalogowy, kategoria_produktu, ID_Kategori, model_code, nazwa, opis, zdjecie_glowne, zdjecie_dodatkowe, meta_opis, meta_keywords, cena, price_flag, hydrokolor, kolory, dodatkowe_kolory, waga, rozmiar, pojemnosc, material,dodatkowy_material_wykonania, rozmiar_opakowania, multipack, rozmiar_opakowania_zbiorczego, minimalne_zamowienie,coloration, znakowanie, kraj_produkcji, rozmiar_nadruku) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"))
        {
            echo "Błąd przy kwerendzie wprowadzającej do tabeli 'csv_import'<br>";
        }else echo "Gotowa kwerenda wprowadzająca do 'csv_import'<br>";

        foreach($data as $row)
        {
            $sql_insert->execute($row);
            echo "Dodano ".$row[5]."<br>";
        }
    }catch (PDOException $e)
    {
        echo "Wywróciło się na csv import: <br>".$e->getMessage()."<br>";
    }



