<template>
  <div class="h-screen w-full flex justify-center items-center overflow-hidden" id="home">
    <div
      class="container h-full px-5 text-lg sm:text-xl lg:text-lg xl:text-2xl text-default font-medium flex flex-col lg:flex-row justify-center lg:justify-around 2xl:justify-between lg:items-center relative">
      <div class="text-content">
        <h1>Hello, my name is</h1>
        <h2 class="-my-2 xl:-my-4 text-xl sm:text-4xl lg:text-xl xl:text-5xl font-semibold">Phanthakarn Khumphai</h2>
        <h3>And I'm <span class="text-highlight typing"></span><span class="text-highlight ml-px">|</span></h3>
        <nuxt-link to="/about" class="text-base 2xl:text-lg button">About me</nuxt-link>
      </div>
      <div class="icon-follow flex justify-center space-x-6 text-3xl absolute bottom-20 left-20">
        <a href="https://www.facebook.com/ize.phanthakarn.5/" target="_blank"
          class="fab fa-facebook-square hover-icon"></a>
        <a href="https://www.instagram.com/jjaoizee/" target="_blank" class="fab fa-instagram-square hover-icon"></a>
        <a href="https://github.com/izephanthakarn" target="_blank" class="fab fa-github-square hover-icon"></a>
      </div>
      <div class="img-content mt-20 text-5xl 2xl:text-7xl relative sm:mx-auto lg:mx-0">
        <div class="text-highlight icon">
          <div class="icon-move">
            <i class="uil-award"></i>
          </div>
        </div>
        <div class="text-highlight icon2 -top-16 right-48">
          <i class="uil-brain"></i>
        </div>
        <div class="text-highlight icon right-0">
          <i class="uil-bug"></i>
        </div>
        <div class="text-highlight icon2 bottom-12">
          <i class="uil-fidget-spinner"></i>
        </div>
        <div class="text-highlight icon -bottom-16 left-20">
          <i class="uil-jackhammer"></i>
        </div>
        <div class="text-highlight icon2 bottom-0 right-0">
          <i class="uil-snowflake"></i>
        </div>
        <img src="~/static/img/home/Profile.png" alt="" class="absolute w-9/12 z-20 ml-12 mt-6 icon2">
        <img src="~/static/img/home/blob.png" alt="" class="blob" v-show="$colorMode.value === 'light'">
        <img src="~/static/img/home/blob-dark.png" alt="" class="blob" v-show="$colorMode.value === 'dark'">
      </div>
    </div>
  </div>
</template>

<script>
import Vanta from 'vanta/dist/vanta.waves.min';


export default {

  data() {
    return {
      theme: ""
    }
  },
  methods: {

  },
  mounted() {
    // this.theme = this.$colorMode,
    //   console.log(this.$colorMode)
    // console.log(this.$colorMode.$value)
    // this.theme = this.$colorMode.value,
    //   console.log("theme :" + this.theme)
    // console.log("ize")
    // this.vantaHomeEffect = Vanta({
    //   // el: '#home',
    //   mouseControls: false,
    //   touchControls: false,
    //   gyroControls: true,
    //   minHeight: 200.00,
    //   minWidth: 200.00,
    //   scale: 1.00,
    //   scaleMobile: 1.00,
    //   waveHeight: 10.00,
    //   waveSpeed: 0.60,
    //   zoom: 0.65,
    // })
    // if (this.$colorMode.value == 'system') {
    //   this.vantaHomeEffect.setOptions({ color: 0x858585 });
    // } else {
    //   this.vantaHomeEffect.setOptions({ color: 0x9 });
    // }

    var typed = new Typed(".typing", {
      strings: ["Full Stack Developer.", "UX/UI Designer.", "Programmer.", "Gamer."],
      typeSpeed: 100,
      backSpeed: 60,
      cursorChar: '',
      loop: true
    });

    // if (theme === 'light'){
    //   effectHome.setOptions({ color: 0x858585 });
    // }
    // else {
    //   effectHome.setOptions({ color: 0x9 });
    // }

    const sr = ScrollReveal({
      distance: '100px',
      duration: 1500,
    })

    sr.reveal(`.text-content`, { origin: 'left', delay: 100 })
    sr.reveal(`.img-content`, { origin: 'right', delay: 200 })
  }
}
</script>

<style scoped>
.button {
  cursor: pointer;
  border: none;
  outline: none;
  padding: 5px 20px;
  background: transparent;
  color: var(--color);
  position: relative;
  transition: all 0.5s;
}

.button::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 3px;
  border-radius: 2px;
  height: 100%;
  background: var(--first-color);
  z-index: -1;
  transition: all 0.5s;
}

.button:hover::before {
  width: 100%;
  border-radius: 20px;
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
}

.button:hover {
  color: var(--white);
}

.button:active:before {
  background: #b9b9b9;
}

.img-content {
  width: 350px;
}

.blob {
  -webkit-filter: drop-shadow(8px 8px 12px var(--color-shadow-w));
  animation: floaty 2.5s infinite alternate;
}

.icon {
  position: absolute;
  animation: icon 3s infinite alternate;
}

/* Animate ghost */
@keyframes icon {
  0% {
    transform: translateY(0px);
  }

  100% {
    transform: translateY(-10px);
  }
}

.icon2 {
  position: absolute;
  animation: icon2 3s infinite alternate;
}

.icon-follow a{
  color: #FFF;
  transition: .3s;
}
.icon-follow a:hover{
  color: var(--color-primary);
}

.hover-icon {
  background: var(--color);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  transition: all .2s;
}

.hover-icon:hover {
  background: var(--color-primary);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  transition: all .2s;
}

/* Animate ghost */
@keyframes icon2 {
  0% {
    transform: translateY(0);
  }

  100% {
    transform: translateY(10px);
  }
}

@media (min-width:640px) {
  .img-content {
    width: 500px;
  }
}

@media (min-width:1024px) {
  .img-content {
    width: 35%;
  }

  .button::before {
    width: 4px;
  }
}

@media (min-width:1536px) {
  .img-content {
    width: 45%;
  }
}
</style>
