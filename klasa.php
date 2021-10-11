<?php

header('Content-Type: text/html; charset=utf-8');

date_default_timezone_set('Europe/Warsaw');

// Dane do połączenia dla PDO i na tym opiera sie cały skrypt

$servername = "localhost";     // nazwa serwera
$username = "root";            // login do serwera
$password = "";                // haslo do serwera
$dbname = "kubki-reklamowe";   // nazwa bazy danych
$file_path = "testowe3.csv";   // sciezka do pliku


// TODO Ogarniecie liczenia komorek zeby sie nie dodawaly
// Pododawanie wszedzie debug_import messeges

class Produkt
{
    // 3 Wartosci ponizej są do modyfikacji przez użytkownika
    // `$min_img_x` dla minimalnej szerokosci zdjecia, `$min_img_xy` dla minimalnej wysokosci zdjecia
    // `$dbname` dla nazwy bazy danych

    public $min_img_x = 600;
    public $min_img_y = 450;
    public $dbname = "kubki-reklamowe";

    public $locale = "pl_PL";
    public $channel_id = 1;
    public $image_id = 0;          // pk z sylius_product_image
    public $taxon_id = 18;          // id grupy z 'sylius_taxon'
    public $taxon_position = 0;    // kiedy jest wiele produktów przypisanych do jednego taxona
    public $taxon_translate = null;   // Tabela asocjacyjna zawierająca id kategorii
    public $product_id = 0;
    public $variant_id = 0;
    public $conn = null;
    public $attr_array = null;
    public $maerrory = 0;
    public $errormessage = [];



    public $cena = null;                 // price w tabeli 'sylius_channel_pricing'
    public $producent = null;            // manufacturer_id z tabeli 'manufacturer' | must have
    public $nazwa_produktu = null;       //must have
    public $opis = null;
    public $short_opis = null;
    public $meta_keywords = null;
    public $meta_opis = null;
    public $flaga_ceny = null;
    public $kolor = null;
    public $kolor_dodatkowe = null;
    public $model = null;
    public $minimalne_zamowienie = null;
    public $hydrokolor = null;
    public $waga = null;
    public $rozmiar = null;
    public $pojemnosc = null;
    public $material = null;
    public $dodatkowy_material_wykonania = null;
    public $rozmiar_opakowania = null;
    public $mulitpack = null;
    public $rozmiar_opakowania_zbiorczego = null;
    public $coloration = null;
    public $znakowanie = null;
    public $kraj_produkcji = null;
    public $rozmiar_nadruku = null;
    public $img_main_src = null;
    public $img_thumbnail_src = null;

    public $sql_trans_start = null;
    public $sql_trans_commit = null;
    public $sql_trans_rollback = null;

    public $sql_sylius_product = null;
    public $sql_sylius_product_id = null;
    public $sql_sylius_product_attribute_value = null;
    public $sql_sylius_product_channels = null;
    public $sql_sylius_product_image = null;
    public $sql_sylius_product_image_product_variants = null;
    public $sql_sylius_product_translation = null;
    public $sql_sylius_product_variant = null;
    public $sql_sylius_taxon_id = null;
    public $sql_sylius_product_taxon = null;
    public $sql_sylius_channel_pricing = null;
    public $sql_debug = null;
    public $duplicate_check = null;


    public function __construct($conn)
    {
        $conn->exec("SET NAMES 'utf8';");
        $this->conn = $conn;
        // Przygotowanie kwerend w celu oszczędzania zasobów bazy danych. Zabezpieczenie przed atakami typu sql injection
        $this->sql_sylius_product = $conn->prepare("INSERT INTO sylius_product (main_taxon_id, code, created_at,updated_at, enabled,variant_selection_method,average_rating, manufacturer_id) VALUES (?,?,?,?,?,?,?,?)");
        $this->sql_sylius_product_id = $this->conn->prepare("SELECT MAX(ID) FROM sylius_product");
        $this->sql_sylius_product_attribute_value = $conn->prepare("INSERT INTO sylius_product_attribute_value (product_id,attribute_id,locale_code,text_value) VALUES (?,?,?,?)");
        $this->sql_sylius_product_channels = $conn->prepare("INSERT INTO sylius_product_channels (product_id, channel_id) VALUES (?,?)");
        $this->sql_sylius_product_image = $conn->prepare("INSERT INTO sylius_product_image (owner_id, type, path) VALUES (?,?,?)");
        $this->sql_sylius_product_image_product_variants = $conn->prepare("INSERT INTO sylius_product_image_product_variants (image_id, variant_id) VALUES (?,?)");
        $this->sql_sylius_product_translation = $conn->prepare("INSERT INTO sylius_product_translation (translatable_id, name, slug, description,meta_keywords,meta_description,short_description,locale) VALUES (?,?,?,?,?,?,?,?)");
        $this->sql_sylius_product_variant = $conn->prepare("INSERT INTO sylius_product_variant (product_id, code, created_at, updated_at, version) VALUES (?,?,?,?,?)");
        $this->sql_sylius_product_taxon = $conn->prepare("INSERT INTO sylius_product_taxon (product_id, taxon_id, position) VALUES (?,?,?)");
        $this->sql_sylius_taxon_id = $conn->prepare("SELECT id FROM sylius_taxon");
        $this->sql_sylius_channel_pricing = $conn->prepare("INSERT INTO sylius_channel_pricing (product_variant_id, price, original_price, channel_code) VALUES (?,?,?,?)");
        $this->sql_debug = $conn->prepare("INSERT INTO debug_import(model_code, gdzie, error) VALUES(?,?,?)");
        $this->duplicate_check = $conn->prepare("SELECT * FROM csv_import WHERE model_code = 'R08252.04' AND status = 1");


    }

