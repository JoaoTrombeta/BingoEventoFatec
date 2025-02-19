<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Login Bingo</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='../css/cartela.css'>
    <script src='scripts/Login.js'></script>
</head>
<body>
    <header></header>
    <main>
        <table>
            <tr>
                <th colspan="5">
                    <h1 class="biggest-text">Console.Log(BINGO)</h1>
                </th>
            </tr>
            
            <?php
            session_start();

            if(isset($_SESSION['RA'])){
                $RA = $_SESSION['RA'];
            }else{
                header('location: ../');
            }
            $marcados = array();
            $cores = [];

            $con = new mysqli("localhost","root","","bingo_fatec");

            $buscaCartela = $con->query("SELECT c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25 FROM `cartela` WHERE `usuario` LIKE '$RA'");
            $buscaMarcados = $con->query("SELECT c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25 FROM `marcados` WHERE `usuario` LIKE '$RA'");
            if($buscaMarcados->num_rows > 0){
                $marcados = $buscaMarcados->fetch_assoc();
                foreach ($marcados as $key => $value) {
                    if($value == "0"){
                        $cores[$key] = '#ffffff';
                    }else{
                        $cores[$key] = '#ff0000';
                    }
                }
            }
            
            $cell = 0;
            if($buscaCartela->num_rows > 0){
                $celula = $buscaCartela->fetch_assoc();
                echo"<tr>";
                foreach ($celula as $key => $value) {
                    if($cell < 4){
                        echo "<td>
                            <form action='../processador/AlterarCartela.php' method='post'>
                                <input type='hidden' value='1' name='$key'>
                                <button type='submit' style='background-color:".$cores[$key].";'>".$value."</button>
                            </form>
                        </td>";
                        $cell = $cell + 1;
                    }else{
                        $cell = 0;
                        echo "<td>
                            <form action='../processador/AlterarCartela.php' method='post'>
                                <input type='hidden' value='1' name='$key'>
                                <button type='submit' style='background-color:".$cores[$key].";'>".$value."</button>
                            </form>
                        </td></tr><tr>";
                    }
                }
                echo"</tr>";
            }
            ?>
        </table>
        
    </main>
    <footer></footer>
</body>
</html>