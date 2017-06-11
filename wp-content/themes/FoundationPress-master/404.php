<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

get_header(); ?>


 <div class="main-wrap" role="main">
  <div class="row 404-part" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 0px 10px 0 rgba(0, 0, 0, 0.19); padding-top: 90px; padding-bottom: 35px;">
    <div class="large-6 text-center columns">
      <span>404</span>
    </div>
    <div class="large-6 text-left 404-right columns">
      <h1>PAGE NON TROUVÉE</h1>
      <h2>La page demandée n'est malheureusement pas disponible.</h2>
      <a href="javascript:history.go(-1)" class="button round bouton-404"><i class="fa fa-long-arrow-left" aria-hidden="true"></i> Retour</a>
    </div>
  </div>
 </div>

<?php get_footer();