    public function test_product_variant()
    {
        $sql_var1 = array("hydrokolor"=>"Hydrokolor",
            "waga"=>"Waga",
            "rozmiar"=>"Rozmiar",
            "pojemnosc"=>"Pojemnosc",
            "material"=>"Material",
            "rozmiar-opakowania"=>"Rozmiar opakowania",
            "mulitpack"=>"Multipack",
            "rozmiar-opakowania-zbiorczego"=>"Rozmiar opakowania zbiorczego",
            "coloration" => "Coloration",
            "znakowanie" => "Znakowanie",
            "kraj-produkcji"=>"Kraj produkcji",
            "rozmiar-nadruku"=>"Rozmiar nadruku");

        $sql1 = $this->conn->prepare("INSERT INTO sylius_product_attribute (code, type, storage_type, configuration,created_at, updated_at, position) VALUES (?,?,?,?,?,?,?)");
        $sql2 = $this->conn->prepare("INSERT INTO sylius_product_attribute_translation (translatable_id, name, locale) VALUES (?,?,?)");
        $position = 4;
        try{
            foreach($sql_var1 as $value => $translate)
            {
                $today = date("Y-m-d H:i:s");  // Zebranie aktualnej daty i przekształcenie jej na format mysql
                $position++;
                $var1 = array($value,"text","text","a:0:{}",$today,$today,$position);
                $sql1->execute($var1);
                $attr_id =  $this->conn->lastInsertId();
                $var2 = array($attr_id,$translate,"pl_PL");
                $sql2->execute($var2);
            }
        }catch (PDOException $e)
        {
            echo "Wywróciło się na 'test_product_variant' <br>".$e->getMessage()."<br>";
            array_push($this->errormessage,[$this->model,"fun test_product_variant()","Blad przy wprowadzaniu variantow z csv do bazy danych "]);

        }


    }

    public function csv_upload($filename)
    {
        $this->conn->query("ALTER DATABASE `$this->dbname` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci");
        $data = [];
        $f = fopen($filename, 'r');

        if ($f === false) {
            die('Cannot open the file ' . $filename);
        }
        $firstline = fgetcsv($f,0,";"); // Wywołuje pierwszą linie poza loopem skipując nazwy kolumn

        while (($row = fgetcsv($f,0,";")) !== false) {
            $data[] = $row;
        }
        fclose($f);

        $sql = <<<SQL
                SET NAMES utf8;
                SET CHARACTER SET utf8;
                DROP TABLE IF EXISTS `csv_import`;
                CREATE TABLE  csv_import(
                id int NOT NULL AUTO_INCREMENT,
                PRIMARY KEY (id),
                status int(1) NOT NULL,
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


            if(!$this->conn->query($sql))
            {
                echo "Błąd w dodawaniu tabeli 'csv_import' do bazy danych <br>";
            }else echo "Dodano tabele 'csv_import' do bazy danych<br>";


            if(!$sql_insert = $this->conn->prepare("INSERT INTO csv_import (id_Manufacturer, nr_katalogowy, skrocony_numer_katalogowy, kategoria_produktu, ID_Kategori, model_code, nazwa, opis, zdjecie_glowne, zdjecie_dodatkowe, meta_opis, meta_keywords, cena, price_flag, hydrokolor, kolory, dodatkowe_kolory, waga, rozmiar, pojemnosc, material,dodatkowy_material_wykonania, rozmiar_opakowania, multipack, rozmiar_opakowania_zbiorczego, minimalne_zamowienie,coloration, znakowanie, kraj_produkcji, rozmiar_nadruku) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"))
            {
                echo "Błąd przy kwerendzie wprowadzającej do tabeli 'csv_import'<br>";
            }else echo "Gotowa kwerenda wprowadzająca do 'csv_import'<br>";

            foreach($data as $row)
            {
                if(count($row) == 30)
                {
                    $sql_insert->execute($row);
                }else {
                    $this->sql_debug->execute([$this->model,"csv_upload","Niezgadza sie liczba komórek w pliku. Docelowo: 30 Aktualnie: ".count($row)]);
                }
            }
        }catch (PDOException $e)
        {
            echo "Wywróciło się na csv import: <br>".$e->getMessage()."<br>";
        }


// Do testowania jak sie wrzuca plik do tabel

//        echo "<pre>";
//        print_r($data);
//        echo "</pre>";

    }

