// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  modules: [
    '@nuxtjs/tailwindcss',
    'nuxt-swiper',
    '@nuxtjs/robots',
    'nuxt-simple-sitemap',
    // '@vite-pwa/nuxt'
  ],
  runtimeConfig: {
    screct: process.env.NUXT_SCRECT,
    public : {
      serviceAPI: process.env.NUXT_SERVICE_API
    }
  },
  tailwindcss: {
    // add '~tailwind.config` alias
    exposeConfig: true
  }
})
