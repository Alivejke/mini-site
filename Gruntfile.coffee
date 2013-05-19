module.exports = (grunt) ->
	grunt.loadNpmTasks 'grunt-contrib-watch'
	grunt.loadNpmTasks 'grunt-contrib-coffee'
	grunt.loadNpmTasks 'grunt-contrib-compass'
	grunt.loadNpmTasks 'grunt-contrib-connect'

	grunt.initConfig
		watch:
			options:
				livereload: true
				interrupt: true
			css:
				files: 'app/sass/**/*.sass'
				tasks: ['compass']
			js:
				files: 'app/coffee/**/*.coffee'
				tasks: ['coffee']
			html:
				files: 'app/**/*.html'
				tasks: []

		coffee:
			dev:
				options:
					sourceMap: true
					separator: ';'
					join: true
				files:
					'app/js/index.js': 'app/coffee/**/*.coffee'

		compass:
			dev:
				options:
					basePath: 'app/'
					sassDir: 'sass'
					cssDir: 'css'
					imagesDir: 'img'
					httpPath: '/'

		connect:
			server:
				options:
					port: 9001
					base: 'app'


	grunt.registerTask 'default', ['debug']
	grunt.registerTask 'debug', ['connect', 'watch']