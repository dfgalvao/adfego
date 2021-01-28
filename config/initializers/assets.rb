# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
 Rails.application.config.assets.precompile += %w( 
                                                   partners/anuncio.jpg
                                                   partners/detran-go.jpg
                                                   partners/indice.png
                                                   partners/fimtpoder.jpg
                                                   doctors/doctors-1.jpg
                                                   doctors/doctors-2.jpg
                                                   doctors/doctors-3.jpg
                                                   doctors/doctors-4.jpg
                                                   gallery/gallery-1.jpg
                                                   gallery/gallery-2.jpg
                                                   gallery/gallery-3.jpg
                                                   gallery/gallery-4.jpg
                                                   gallery/gallery-5.jpg
                                                   gallery/gallery-6.jpg
                                                   gallery/gallery-7.jpg
                                                   gallery/gallery-8.jpg
                                                   about.jpg
                                                   apple-touch-icon.png
                                                   departments-1.jpg
                                                   departments-2.jpg
                                                   departments-3.jpg
                                                   departments-4.jpg
                                                   departments-5.jpg
                                                   favicon.jpg 
                                                   hero-bg.jpg  )