<template>
  <Swiper
    class="h-96 md:h-600"
    :modules="[SwiperAutoplay, SwiperEffectCreative]"
    :slides-per-view="1"
    :loop="true"
    :effect="'creative'"
    :autoplay="{
      delay: 8000,
      disableOnInteraction: true,
    }"
    :creative-effect="{
      prev: {
        shadow: false,
        translate: ['-20%', 0, -1],
      },
      next: {
        translate: ['100%', 0, 0],
      },
    }"
  >
    <SwiperSlide v-for="slide in imageList" :key="slide">
      <img :src="slide" class="object-contain">
    </SwiperSlide>
  </Swiper>
</template>
<script setup>
import swiper1 from "/swiper-1.jpg"
import swiper2 from "/swiper-2.jpg"
import swiper3 from "/swiper-3.jpg"
const imageList = [swiper1, swiper2, swiper3]
</script>