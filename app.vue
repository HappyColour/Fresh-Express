<script setup lang="ts">
useHead({
  title: '冷捷科技 - 国内领先的B2B冷链物流科技平台',
  meta: [
    { 'http-equiv': 'cleartype', content: 'on' },
    { 'http-equiv': 'x-dns-prefetch-control', content: 'on' },
    { name: 'HandheldFriendly', content: 'True' },
    { name: 'apple-mobile-web-app-capable', content: 'yes' },
    { name: 'viewport', content: 'width=device-width, initial-scale=1, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0' },
    { name: 'keywords', content: '冷捷,冷捷科技,物流,B2B物流,冷链,冷链物流,B2B冷链,B2B冷链物流,B2B冷链物流科技,B2B冷链物流科技平台'},
    { name: 'description', content: '冷捷科技将秉承“认真 坚持 做透”的企业理念，依托业内领先的B2B冷链物流科技平台，在业务模式、运营质量、技术能力、客户和运力资源、服务体系、系统平台、管理体系等能力上全面提升，形成规模与效益相互促进的良性循环，坚持从强基础、扩规模到高质量增长的稳健发展策略，成为冷链物流科技行业的引领者。' }
  ],
})
</script>
<template>
  <div class="flex flex-col min-h-screen">
    <Header />
    <NuxtPage class="flex-auto mb-8"/>
    <Footer />
  </div>
</template>
<style>
.mc {
  color: #1066aa
}
</style>
