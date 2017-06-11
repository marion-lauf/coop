<?php
/**
 * The template for displaying pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages and that
 * other "pages" on your WordPress site will use a different template.
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

 get_header(); ?>

 <div class=" articles">
   <div class="row">
       <ul>
         <?php
         $args = array( 'numberposts' => 6, 'order'=> 'ASC', 'orderby' => 'title' );
         $postslist = get_posts( $args );
         foreach ($postslist as $post) :  setup_postdata($post); ?>
         <div class="large-4 columns end extrait-page">
           <?php the_post_thumbnail(); ?>
           <a class="h1-title" href="<?php the_permalink(); ?>" title="<?php the_title();?>"> <?php the_title(); ?></a><br>
           <?php the_excerpt();?>
         </div>
         <?php endforeach; ?>
       </ul>
   </div>
 </div>

 <?php get_footer();
