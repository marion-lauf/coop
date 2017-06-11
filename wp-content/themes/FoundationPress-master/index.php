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
<br />
<section class="texture">
	<div class="row texture">
		<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/slide.png" alt="slide" class="slide"/>
	</div>
</section>

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
	<br />
	<div class="row contact">
			<h3 class="accroche"><b>Vous avez un projet en tête, réalisable au quartier de la Coop ?
				<button class="hollow button success" href="http://localhost/coop-marion/contact/">CONTACT<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/fleche.png" alt="fleche" class="fleche"/></button>
			</b></h3>
	</div>

<br />
<br />
<div class="row articles">
	<div class="row small-up-1 medium-up-2 large-up-3">
	  <div class="column column">
	    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/1.png" alt="Logo" class="1"/>
			<h3 class="titre"><b>Pas de Laiterie à la Coop</b></h3>
			<h5>Dans le projet initial de réaménagement de la Coop,la salle de concerts de La Laiterie devait venir s’y installer. Ce ne sera finalement pas le cas. Toutefois, le festival Ososphère sera bien accueilli sur le site.</h5>
			<p>En savoir plus <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/fleche1.png" alt="fleche" class="fleche"/></p>
	  </div>

	  <div class="column column">
	    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/2.png" alt="Logo" class="2"/>
			<h3 class="titre"><b>résultats dévoilés...</b></h3>
			<h5>Les résultats de l’appel à manifestation d’intérêt pour occuper trois bâtiments de l’ancienne Coop, ont été dévoilés. En effet, Salle d’expo, Fab lab, ateliers d’artistes et espace de co-working occuperont la partie ouest.</h5>
			<p>En savoir plus <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/fleche1.png" alt="fleche" class="fleche"/></p>
	  </div>

	  <div class="column column">
	    <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/3.png" alt="Logo" class="3"/>
			<h3 class="titre"><b>les futurs OCCUPANTS de la virgule</b></h3>
			<h5>Ces espaces couvrant une surface de près de 3000m² seront dédiés à de la création, qu’elle soit artistique, culturelle ou économique.
			Ouverture prévue de ces nouveaux équipements : premier semestre 2019. </h5>
			<p>En savoir plus <img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/fleche1.png" alt="fleche" class="fleche"/></p>
	  </div>
	</div>
</div>


<br />
<div class="row">
	<div class="large-2 text-left columns">
		<h4 class="partenaires"><b>Partenaires</b></h4>
	</div>
</div>

	<br />
	<div class="row">
		<div class="large-2 text-left columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/strasbourg.png" alt="strasbourg" class="strasbourg"/>
		</div>

		<div class="large-2 text-left columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dna.png" alt="dna" class="dna"/>
		</div>

		<div class="large-2 text-left columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/cts.png" alt="cts" class="cts"/>
		</div>

		<div class="large-2 text-left columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/strasbourg.png" alt="strasbourg" class="strasbourg"/>
		</div>

		<div class="large-2 text-left columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/dna.png" alt="dna" class="dna"/>
		</div>

		<div class="large-2 text-left columns">
			<img src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/cts.png" alt="cts" class="cts"/>
		</div>


</div>

<?php get_footer();