    public function debug_table()
    {
        $sql = <<<SQL
            DROP TABLE IF EXISTS `debug_import`;
            CREATE TABLE debug_import(
                    id int AUTO_INCREMENT NOT NULL,
                    model_code nvarchar(511) ,
                    gdzie nvarchar(255),
                    error text,
                    PRIMARY KEY (id)
                );
        SQL;

        if($this->conn->query($sql))
        {
            echo "Stworzono tabele debugującą <br>";
        }else echo "Problem z tworzeniem tabeli debugującej <br>";

    }


    public function slugify($text)
    {
        // Strip html tags
        $text=strip_tags($text);
        // Replace non letter or digits by -
        $text = preg_replace('~[^\pL\d]+~u', '-', $text);
        // Transliterate
        setlocale(LC_ALL, 'en_US.utf8');
        $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
        // Remove unwanted characters
        $text = preg_replace('~[^-\w]+~', '', $text);
        // Trim
        $text = trim($text, '-');
        // Remove duplicate -
        $text = preg_replace('~-+~', '-', $text);
        // Lowercase
        $text = strtolower($text);
        // Check if it is empty
        if (empty($text)) { return 'n-a'; }

        // Return result
        return $text;
    }

    //funkcja do generowania losowych wartości, potrzebne w celu nadawania nazwy tworzonym folderom
    public function generateRandomString($length = 10): string
    {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
    }

    public function get_dir(): string
    {
        $const_path = "public/media/image";
        $dir_done = false;
        while(!$dir_done)
        {
            $dir1 = $this->generateRandomString(2);
            $dir2 = $this->generateRandomString(2);
            $dir_path = $const_path."/$dir1/$dir2";
            if(!file_exists($dir_path))
            {
                mkdir($dir_path,0777,true);
                chmod($const_path."/$dir1", 0777);
                chmod($dir_path, 0777);
                $dir_done = true;
            }else{
                $dir_done = false;
            }
        }
        return "$dir1/$dir2";
    }

    public function taxon_id_array()
    {
        // Zczytywanie wartości id tabeli 'sylius_taxon' i przypiswanie ich do indexów tabel
        // Wszystkie wartości z tabeli 'sylius_taxon' są brane to array'a oraz id kategorii są brane jako jej indexy
        // Potem sprawdzamy dla każdej kategori maksymalną wartość "position" i przypisujemy ją do wartości o odpowiednim indexie

        try {
            $this->sql_sylius_taxon_id->execute();
            $this->sql_sylius_taxon_id->setFetchMode(PDO::FETCH_ASSOC);
            $fetch = $this->sql_sylius_taxon_id->fetchAll();
            $sql = $this->conn->prepare("SELECT MAX(position) FROM sylius_product_taxon WHERE taxon_id = ?");
            foreach ($fetch as $index => $value)
            {
                $taxon = $value["id"];
                $sql_var = array($taxon);
                $sql->execute($sql_var);
                $sql->setFetchMode(PDO::FETCH_ASSOC);
                $taxon_position = $sql->FetchAll();
                if(!$taxon_position[0]["MAX(position)"])
                {
                    $this->taxon_translate[$taxon] = 0;

                }else $this->taxon_translate[$taxon] = $taxon_position[0]["MAX(position)"];

            }

            echo "Stworzono tabele z id <br>";
        }catch (PDOException $e)
        {
            echo "Wywróciło się na 'sylius_taxon_id': <br>".$e->getMessage()."<br>";


        }

        try{
            $sql = $this->conn->query("SELECT * FROM sylius_product_attribute");
            $sql->setFetchMode(PDO::FETCH_ASSOC);
            $fetch = $sql->fetchAll();

            foreach ($fetch as $row => $value)
            {
                $this->attr_array[$value['code']] = $value['id'];
            }
            echo "Fetch atrybutów udany <br>";

        }catch (PDOException $e)
        {

            $this->sql_debug->execute(["Funkcja `taxon_id_array`","Fetch atrybutów z `sylius_product_attribute`", "program bez tego może nie działać poprawnie SQL_ERROR: ".$e->getMessage()]);

        }



    }


