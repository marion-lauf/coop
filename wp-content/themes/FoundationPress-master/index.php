<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * e.g., it puts together the home page when no home.php file exists.
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

get_header(); ?>

	<div class="row">
		<img src="http://via.placeholder.com/1440x525">
	</div>



<div class="main-wrap" role="main">



	<div class="row">
		<h1><b>RÉAMÉNAGEMENT DU QUARTIER COOP STRASBOURG</b></h1>
		<br />
		<div class="large-6 columns">
			<h2>Strasbourg a lancé de vastes projets de réhabilitation de ses friches industrielles (<b>Presqu'Ile Malraux, route du Rhin, ZAC des Deux Rives</b>) en nouveaux quartiers de la ville mêlant habitations, bureaux et espaces d'innovations artistiques ou entrepreunariales.</h2>
		</div>

		<div class="large-6 columns">
			<h2>Acquis en 2015 par la ville de Strasbourg, <b>les locaux de la Coop</b> et les parcelles avoisinantes ont donné lieu à différents appels à projets. Lors d'une conférence de presse le 10 avril dernier, la ville annonce les premiers projets retenus pour transformer et occuper les locaux.</h2>
		</div>
	</div>


	<br />
	<div class="row">
		<div class="large-1 columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/demi-lune.png" alt="Logo" class="demi-lune"/>
		</div>
		<div class="large-2 text-left columns">
			<h4><b>la demi-lune</b></h4>
		</div>

		<div class="large-1 columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/virgule.png" alt="Logo" class="virgule"/>
		</div>
		<div class="large-2 text-left columns end">
			<h4><b>la virgule</b></h4>
		</div>
	</div>

	<br />

	<div class="row contact">
			<h3 align="center"><b>Vous avez un projet en tête, réalisable au quartier de la Coop ?</b></h3>
			<button class="hollow button success" href="#">CONTACT</button>
	</div>


<div class="row">
	<div class="row small-up-1 medium-up-2 large-up-3">
	  <div class="column column-block">
	    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/1.png" alt="Logo" class="1"/>
	  </div>
	  <div class="column column-block">
	    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/2.png" alt="Logo" class="2"/>
	  </div>
	  <div class="column column-block">
	    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/3.png" alt="Logo" class="3"/>
	  </div>
	</div>
</div>

</div>

<?php get_footer();
