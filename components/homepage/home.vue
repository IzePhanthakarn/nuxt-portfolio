<template>
  <div class="h-screen" id="abc">
    <h1 class="text-3xl font-semibold">home</h1>
    <h1 v-if="$colorMode.preference === 'light'">light</h1>
    <h1 v-if="$colorMode.preference === 'dark'">dark</h1>
    <span v-if="$colorMode.preference === 'system'">(<i>{{ $colorMode.value }}</i> mode detected)</span>
    <span v-if="$colorMode.preference === 'light'">(<i>{{ $colorMode.value }}</i> mode detected)</span>
    <span v-if="$colorMode.preference === 'dark'">(<i>{{ $colorMode.value }}</i> mode detected)</span>
    <h1 class="text-3xl font-semibold bg-primary">Phanthakarn</h1>
    <div @click="$colorMode.preference = 'light'">
      <base-icon icon="sun" size="24" viewBox="0 0 24 24" v-show="$colorMode.value === 'dark'" />
    </div>
    <div @click="$colorMode.preference = 'dark'">
      <base-icon icon="bolt" size="24" viewBox="0 0 24 24" v-show="$colorMode.value === 'light'" />
    </div>
  </div>
</template>

<script>
import Vanta from 'vanta/dist/vanta.waves.min';
// import '@nuxtjs/color-mode';
// import * as Theme from '@nuxtjs/color-mode';
export default {
  mounted() {
    this.vantaEffect = Vanta({
      el: '#abc', // element id or DOM object reference
      mouseControls: false,
      touchControls: false,
      gyroControls: true,
      minHeight: 200.00,
      minWidth: 200.00,
      scale: 1.00,
      scaleMobile: 1.00,
      waveHeight: 10.00,
      waveSpeed: 0.60,
      zoom: 0.65
    })
    const colorMode = useColorMode()
    console.log(colorMode.preference)
    if (colorMode.value == 'light'){
      effectHome.setOptions({ color: 0x858585 });
    } else {
      effectHome.setOptions({ color: 0x9 });
    }

    // if (theme === 'light'){
    //   effectHome.setOptions({ color: 0x858585 });
    // }
    // else {
    //   effectHome.setOptions({ color: 0x9 });
    // }
  }
  // async mounted() {
  //   // window is only avaiable on browser
  //   if (process.browser) {
  //     window.THREE = THREE;
  //     const { default: WAVES } = await import("vanta/dist/vanta.waves.min");
  //     WAVES({
  //       el: "#abc",
  //       mmouseControls: true,
  //       touchControls: true,
  //       gyroControls: false,
  //       minHeight: 200.00,
  //       minWidth: 200.00,
  //       scale: 1.00,
  //       scaleMobile: 1.00,
  //       THREE: window.THREE
  //     });
  //   }
  // }
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
</style>