    public function setValue( $producent, $taxon_id, $model, $nazwa_produktu, $opis, $img_thumbnail_src, $img_main_src,
                              $meta_opis, $meta_keywords,$cena,$flaga_ceny,$hydrokolor, $kolor, $kolor_dodatkowe,
                              $waga,$rozmiar,$pojemnosc,$material,$dodatkowy_material_wykonania,
                              $rozmiar_opakowania,$mulitpack,$rozmiar_opakowania_zbiorczego,
                              $minimalne_zamowienie,$coloration, $znakowanie,$kraj_produkcji,$rozmiar_nadruku)
    {
        $this->cena = $cena;
        $this->producent = $producent;
        $this->nazwa_produktu = $nazwa_produktu;
        $this->opis = $opis;
        $this->short_opis = $opis;
        $this->meta_keywords = $meta_keywords;
        $this->meta_opis = $meta_opis;
        $this->taxon_id = $taxon_id;
        $this->flaga_ceny = $flaga_ceny;
        $this->kolor = $kolor;
        $this->kolor_dodatkowe = $kolor_dodatkowe;
        $this->model = $model;
        $this->minimalne_zamowienie = $minimalne_zamowienie;
        $this->hydrokolor = $hydrokolor;
        $this->waga = $waga;
        $this->rozmiar = $rozmiar;
        $this->pojemnosc = $pojemnosc;
        $this->material = $material;
        $this->dodatkowy_material_wykonania = $dodatkowy_material_wykonania;
        $this->rozmiar_opakowania = $rozmiar_opakowania;
        $this->mulitpack = $mulitpack;
        $this->rozmiar_opakowania_zbiorczego = $rozmiar_opakowania_zbiorczego;
        $this->coloration = $coloration;
        $this->znakowanie = $znakowanie;
        $this->kraj_produkcji = $kraj_produkcji;
        $this->rozmiar_nadruku = $rozmiar_nadruku;
        $this->img_main_src = $img_main_src;
        $this->img_thumbnail_src = $img_thumbnail_src;
    }




    public function add_attr($attr,$value)
    {

        if($this->maerrory == 0)
        {
            try {
                $sql_var = array($this->product_id, $this->attr_array[$attr], $this->locale, $value);  // Stworzenie tabeli z potrzebnymi wartościami branymi z pliku csv
                $this->sql_sylius_product_attribute_value->execute($sql_var); //Podstawienie wartości do kwerendy oraz jej realizacaja w bazie danych

            } catch (PDOException $e) {
                // $this->sql_debug->execute(array($this->model,"Dodawanie atrybutów w `sql_sylius_product_attribute_value`",$e->getMessage()));
                array_push($this->errormessage, [$this->model, "Dodawanie atrybutów w `sql_sylius_product_attribute_value`", $e->getMessage()]);
            }
        }
    }



    //DO ZROBIENIA: Tabela tłumaczeń nazwy kategori na ich id, Tabela tłumaczeń dla nazw producenta na ich id,
    //Weryfikacja czy zawarte są wartości konieczne do utworzenia produktu




    public function AddProduct()
    {
        $today = date("Y-m-d H:i:s");  // Zebranie aktualnej daty i przekształcenie jej na format mysql
        $this->maerrory = 0;
        $this->errormessage = [];


        // Dodanie wartości do tabeli 'sylius_product'
        $this->conn->beginTransaction();

        $duplicate = $this->duplicate_check->execute([$this->model]);
//        $duplicate->setFetchMode(PDO::FETCH_ASSOC);
//        $duplicate_fetch = $duplicate->fetchAll();
//        print_r($duplicate_fetch);

        if ($this->maerrory == 0) {
            try {
                $sql_var = array($this->taxon_id, $this->model, $today, $today, 1, "choice", 0, $this->producent);  // Stworzenie tabeli z potrzebnymi wartościami branymi z pliku csv
                $this->sql_sylius_product->execute($sql_var); //Podstawienie wartości do kwerendy oraz jej realizacaja w bazie danych



                $sql = $this->sql_sylius_product_id;
                $sql->execute();
                $sql->setFetchMode(PDO::FETCH_ASSOC);
                $fetch = $sql->fetchAll();
                $this->product_id = $fetch["0"]["MAX(ID)"];
            } catch (PDOException $e) {
//                $this->sql_debug->execute(array($this->model,"sylius_product",$e->getMessage()));
                array_push($this->errormessage, [$this->model, "sylius_product", $e->getMessage()]);
                $this->maerrory = 1;
            }
        }

        // Dodawanie wartości do tabeli `sylius_product_attribute_value`


        // Atrybut flaga-ceny

        if ($this->maerrory == 0)
        {
            if ($this->flaga_ceny) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('flaga-ceny', "$this->flaga_ceny");
            }


            // Atrybut kolor
            if($this->kolor) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('kolor',"$this->kolor");
            }

