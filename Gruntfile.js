module.exports = function(grunt) {

  grunt.initConfig({
    responsive_images: {
      myTask: {
        options: {
          sizes: [
          {
            width: 1200,
          }]
        },
        files: [{
          expand: true,
          src: ['**.*'],
          cwd: 'src/assets/development/images',
          custom_dest: 'src/assets/production/images'
        }]
      }
    },

    sass: {
      dist: {
        options: {
          style: 'expanded'
        },
        files: {
          'src/assets/development/stylesheets/main.css': 'src/assets/development/stylesheets/main.scss'
        }
      }
    },

    watch: {
      css: {
        files: [
          'src/assets/development/stylesheets/*.scss',
          'src/assets/development/stylesheets/components/*.scss',
          'src/assets/development/stylesheets/pages/*.scss'
        ],
        tasks: ['sass', 'cssmin']
      }
    },

    cssmin: {
      target: {
        files: {
          'src/assets/production/stylesheets/main.min.css': 'src/assets/development/stylesheets/main.css'
        }
      }
    },
  });

  // -------------------------------------------------------------------------------------

  grunt.loadNpmTasks('grunt-responsive-images');
  grunt.loadNpmTasks('grunt-contrib-sass');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-cssmin');
  grunt.loadNpmTasks('grunt-contrib-uglify');

  grunt.registerTask('resize', ['responsive_images']);

  // -------------------------------------------------------------------------------------

  // 'default' preps all assets for deployment.
  // To run manually, run `grunt default`
  grunt.registerTask('default', ["resize", "sass", "cssmin"]);
};
