<template>
  <div class="h-screen w-full flex items-center" id="home">
    <div class="container px-5 text-lg text-default font-medium">
      <h1>Hello, my name is</h1>
      <h2 class="-my-2 text-xl font-semibold">Phanthakarn Khumphai</h2>
      <h3>And I'm <span class="text-highlight typing"></span></h3>
      <nuxt-link to="/about" class="text-base">About me</nuxt-link>
    </div>
  </div>
</template>

<script>
import Vanta from 'vanta/dist/vanta.waves.min';
// import '@nuxtjs/color-mode';
// import * as Theme from '@nuxtjs/color-mode';

export default {

  data() {
    return {
      theme: ""
    }
  },
  methods: {

  },
  mounted() {
    this.theme = this.$colorMode,
      console.log(this.$colorMode)
    console.log(this.$colorMode.$value)
    this.theme = this.$colorMode.value,
      console.log("theme :" + this.theme)
    console.log("ize")
    this.vantaHomeEffect = Vanta({
      el: '#home',
      mouseControls: false,
      touchControls: false,
      gyroControls: true,
      minHeight: 200.00,
      minWidth: 200.00,
      scale: 1.00,
      scaleMobile: 1.00,
      waveHeight: 10.00,
      waveSpeed: 0.60,
      zoom: 0.65,
    })
    if (this.$colorMode.value == 'system') {
      this.vantaHomeEffect.setOptions({ color: 0x858585 });
    } else {
      this.vantaHomeEffect.setOptions({ color: 0x9 });
    }

    var typed = new Typed(".typing", {
      strings: ["Developer.", "Programmer.", "Front-end.", "Back-end.", "Gamer."],
      typeSpeed: 100,
      backSpeed: 60,
      cursorChar: '|',
      loop: true
    });

    // if (theme === 'light'){
    //   effectHome.setOptions({ color: 0x858585 });
    // }
    // else {
    //   effectHome.setOptions({ color: 0x9 });
    // }
  }
}
</script>

<style scoped>
</style>
