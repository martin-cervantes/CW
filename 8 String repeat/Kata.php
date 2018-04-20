function repeatStr($n, $str)
{
      $cadena = "";

      for($i = 1; $i <= $n; $i++)
      {
          $cadena = $cadena.$str;
      }

      return $cadena;
}
