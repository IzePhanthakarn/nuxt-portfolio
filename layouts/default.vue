<template>
  <div class="relative">
    <Navbar />
    <nuxt />
    <div class="pos-bar hidden xl:block">
      <div class="bar flex font-bold text-lg 2xl:text-xl text-ndefault">
        <p :class="{ 'text-highlight': perce1 }">[</p>
        <p :class="{ 'text-highlight': perce2 }">=</p>
        <p :class="{ 'text-highlight': perce3 }">=</p>
        <p :class="{ 'text-highlight': perce4 }">/</p>
        <p :class="{ 'text-highlight': perce5 }">/</p>
        <p :class="{ 'text-highlight': perce6 }">=</p>
        <p :class="{ 'text-highlight': perce7 }">=</p>
        <p :class="{ 'text-highlight': perce8 }">/</p>
        <p :class="{ 'text-highlight': perce9 }">/</p>
        <p :class="{ 'text-highlight': perce10 }">=</p>
        <p :class="{ 'text-highlight': perce11 }">=</p>
        <p :class="{ 'text-highlight': perce12 }">/</p>
        <p :class="{ 'text-highlight': perce13 }">/</p>
        <p :class="{ 'text-highlight': perce14 }">=</p>
        <p :class="{ 'text-highlight': perce15 }">=</p>
        <p :class="{ 'text-highlight': perce16 }">/</p>
        <p :class="{ 'text-highlight': perce17 }">/</p>
        <p :class="{ 'text-highlight': perce18 }">=</p>
        <p :class="{ 'text-highlight': perce19 }">=</p>
        <p :class="{ 'text-highlight': perce20 }">&nbsp;</p>
        <p :class="{ 'text-highlight': perce21 }">&lt;</p>
        <p>&nbsp;</p>
        <p :class="{ 'text-highlight': perce22 }">I</p>
        <p :class="{ 'text-highlight': perce23 }">z</p>
        <p :class="{ 'text-highlight': perce24 }">e</p>
        <p>&nbsp;</p>
        <p :class="{ 'text-highlight': perce25 }">P</p>
        <p :class="{ 'text-highlight': perce26 }">h</p>
        <p :class="{ 'text-highlight': perce27 }">a</p>
        <p :class="{ 'text-highlight': perce28 }">n</p>
        <p :class="{ 'text-highlight': perce29 }">t</p>
        <p :class="{ 'text-highlight': perce30 }">h</p>
        <p :class="{ 'text-highlight': perce31 }">a</p>
        <p :class="{ 'text-highlight': perce32 }">k</p>
        <p :class="{ 'text-highlight': perce33 }">a</p>
        <p :class="{ 'text-highlight': perce34 }">r</p>
        <p :class="{ 'text-highlight': perce35 }">n</p>
        <p>&nbsp;</p>
        <p :class="{ 'text-highlight': perce36 }">/</p>
        <p :class="{ 'text-highlight': perce37 }">></p>
        <p>&nbsp;</p>
        <p :class="{ 'text-highlight': perce38 }">=</p>
        <p :class="{ 'text-highlight': perce39 }">=</p>
        <p :class="{ 'text-highlight': perce40 }">/</p>
        <p :class="{ 'text-highlight': perce41 }">/</p>
        <p :class="{ 'text-highlight': perce42 }">=</p>
        <p :class="{ 'text-highlight': perce43 }">=</p>
        <p :class="{ 'text-highlight': perce44 }">/</p>
        <p :class="{ 'text-highlight': perce45 }">/</p>
        <p :class="{ 'text-highlight': perce46 }">=</p>
        <p :class="{ 'text-highlight': perce47 }">=</p>
        <p :class="{ 'text-highlight': perce48 }">/</p>
        <p :class="{ 'text-highlight': perce49 }">/</p>
        <p :class="{ 'text-highlight': perce50 }">=</p>
        <p :class="{ 'text-highlight': perce51 }">=</p>
        <p :class="{ 'text-highlight': perce52 }">/</p>
        <p :class="{ 'text-highlight': perce53 }">/</p>
        <p :class="{ 'text-highlight': perce54 }">=</p>
        <p :class="{ 'text-highlight': perce55 }">=</p>
        <p :class="{ 'text-highlight': perce56 }">></p>
      </div>
    </div>
    <Foot />
  </div>
</template>

<script>
import Navbar from '../components/layout/navbar.vue';
import Foot from '../components/layout/foot.vue';
export default {
  data() {
    return {
      high: 0,
      heights: 0,
      perce1: false,
      perce2: false,
      perce3: false,
      perce4: false,
      perce5: false,
      perce6: false,
      perce7: false,
      perce8: false,
      perce9: false,
      perce10: false,
      perce11: false,
      perce12: false,
      perce13: false,
      perce14: false,
      perce15: false,
      perce16: false,
      perce17: false,
      perce18: false,
      perce19: false,
      perce20: false,
      perce21: false,
      perce22: false,
      perce23: false,
      perce24: false,
      perce25: false,
      perce26: false,
      perce27: false,
      perce28: false,
      perce29: false,
      perce30: false,
      perce31: false,
      perce32: false,
      perce33: false,
      perce34: false,
      perce35: false,
      perce36: false,
      perce37: false,
      perce38: false,
      perce39: false,
      perce40: false,
      perce41: false,
      perce42: false,
      perce43: false,
      perce44: false,
      perce45: false,
      perce46: false,
      perce47: false,
      perce48: false,
      perce49: false,
      perce50: false,
      perce51: false,
      perce52: false,
      perce53: false,
      perce54: false,
      perce55: false,
      perce56: false,
    }
  },
  components: { Navbar, Foot },
  async mounted() {
    const self = this
    function progressBarScroll() {
      let winScroll = document.body.scrollTop || document.documentElement.scrollTop,
        height = document.documentElement.scrollHeight - document.documentElement.clientHeight,
        scrolled = (winScroll / height) * 100;
      return scrolled
    }
    window.onscroll = function () {
      this.high = progressBarScroll();
      if (this.high >= 1.79) self.perce1 = true; else self.perce1 = false
      if (this.high >= 3.57) self.perce2 = true; else self.perce2 = false
      if (this.high >= 5.36) self.perce3 = true; else self.perce3 = false
      if (this.high >= 7.14) self.perce4 = true; else self.perce4 = false
      if (this.high >= 8.93) self.perce5 = true; else self.perce5 = false
      if (this.high >= 10.71) self.perce6 = true; else self.perce6 = false
      if (this.high >= 12.5) self.perce7 = true; else self.perce7 = false
      if (this.high >= 14.29) self.perce8 = true; else self.perce8 = false
      if (this.high >= 16.07) self.perce9 = true; else self.perce9 = false
      if (this.high >= 17.87) self.perce10 = true; else self.perce10 = false
      if (this.high >= 19.64) self.perce11 = true; else self.perce11 = false
      if (this.high >= 21.43) self.perce12 = true; else self.perce12 = false
      if (this.high >= 23.21) self.perce13 = true; else self.perce13 = false
      if (this.high >= 25) self.perce14 = true; else self.perce14 = false
      if (this.high >= 26.79) self.perce15 = true; else self.perce15 = false
      if (this.high >= 28.57) self.perce16 = true; else self.perce16 = false
      if (this.high >= 30.36) self.perce17 = true; else self.perce17 = false
      if (this.high >= 32.14) self.perce18 = true; else self.perce18 = false
      if (this.high >= 33.93) self.perce19 = true; else self.perce19 = false
      if (this.high >= 35.71) self.perce20 = true; else self.perce20 = false
      if (this.high >= 37.5) self.perce21 = true; else self.perce21 = false
      if (this.high >= 39.29) self.perce22 = true; else self.perce22 = false
      if (this.high >= 41.07) self.perce23 = true; else self.perce23 = false
      if (this.high >= 42.86) self.perce24 = true; else self.perce24 = false
      if (this.high >= 44.64) self.perce25 = true; else self.perce25 = false
      if (this.high >= 46.43) self.perce26 = true; else self.perce26 = false
      if (this.high >= 48.21) self.perce27 = true; else self.perce27 = false
      if (this.high >= 50) self.perce28 = true; else self.perce28 = false
      if (this.high >= 51.79) self.perce29 = true; else self.perce29 = false
      if (this.high >= 53.57) self.perce30 = true; else self.perce30 = false
      if (this.high >= 55.36) self.perce31 = true; else self.perce31 = false
      if (this.high >= 57.14) self.perce32 = true; else self.perce32 = false
      if (this.high >= 58.93) self.perce33 = true; else self.perce33 = false
      if (this.high >= 60.71) self.perce34 = true; else self.perce34 = false
      if (this.high >= 62.5) self.perce35 = true; else self.perce35 = false
      if (this.high >= 64.29) self.perce36 = true; else self.perce36 = false
      if (this.high >= 66.07) self.perce37 = true; else self.perce37 = false
      if (this.high >= 67.86) self.perce38 = true; else self.perce38 = false
      if (this.high >= 69.64) self.perce39 = true; else self.perce39 = false
      if (this.high >= 71.43) self.perce40 = true; else self.perce40 = false
      if (this.high >= 73.21) self.perce41 = true; else self.perce41 = false
      if (this.high >= 75) self.perce42 = true; else self.perce42 = false
      if (this.high >= 76.79) self.perce43 = true; else self.perce43 = false
      if (this.high >= 78.57) self.perce44 = true; else self.perce44 = false
      if (this.high >= 80.36) self.perce45 = true; else self.perce45 = false
      if (this.high >= 82.14) self.perce46 = true; else self.perce46 = false
      if (this.high >= 83.93) self.perce47 = true; else self.perce47 = false
      if (this.high >= 85.71) self.perce48 = true; else self.perce48 = false
      if (this.high >= 87.5) self.perce49 = true; else self.perce49 = false
      if (this.high >= 89.29) self.perce50 = true; else self.perce50 = false
      if (this.high >= 91.07) self.perce51 = true; else self.perce51 = false
      if (this.high >= 92.86) self.perce52 = true; else self.perce52 = false
      if (this.high >= 94.64) self.perce53 = true; else self.perce53 = false
      if (this.high >= 96.43) self.perce54 = true; else self.perce54 = false
      if (this.high >= 98.21) self.perce55 = true; else self.perce55 = false
      if (this.high >= 100) self.perce56 = true; else self.perce56 = false

    };
    const sr = ScrollReveal({
      distance: '100px',
      duration: 1500,
    })
    sr.reveal(`.pos-bar`, { origin: 'bottom', delay: 200 })
  },
  watch: {

  }
}
</script>

<style scoped>
.pos-bar {
  position: fixed;
  top: 50%;
  left: -18%;
}

.bar {
  transform: rotate(90deg);
  /* transform: translateY(50%); */
}

@media (min-width:1536px){
  .pos-bar{
    left: -16%;
  }
}
</style>