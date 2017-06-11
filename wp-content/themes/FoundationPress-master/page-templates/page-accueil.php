<?php
/*
Template Name: Page d'accueil
*/

get_header(); ?>
<section class="texture premiere">
<br />
	<div class="main-wrap" role="main">
		<div class="row ">
			<img height="535" width="1122" src="<?php echo get_stylesheet_directory_uri(); ?>/assets/images/slide.png" alt="Logo" class="slide"/>
		</div>
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

<div class="main-wrap" role="main"><br />
		<div class="row liens">
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
	<div class="articles">
		<div class="row">
				<ul>
					<?php
					$args = array( 'numberposts' => 3, 'order'=> 'ASC', 'orderby' => 'title' );
					$postslist = get_posts( $args );
					foreach ($postslist as $post) :  setup_postdata($post); ?>
					<div class="large-4 columns end extrait-page">
						<?php the_post_thumbnail(); ?>
						<a class="h1-title" href="<?php the_permalink(); ?>" title="<?php the_title();?>"> <?php the_title(); ?></a><br>
						<?php the_excerpt(); ?>
					</div>
					<?php endforeach; ?>
				</ul>
		</div>
	</div>
</div>


</div>


<br />
<div class="row">
	<div class="large-2 text-left columns">
		<h4 class="part"><b>Partenaires</b></h4>
	</div>
</div>

	<br />

<div class="row sponsors">
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
