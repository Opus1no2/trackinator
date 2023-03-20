const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        ruboto: ['Roboto', 'Helvetica Neue', 'Helvetica', 'Arial', 'sans-serif'],
      },
      colors: {
        'dark': '#11191f',
        'dark-shadow': '#0e0e0e',
        'transparent': 'transparent',
        'secondary': '#a979f8',
        'secondary-dark': '#161920',
        'lighter-dark': '#242729',
        'hover-dark': '#363636',
        'light-blue': '#90c1ea',
        'light-green': '#55c579',
        'list-item-dark': '#29292f',
        'list-item-light': '#2c313f'
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
  ]
}
