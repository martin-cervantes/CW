function repeatStr($n, $str)
{
      $cadena = "";

      for($i = 1; $i <= $n; $i++)
      {
          $cadena .= $str;
      }

      return $cadena;
}
