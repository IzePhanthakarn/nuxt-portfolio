<template>
  <div class="relative">
    <Navbar />
    <nuxt />
    <div class="pos-bar hidden xl:block">
      <div class="bar flex font-bold text-lg 2xl:text-xl">
        <div v-for="(t,index) in textShow" :key="index">
          <p v-if="t == ' '">&nbsp</p>
          <p v-else-if="index < numShow" class="text-highlight">
            {{t}}
          </p>
          <p else class="text-ndefault"> {{t}}</p>
        </div>
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
      numShow: 0,
      textShow: "[==//==//==//==//== < Ize Phanthakarn /> ==//==//==//==//==>",
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
      let high = progressBarScroll();
      self.numShow = Math.round((self.textShow.length*high)/100)
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
  top: 47%;
  left: -19.5%;
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