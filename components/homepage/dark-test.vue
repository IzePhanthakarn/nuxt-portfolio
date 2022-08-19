<template>
  <div class="h-screen w-full flex items-center" id="abcd">
    <div class="column-1 container px-3">
      <h1 class="text-3xl font-semibold">home</h1>
      <h1 v-if="$colorMode.preference === 'light'">light</h1>
      <h1 v-if="$colorMode.preference === 'dark'">dark</h1>
      <span v-if="$colorMode.preference === 'system'">(<i>{{ $colorMode.value }}</i> mode detected)</span>
      <span v-if="$colorMode.preference === 'light'">(<i>{{ $colorMode.value }}</i> mode detected)</span>
      <span v-if="$colorMode.preference === 'dark'">(<i>{{ $colorMode.value }}</i> mode detected)</span>
      <h1 class="text-3xl font-semibold bg-primary">Phanthakarn</h1>
      <i class="uil uil-estate nav__icon"></i>
      <div @click="$colorMode.preference = 'light'">
        <base-icon icon="sun" size="24" viewBox="0 0 24 24" v-show="$colorMode.value === 'dark'" />
      </div>
      <div @click="$colorMode.preference = 'dark'">
        <base-icon icon="bolt" size="24" viewBox="0 0 24 24" v-show="$colorMode.value === 'light'" />
      </div>
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
      colors: ['system', 'light', 'dark', 'sepia'],
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
    this.vantaEffect = Vanta({
      el: '#abcd', // element id or DOM object reference
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
    // const colorMode = this.useColorMode()
    // console.log(colorMode.preference)
    if (this.$colorMode.value == 'system') {
      this.vantaEffect.setOptions({ color: 0x858585 });
    } else {
      this.vantaEffect.setOptions({ color: 0x9 });
    }

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
/* body {
  background-color: #fff;
  color: rgba(0,0,0,0.8);
}
.dark-mode body {
  background-color: #091a28;
  color: #ebf4f1;
}
.sepia-mode body {
  background-color: #f1e7d0;
  color: #433422;
} */
.icon{
  color: var(--color-primary);
  /* -webkit-background-clip: text; */
  /* -webkit-text-fill-color: transparent; */
  transition: all .2s;
}
</style>
