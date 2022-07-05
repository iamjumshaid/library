# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'https://ga.jspm.io/npm:@hotwired/turbo-rails@7.1.3/app/javascript/turbo/index.js'
pin '@hotwired/stimulus', to: 'https://ga.jspm.io/npm:@hotwired/stimulus@3.0.1/dist/stimulus.js'
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin 'lodash', to: 'https://ga.jspm.io/npm:lodash@4.17.21/lodash.js'
pin '@hotwired/turbo', to: 'https://ga.jspm.io/npm:@hotwired/turbo@7.1.0/dist/turbo.es2017-esm.js'
pin '@rails/actioncable/src', to: 'https://ga.jspm.io/npm:@rails/actioncable@7.0.3/src/index.js'
pin 'prettier', to: 'https://ga.jspm.io/npm:prettier@2.7.1/standalone.js'
pin 'stimulus-notification', to: 'https://ga.jspm.io/npm:stimulus-notification@2.0.0/dist/stimulus-notification.es.js'
pin 'hotkeys-js', to: 'https://ga.jspm.io/npm:hotkeys-js@3.9.4/dist/hotkeys.esm.js'
pin 'stimulus-use', to: 'https://ga.jspm.io/npm:stimulus-use@0.50.0/dist/index.js'
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin_all_from 'app/javascript/controllers', under: 'controllers'
pin_all_from 'app/components', under: 'components'
pin 'stimulus-dropdown', to: 'https://ga.jspm.io/npm:stimulus-dropdown@2.0.0/dist/stimulus-dropdown.es.js'
pin '@hotwired/stimulus', to: 'https://ga.jspm.io/npm:@hotwired/stimulus@3.0.1/dist/stimulus.js'
pin 'hotkeys-js', to: 'https://ga.jspm.io/npm:hotkeys-js@3.9.4/dist/hotkeys.esm.js'
pin 'stimulus-use', to: 'https://ga.jspm.io/npm:stimulus-use@0.50.0/dist/index.js'
