Reveal.initialize
  controls: true
  progress: true
  history: true
  rollingLinks: false
  slideNumber: true

  theme: Reveal.getQueryHash().theme || 'default'
  transition: Reveal.getQueryHash().transition || 'default'

  dependencies: [
    { src: 'javascripts/classList.js', condition: ->  !document.body.classList }
  ]
