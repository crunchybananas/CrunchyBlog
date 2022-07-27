/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./**/*.{html,swift}"],
  theme: {
    extend: {},
  },
  plugins: [require('@tailwindcss/typography')],
}
