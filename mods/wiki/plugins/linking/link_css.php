<?php

/*
 this _link_regex_callback() plugin includes the correct css
 class names into the <a> links generated by ewiki_format()

 known classes (always lowercase):
  <a class="wikipage" href="...">
  <a class="binary" href="...">
  <b class="notfound">...</b><a class="notfound" href="...">
  <a class="email" href="...">
  <a class="anchor" href="...">
  <a class="http" href="..."> and all others
  <a class="interwiki" href="...">
  <a class="meatball" href="..."> and all others
*/



$ewiki_plugins["link_final"][] = "ewiki_link_css";



function ewiki_link_css(&$html, $type, $href, $title) {

   if (count($type)) {

      ksort($type);

      $classes = strtolower(implode(" ", $type));

      if (strpos(">?</a>", $html)) {
         $html = str_replace("<b ", '<b class="'.$classes.'" ', $html);
      }

      if (!strpos($type, "image")) {
         $html = str_replace("<a ", '<a class="'.$classes.'" ', $html);
      }
   }
}


?>