            // Atrybut dodatkowe-kolory
            if($this->kolor_dodatkowe) // Sprawdzamy czy nie atrybut jest pusty
            {
                $this->add_attr('dodatkowe-kolory',"$this->kolor_dodatkowe");

            }

            // Atrybut model
            if($this->model) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('model',"$this->model");

            }

            // Atrybut minimalne_zamowienie
            if($this->minimalne_zamowienie) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('minimalne-zamowienie',"$this->minimalne_zamowienie");

            }

            // Atrybut hydrokolor
            if($this->hydrokolor) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('hydrokolor',"$this->hydrokolor");

            }

            // Atrybut waga
            if($this->waga) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('waga',"$this->waga");

            }

            // Atrybut rozmiar
            if($this->rozmiar) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('rozmiar',"$this->rozmiar");

            }

            // Atrybut model
            if($this->pojemnosc) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('pojemnosc',"$this->pojemnosc");

            }

            // Atrybut material
            if($this->material) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('material',"$this->material");

            }

            // Atrybut rozmiar_opakowania
            if($this->rozmiar_opakowania) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('rozmiar-opakowania',"$this->rozmiar_opakowania");
            }


            // Atrybut mulitpack
            if($this->mulitpack) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('mulitpack',"$this->mulitpack");

            }

            // Atrybut rozmiar_opakowania_zbiorczego
            if($this->rozmiar_opakowania_zbiorczego) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('rozmiar-opakowania-zbiorczego',"$this->rozmiar_opakowania_zbiorczego");

            }

            // Atrybut coloration
            if($this->coloration) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('coloration',"$this->coloration");

            }

            // Atrybut znakowanie
            if($this->znakowanie) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('znakowanie',"$this->znakowanie");

            }


            // Atrybut kraj_produkcji
            if($this->kraj_produkcji) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('kraj-produkcji',"$this->kraj_produkcji");

            }

            // Atrybut rozmiar_nadruku
            if($this->rozmiar_nadruku) // Sprawdzamy czy atrybut nie jest pusty
            {
                $this->add_attr('rozmiar-nadruku',"$this->rozmiar_nadruku");
            }
        }



        // Dodanie wartosci do tabeli 'sylius_product_channels'
            if($this->maerrory == 0)
            {
                try {
                    $sql_var = array($this->product_id, $this->channel_id);  // Stworzenie tabeli z potrzebnymi wartościami branymi z pliku csv
                    $this->sql_sylius_product_channels->execute($sql_var); //Podstawienie wartości do kwerendy oraz jej realizacaja w bazie danych
                } catch (PDOException $e) {
                    // $this->sql_debug->execute(array($this->model,"sylius_product_channels",$e->getMessage()));
                    array_push($this->errormessage, [$this->model, "sylius_product_channels", $e->getMessage()]);
                    $this->maerrory = 1;
                }
            }
        // Dodanie wartosci do tabeli 'sylius_product_variant'
            if($this->maerrory == 0)
            {
                try {
                    $sql_var = array($this->product_id, $this->model, $today, $today, 1);  // Stworzenie tabeli z potrzebnymi wartościami branymi z pliku csv
                    $this->sql_sylius_product_variant->execute($sql_var); //Podstawienie wartości do kwerendy oraz jej realizacaja w bazie danych
                    $this->variant_id = $this->conn->lastInsertId();

                } catch (PDOException $e) {
//            $this->sql_debug->execute(array($this->model,"sylius_product_variant",$e->getMessage()));
                    array_push($this->errormessage, [$this->errormessage, $this->model, "sylius_product_variant", $e->getMessage()]);
                    $this->maerrory = 1;
                }
            }


        // Obsługa zdjec
            if($this->maerrory == 0)
            {
                try {
                    $const_path = "images/";
                    $main_src_array = explode(",", $this->img_main_src);
                    foreach ($main_src_array as $main) {
                        $image_main_path = $const_path . trim($main);
                        $main_pathinfo = pathinfo($image_main_path, PATHINFO_EXTENSION);
                        if (!list($image_main_x, $image_main_y) = getimagesize($image_main_path)) {
                            array_push($this->errormessage, [$this->model, "Obslga zdjec", "Prawdopodobnie brak zdjecia w folderze 'images'. Nazwa zdjęcia: " . trim($main)]);
                            $this->maerrory = 1;

                        } else {
                            if ($image_main_x >= $this->min_img_x && $image_main_y >= $this->min_img_y) {
                                if ($main_pathinfo == "png" || $main_pathinfo == "jpeg" || $main_pathinfo == "jpg" || $main_pathinfo == "svg") {
                                    $dir_path = $this->get_dir();
                                    $name = $this->generateRandomString(28);
                                    copy($image_main_path, "public/media/image" . "/" . $dir_path . "/" . $name . "." . $main_pathinfo);
                                    $path = $dir_path . "/" . $name . "." . $main_pathinfo;
                                    $sql_var1 = array($this->product_id, "main", $path);
                                    $this->sql_sylius_product_image->execute($sql_var1);
                                    $this->image_id = $this->conn->lastInsertId();
                                    $sql_var2 = array($this->image_id, $this->variant_id);
                                    $this->sql_sylius_product_image_product_variants->execute($sql_var2);


                                } else {
                                    $this->maerrory = 1;
                                    array_push($this->errormessage, [$this->model, "Obsluga zdjec", "Prawdopodobnie nieobsługiwany format zdjecia, obsługujemy jedynie jpg,jpeg,png. Nazwa zdjęcia: " . trim($main)]);
                                }
                            } else {
                                $this->maerrory = 1;
                                array_push($this->errormessage, [$this->model, "Obsluga zdjec / sylius_product_image_product_variants", "Zdjęcie prawdopodobnie jest za male. Minimalny wymiar: " . $this->min_img_x. " x ".$this->min_img_y .". Aktualny wymiar: ".$image_main_x." x ".$image_main_y." Nazwa zdjęcia: " . trim($main)]);
                            }


                        }
                    }
                        $thumbnail_src_array = explode(",", $this->img_thumbnail_src);
                        foreach ($thumbnail_src_array as $thumbnail) {
                            $image_thumbnail_path = $const_path . trim($thumbnail);
                        if (!list($image_thumbnail_x, $image_thumbnail_y) = getimagesize($image_thumbnail_path)) {
                            array_push($this->errormessage, [$this->model, "Obslga zdjec", "Prawdopodobnie brak zdjecia w folderze 'images'. Nazwa zdjęcia: " . trim($thumbnail)]);
                            $this->maerrory = 1;

                        } else {
                            $thumbnail_pathinfo = pathinfo($image_thumbnail_path, PATHINFO_EXTENSION);
                            if ($image_thumbnail_x >= $this->min_img_x && $image_thumbnail_y >= $this->min_img_y) {
                                if ($thumbnail_pathinfo == "png" || $thumbnail_pathinfo == "jpeg" || $thumbnail_pathinfo == "jpg" || $main_pathinfo == "svg") {
                                    $dir_path = $this->get_dir();
                                    $name = $this->generateRandomString(28);
                                    copy($image_thumbnail_path, "public/media/image" . "/" . $dir_path . "/" . $name . "." . $thumbnail_pathinfo);
                                    $path = $dir_path . "/" . $name . "." . $thumbnail_pathinfo;
                                    $sql_var1 = array($this->product_id, "thumbnail", $path);
                                    $this->sql_sylius_product_image->execute($sql_var1);
                                    $this->image_id = $this->conn->lastInsertId();
                                    $sql_var2 = array($this->image_id, $this->variant_id);
                                    $this->sql_sylius_product_image_product_variants->execute($sql_var2);  // Bierze z sylius_product_variants

                                } else {
                                    //                   $this->sql_debug->execute(array($this->model, "Obslga zdjec", "Prawdopodobnie nieobsługiwany format zdjecia, obsługujemy jedynie jpg,jpeg,png. Nazwa zdjęcia: " . $this->img_thumbnail_src));
                                    array_push($this->errormessage, [$this->model, "Obsluga zdjec", "Prawdopodobnie nieobsługiwany format zdjecia, obsługujemy jedynie jpg,jpeg,png. Nazwa zdjęcia: " . trim($thumbnail)]);
                                    $this->maerrory = 1;
                                }


                            } else {
                                $this->maerrory = 1;
//                    $this->sql_debug->execute(array($this->model, "Obslga zdjec", "Zdjęcie prawdopodobnie jest za male. Nazwa zdjęcia: " . $this->img_thumbnail_src));
                                array_push($this->errormessage, [$this->model, "Obsluga zdjec", "Zdjęcie prawdopodobnie jest za male. Minimalny wymiar: " . $this->min_img_x. " x ".$this->min_img_y .". Aktualny wymiar: ".$image_thumbnail_x." x ".$image_thumbnail_y." Nazwa zdjęcia: " . trim($thumbnail)]);
                            }
                        }
                        }

                } catch (PDOException $e) {
//            $this->sql_debug->execute(array($this->model,"sylius_product_variant","Problem ze zdjeciem"));
                    array_push($this->errormessage, [$this->model, "sylius_product_variant", "Nieprzewidziany problem z zdjeciem. Nazwa zdjęcia: " . trim($thumbnail)]);
                    $this->maerrory = 1;
                }
            }




        // Dodanie wartosci do tabeli 'sylius_product_taxon'

            if($this->maerrory == 0)
            {
                try {
                    $this->taxon_translate[$this->taxon_id]++;
                    $sql_var = array($this->product_id, $this->taxon_id, $this->taxon_translate[$this->taxon_id]);
                    $this->sql_sylius_product_taxon->execute($sql_var);
                } catch (PDOException $e) {
                    array_push($this->errormessage, [$this->model, "sylius_product_taxon", $e->getMessage()]);
                    $this->maerrory = 1;
                }
            }



        // Dodanie wartosci do tabeli 'sylius_channel_pricing'

            if($this->maerrory == 0)
            {
                try {
                    $cena = floatval($this->cena) * 100;
                    $sql_var = array($this->product_id, $cena, $cena, "PL_WEB");
                    $this->sql_sylius_channel_pricing->execute($sql_var);
                } catch (PDOException $e) {
                    $this->sql_debug->execute(array($this->model, "sylius_channel_pricing", $e->getMessage()));
                    array_push($this->errormessage, [$this->model, "sylius_channel_pricing", $e->getMessage()]);
                    $this->maerrory = 1;
                }
            }






        // Dodanie wartosci do tabeli 'sylius_product_translation'


            if($this->maerrory == 0)
            {
                try {
                    $slug = $this->slugify($this->nazwa_produktu);
                    $sql_var = array($this->product_id, $this->nazwa_produktu, $slug, $this->opis, $this->meta_keywords, $this->meta_opis, $this->short_opis, $this->locale);  // Stworzenie tabeli z potrzebnymi wartościami branymi z pliku csv
                    $this->sql_sylius_product_translation->execute($sql_var); //Podstawienie wartości do kwerendy oraz jej realizacaja w bazie danych
                } catch (PDOException $e) {
                    $this->sql_debug->execute(array($this->model, "sylius_product_translation", $e->getMessage()));
                    array_push($this->errormessage, [$this->model, "sylius_product_translation", $e->getMessage()]);
                    $this->maerrory = 1;
                }
            }

        if($this->maerrory == 0)
        {
            $this->conn->commit();
        }else $this->conn->rollback();

        echo "<pre>";
        print_r($this->errormessage);
        echo "</pre>";


        foreach($this->errormessage as $error)
        {
            $this->sql_debug->execute($error);
        }

        return $this->maerrory;
    }
}


