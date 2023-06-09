// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  modules: [
    '@nuxtjs/tailwindcss',
    'nuxt-swiper'
  ],
  tailwindcss: {
    // add '~tailwind.config` alias
    exposeConfig: true
  }
})