// Połączenie z bazą danych, zamknięcie skryptu w razie niepowodzenia
try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname;charset=utf8mb4", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->exec("set names utf8");
    echo "Polaczono z baza danych <br>";

} catch(PDOException $e) {
    die("Polaczenie nieudane: <br>" . $e->getMessage()) . "<br>";
}



$conn->query("ALTER DATABASE `$dbname` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci");
$produkt = new Produkt($conn);
$produkt->debug_table();
$produkt->csv_upload($file_path);
$produkt->test_product_variant();
$produkt->taxon_id_array();

$sql_fetch_csv = $conn->query("SELECT * FROM csv_import WHERE status = 0;");
$sql_fetch_csv->setFetchMode(PDO::FETCH_ASSOC);
$fetch = $sql_fetch_csv->fetchAll();
$sql_model_code = $conn->prepare("SELECT * FROM csv_import WHERE model_code = ? AND status = 1");


// TODO Naprawa bledow o zduplikowanym produkcie przy kazdym errorze
// TODO Wieksza ilosc produktow w debugu niz statusu 0
// TODO Do sprawdzenia wszystkie te linijki poniżej bo chyba średnio są dopracowane

foreach ($fetch as $row)
    {
/*        try{
            if(!$row['id_Manufacturer'] == null || !$row['nazwa'] == null || !$row['cena'] == null)
            {
                $produkt->setValue($row['id_Manufacturer'],$row['ID_Kategori'],$row['model_code'],$row['nazwa'],$row['opis'],$row['zdjecie_glowne'],$row['zdjecie_dodatkowe'],$row['meta_opis'],$row['meta_keywords'],$row['cena'],$row['price_flag'],$row['hydrokolor'],$row['kolory'],$row['dodatkowe_kolory'],$row['waga'],$row['rozmiar'],$row['pojemnosc'],$row['material'],$row['dodatkowy_material_wykonania'],$row['rozmiar_opakowania'],$row['multipack'],$row['rozmiar_opakowania_zbiorczego'],$row['minimalne_zamowienie'],$row['coloration'],$row['znakowanie'],$row['kraj_produkcji'],$row['rozmiar_nadruku']);
                $sql_model_code->execute(array($row['model_code']));
                $sql_model_code->setFetchMode(PDO::FETCH_ASSOC);
                $fetch_model_code = $sql_model_code->fetchAll();
                if(!$fetch_model_code == array())
                {
                    if($produkt->AddProduct()){
                        echo " Dodano produkt:".$row['model_code'];
                        echo "<br><br> ========================================= <br><br>";
                        $conn->prepare("UPDATE csv_import SET status = 1 WHERE id = :id;")->execute([':id' => $row['id']]);

                    }else{
                        echo "Problem z produktem: ". $row['model_code']."<br>";
                        $produkt->sql_debug->execute(array($row['model_code'],"Plik CSV","Produkt już istnieje "));
                        echo "<br><br> ========================================= <br><br>";
                    }

                }else
                {
                    echo "Produkt już istnieje, kod modelu: ".$row['model_code']."<br>";
                    echo "<br><br> ========================================= <br><br>";
                }
            }else $produkt->sql_debug->execute(array($row['model_code'],"Plik CSV","Brak ID Producenta, nazwy produktu bądź ceny w pliku csv"));
        }catch (PDOException $e)
        {
            $produkt->sql_debug->execute(array($row['model_code'],"Plik CSV","Brak ID Producenta, ID Kategorii, Kod modelu, nazwy produktu, bądź ceny w pliku csv. SQL ERROR: ".$e->getMessage()));
            echo "Problem z produktem: ". $row['model_code'].". Prawdopodobnie brak jednego z wymaganych parametrow w pliku csv<br>".$e->getMessage()."<br>";
            echo "<br><br> ======================================== <br><br>";
        }*/

        if(count($row) == 32)
        {
            try {
                if(!$row['id_Manufacturer'] || !$row['ID_Kategori'] || !$row['model_code'] || !$row['cena'] || !$row['nazwa'])
                {
                    $produkt->sql_debug->execute(array("ID: ".$row['id'],"Plik CSV","Brak ID Producenta, ID Kategorii, Kod modelu, nazwy produktu, bądź ceny w pliku csv."));

                }else
                {
                    $produkt->setValue($row['id_Manufacturer'],$row['ID_Kategori'],$row['model_code'],$row['nazwa'],$row['opis'],$row['zdjecie_glowne'],$row['zdjecie_dodatkowe'],$row['meta_opis'],$row['meta_keywords'],$row['cena'],$row['price_flag'],$row['hydrokolor'],$row['kolory'],$row['dodatkowe_kolory'],$row['waga'],$row['rozmiar'],$row['pojemnosc'],$row['material'],$row['dodatkowy_material_wykonania'],$row['rozmiar_opakowania'],$row['multipack'],$row['rozmiar_opakowania_zbiorczego'],$row['minimalne_zamowienie'],$row['coloration'],$row['znakowanie'],$row['kraj_produkcji'],$row['rozmiar_nadruku']);
                    if($produkt->AddProduct() == 0)
                    {
                        $conn->prepare("UPDATE csv_import SET status = 1 WHERE id = :id;")->execute([':id' => $row['id']]);
                        echo "Dodano produkt ".$row['model_code']."<br>";
                        echo "================= <br>";
                    }else
                    {
                        echo "Problem z produktem ".$row['model_code']."<br>";
                        echo "================= <br>";
                    }
                }


            }catch (PDOException $e)
            {
                echo $e->getMessage();
            }
        }else
        {
            $count_v = count($row) - 2;
            $produkt->sql_debug->execute(array("ID: ".$row['id'],"Plik CSV","Nieodpowiednia ilość pozycji w pliku csv. Docelowo: 30. Aktualnie: ".$count_v));

        }







    }



//$produkt->setValues();
//$produkt->AddProduct();

// Patrzyłem na pliki csv, trzeba ogarnąć kategorie inne w taxonach, ma być status w tabeli produktów, nie wszędzie jest hydrokolor

// Path tymczasowo zmieniony na images/testing

// DO ZROBIENIA PO WYJEZDZIE
//Dodać do dodatkowych img parsowanie dla wielu zdjec
// Ogarnięcie polskich znaków w opisach bo dalej nie działają
