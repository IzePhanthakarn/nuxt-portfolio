<template>
  <div class="relative overflow-hidden">

    <!-- Timer -->
    <div v-if="isCount == true"
      class="px-2 counter overflow-hidden text-default flex flex-col lg:flex-row justify-center items-center relative bg-counter"
      :class="{'bg-counter-dark':$colorMode.value === 'dark'}">

      <!-- Navbar -->
      <div class="navbar container flex items-center justify-between px-4 absolute top-0">
        <nuxt-link to="/" class="logo text-xl my-auto font-bold">Phanthakarn</nuxt-link>
        <div class="">
          <div @click="$colorMode.preference = 'light'" v-show="$colorMode.value === 'dark'"
            class="text-highlight pt-2 cursor-pointer text-2xl">
            <i class="uil-sun"></i>
          </div>
          <div @click="$colorMode.preference = 'dark'" v-show="$colorMode.value === 'light'"
            class="text-highlight pt-2 cursor-pointer text-2xl">
            <i class="uil-bolt"></i>
          </div>
        </div>
      </div>

      <!-- Timer -->
      <div class="container flex flex-col lg:flex-row justify-center items-center">
        <div class="w-full lg:w-1/2 mt-10 lg:mt-0 flex flex-col justify-center items-center lg:items-start">
          <div class="header flex flex-col items-center justify-center lg:items-start">
            <h1 class="text-4xl font-semibold sm:text-6xl lg:text-3xl xl:text-4xl">Countdown to </h1>
            <h2 class="text-lg font-medium sm:text-2xl lg:text-lg xl:text-xl">{{header}}</h2>
          </div>
          <div class="clock p-2 rounded-lg w-full mt-8 text-5xl lg:text-3xl sm:w-auto">
            <div
              class="bg-digit rounded-lg p-2 sm:py-4 sm:px-8 lg:py-2 lg:px-2 xl:py-4 xl:px-8 flex items-center justify-between sm:justify-center sm:space-x-2 xl:space-x-8">

              <!-- Dya content -->
              <div class="time-box flex flex-col items-center justify-center">
                <p class="text-3xl lg:text-xl xl:text-3xl xl:font-semibold">{{displayDays}}</p>
                <p class="text-tiny xl:text-lg xl:font-medium">days</p>
              </div>
              <p class="-mt-8 xl:text-5xl xl:-mt-11">:</p>

              <!-- Hour content -->
              <div class="time-box flex flex-col items-center justify-center">
                <p class="text-3xl lg:text-xl xl:text-3xl xl:font-semibold">{{displayHours}}</p>
                <p class="text-tiny xl:text-lg xl:font-medium">hours</p>
              </div>
              <p class="-mt-8 xl:text-5xl xl:-mt-11">:</p>

              <!-- Minute content -->
              <div class="time-box flex flex-col items-center justify-center">
                <p class="text-3xl lg:text-xl xl:text-3xl xl:font-semibold">{{displayMinutes}}</p>
                <p class="text-tiny xl:text-lg xl:font-medium">minutes</p>
              </div>
              <p class="-mt-8 xl:text-5xl xl:-mt-11">:</p>

              <!-- Second content -->
              <div class="time-box flex flex-col items-center justify-center">
                <p class="text-3xl lg:text-xl xl:text-3xl xl:font-semibold">{{displaySeconds}}</p>
                <p class="text-tiny xl:text-lg xl:font-medium">seconds</p>
              </div>
            </div>
          </div>
        </div>

        <!-- Image content -->
        <div class="img-content w-full lg:w-1/2 mt-0 text-3xl sm:text-5xl 2xl:text-7xl relative sm:mx-auto lg:mx-0">
          <img src="~/static/img/me/me.png" alt="" class="absolute w-9/12 z-20 ml-12 mt-6 icon2">
          <img src="~/static/img/home/blob.png" alt="" class="blob" v-show="$colorMode.value === 'light'">
          <img src="~/static/img/home/blob-dark.png" alt="" class="blob" v-show="$colorMode.value === 'dark'">
        </div>
      </div>

      <!-- Social icon -->
      <div
        class="icon-follow flex justify-center space-x-6 text-3xl absolute hidden sm:block sm:space-x-0 sm:bottom-10 sm:right-10 lg:bottom-16 lg:right-40 lg:flex lg:space-x-6 lg:justify-start">
        <div class="fb-icon tooltip">
          <a href="https://www.facebook.com/ize.phanthakarn.5/" target="_blank"
            class="fab fa-facebook-square hover-icon"></a>
          <span class="tooltiptext">Facebook</span>
        </div>
        <div class="ig-icon tooltip">
          <a href="https://www.instagram.com/jjaoizee/" target="_blank" class="fab fa-instagram-square hover-icon"></a>
          <span class="tooltiptext">Instagram</span>
        </div>
        <div class="gh-icon tooltip">
          <a href="https://github.com/izephanthakarn" target="_blank" class="fab fa-github-square hover-icon"></a>
          <span class="tooltiptext">Github</span>
        </div>
        <div class="line-icon tooltip">
          <a href="https://line.me/ti/p/Gkx0_u2GwJ" target="_blank" class="fab fa-line hover-icon"></a>
          <span class="tooltiptext">Line</span>
        </div>
      </div>

      <!-- Context menu -->
      <div class="wrapper w-56 rounded-xl text-base font-medium z-50">
        <div class="content">
          <ul class="menu py-1.5">
            <li class="goto item flex justify-between relative">
              <div>
                <i class="uil uil-share"></i>
                <span>Go To</span>
              </div>
              <i class="uil uil-angle-right-b"></i>
              <ul class="goto-menu py-1 rounded-lg">
                <nuxt-link to="/" class="item" :class="{ 'hidden-context': route_name == 'index' }">
                  <i class="uil uil-estate"></i>
                  <span>Home</span>
                </nuxt-link>
                <nuxt-link to="/about" class="item" :class="{ 'hidden-context': route_name == 'about' }">
                  <i class="uil uil-user"></i>
                  <span>About</span>
                </nuxt-link>
                <nuxt-link to="/experiences" class="item" :class="{ 'hidden-context': route_name == 'experiences' }">
                  <i class="uil uil-file-alt"></i>
                  <span>Experiences</span>
                </nuxt-link>
                <nuxt-link to="/skills" class="item" :class="{ 'hidden-context': route_name == 'skills' }">
                  <i class="uil uil-briefcase-alt"></i>
                  <span>Skills</span>
                </nuxt-link>
                <nuxt-link to="/projects" class="item" :class="{ 'hidden-context': route_name == 'projects' }">
                  <i class="uil uil-scenery"></i>
                  <span>Projects</span>
                </nuxt-link>
                <nuxt-link to="/contacts" class="item" :class="{ 'hidden-context': route_name == 'contacts' }">
                  <i class="uil uil-message"></i>
                  <span>Contacts</span>
                </nuxt-link>
              </ul>
            </li>
            <hr class="my-1">
            <li class="item" @click="$router.go(-1)">
              <i class="uil uil-arrow-circle-left"></i>
              <span>Back</span>
            </li>
            <li class="item" @click="$router.go(1)">
              <i class="uil uil-arrow-circle-right"></i>
              <span>Forward</span>
            </li>
            <li class="item" @click="$router.go(0)">
              <i class="uil uil-redo"></i>
              <span>Refresh</span>
            </li>
            <hr class="my-1">
            <li class="item" @click="copyURL">
              <i class="uil uil-link-alt"></i>
              <span>Get Link</span>
            </li>
            <li class="item" @click="$colorMode.preference = 'light'" v-show="$colorMode.value === 'dark'">
              <i class="uil uil-brightness-half"></i>
              <span>Light Mode</span>
            </li>
            <li class="item" @click="$colorMode.preference = 'dark'" v-show="$colorMode.value === 'light'">
              <i class="uil uil-brightness-half"></i>
              <span>Dark Mode</span>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <!-- Main -->
    <div v-else>
      <!-- Navbar -->
      <Navbar />

      <!-- context menu -->
      <div class="wrapper w-56 rounded-xl text-base font-medium z-60">
        <div class="content">
          <ul class="menu py-1.5">
            <li class="goto item flex justify-between relative">
              <div>
                <i class="uil uil-share"></i>
                <span>Go To</span>
              </div>
              <i class="uil uil-angle-right-b"></i>
              <ul class="goto-menu py-1 rounded-lg">
                <nuxt-link to="/" class="item" :class="{ 'hidden-context': route_name == 'index' }">
                  <i class="uil uil-estate"></i>
                  <span>Home</span>
                </nuxt-link>
                <nuxt-link to="/about" class="item" :class="{ 'hidden-context': route_name == 'about' }">
                  <i class="uil uil-user"></i>
                  <span>About</span>
                </nuxt-link>
                <nuxt-link to="/experiences" class="item" :class="{ 'hidden-context': route_name == 'experiences' }">
                  <i class="uil uil-file-alt"></i>
                  <span>Experiences</span>
                </nuxt-link>
                <nuxt-link to="/skills" class="item" :class="{ 'hidden-context': route_name == 'skills' }">
                  <i class="uil uil-briefcase-alt"></i>
                  <span>Skills</span>
                </nuxt-link>
                <nuxt-link to="/projects" class="item" :class="{ 'hidden-context': route_name == 'projects' }">
                  <i class="uil uil-scenery"></i>
                  <span>Projects</span>
                </nuxt-link>
                <nuxt-link to="/contacts" class="item" :class="{ 'hidden-context': route_name == 'contacts' }">
                  <i class="uil uil-message"></i>
                  <span>Contacts</span>
                </nuxt-link>
              </ul>
            </li>
            <hr class="my-1">
            <li class="item" @click="$router.go(-1)">
              <i class="uil uil-arrow-circle-left"></i>
              <span>Back</span>
            </li>
            <li class="item" @click="$router.go(1)">
              <i class="uil uil-arrow-circle-right"></i>
              <span>Forward</span>
            </li>
            <li class="item" @click="$router.go(0)">
              <i class="uil uil-redo"></i>
              <span>Refresh</span>
            </li>
            <hr class="my-1">
            <li class="item" @click="copyURL">
              <i class="uil uil-link-alt"></i>
              <span>Get Link</span>
            </li>
            <li class="item" @click="$colorMode.preference = 'light'" v-show="$colorMode.value === 'dark'">
              <i class="uil uil-brightness-half"></i>
              <span>Light Mode</span>
            </li>
            <li class="item" @click="$colorMode.preference = 'dark'" v-show="$colorMode.value === 'light'">
              <i class="uil uil-brightness-half"></i>
              <span>Dark Mode</span>
            </li>
          </ul>
        </div>
      </div>

      <!-- Content -->
      <nuxt />

      <!-- Button to top -->
      <button class="to-top hide hidden" id="totop" @click="toTop">
        <i class="uil uil-angle-up text-4xl text-white"></i>
      </button>

      <!-- progress scroll bar -->
      <div class="pos-bar hidden xl:block">
        <div class="bar flex font-bold text-lg">
          <div v-for="(t,index) in textShow" :key="index">
            <p v-if="t == ' '">&nbsp</p>
            <p v-else-if="index < numShow" class="text-highlight">
              {{t}}
            </p>
            <p else class="text-ndefault"> {{t}}</p>
          </div>
        </div>
      </div>

      <!-- Footer -->
      <Foot />
    </div>
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
      header: "the launch date of this website",
      displayDays: 0,
      displayHours: 0,
      displayMinutes: 0,
      displaySeconds: 0,
      isCount: false,
      countDate: 1,
      countMonth: 0,
      countYear: 2022
    }
  },

  components: { Navbar, Foot },
  async created() {
    await this.checkCount();
    if (this.checkCount()) this.showRemaining();
  },

  mounted() {
    const self = this

    function progressBarScroll() {
      let winScroll = document.body.scrollTop || document.documentElement.scrollTop,
        height = document.documentElement.scrollHeight - document.documentElement.clientHeight,
        scrolled = (winScroll / height) * 100;
      // console.log(winScroll)
      return scrolled
    }
    window.onscroll = function () {
      let high = progressBarScroll();
      self.numShow = Math.round((self.textShow.length * high) / 100);
      contextMenu.style.visibility = "hidden";
    };

    const contextMenu = document.querySelector('.wrapper');
    const gotoMenu = contextMenu.querySelector('.goto-menu');

    document.addEventListener("contextmenu", e => {
      e.preventDefault();

      let x = e.pageX;
      let y = e.pageY;
      let winWidth = window.innerWidth;
      let cmHeight = contextMenu.offsetHeight;
      let screenHeight = screen.height;
      let cmWidth = contextMenu.offsetWidth;
      let winScroll = document.body.scrollTop || document.documentElement.scrollTop
      let nowHight = screenHeight + winScroll

      // if x is greater than
      // then show the goto menu to the left else show it to the right
      if (x > (winWidth - cmWidth - gotoMenu.offsetWidth)) {
        gotoMenu.style.left = "-205px";
      } else {
        gotoMenu.style.left = "";
        gotoMenu.style.right = "-205px";
      }

      // if x is greater than window width - contextMenu width then set the x value
      // to window width - contextMenu window else set x to the offsetX. Similarly, to y
      x = x > winWidth - cmWidth ? winWidth - cmWidth : x;
      y = y > nowHight - (cmHeight + 115) ? nowHight - (cmHeight + 115) : y;


      contextMenu.style.left = `${x}px`
      contextMenu.style.top = `${y}px`
      contextMenu.style.visibility = "visible";
    });

    // hide the context menu on document click
    document.addEventListener("click", () => contextMenu.style.visibility = "hidden");

    const myID = document.getElementById("totop");

    var myScrollFunc = function () {
      var y = window.scrollY;
      if (y >= 100) {
        myID.className = "to-top show"
      } else {
        myID.className = "to-top hide"
      }
    };

    window.addEventListener("scroll", myScrollFunc);

    if (document.readyState == "complete") {
      // alert("Your page is loaded");
    } else {
      window.addEventListener("load", function () {
        // alert("Your page is loaded");
      }, false);
    }
  },
  computed: {
    route_name() {
      return this.$route.name
    },
    _seconds: () => 1000,
    _minutes() {
      return this._seconds * 60
    },
    _hours() {
      return this._minutes * 60
    },
    _days() {
      return this._hours * 24
    }
  },
  methods: {
    copyURL() {
      navigator.clipboard.writeText("https://www.izephanthakarn.dev");
    },
    toTop: function () {
      window.scrollTo({
        top: 0,
        behavior: "smooth"
      });
    },
    formatNum: num => (num < 10 ? "0" + num : num),
    showRemaining() {
      const self = this
      const timer = setInterval(() => {
        const now = new Date();
        const end = new Date(this.countYear, this.countMonth, this.countDate)
        const distance = end.getTime() - now.getTime();
        if (distance < 0) {
          clearInterval(timer);
          this.isCount = false
          return
        }

        const days = Math.floor(distance / self._days);
        const hours = Math.floor((distance % self._days) / self._hours);
        const minutes = Math.floor((distance % self._hours) / self._minutes);
        const seconds = Math.floor((distance % self._minutes) / self._seconds);
        self.displayMinutes = self.formatNum(minutes);
        self.displaySeconds = self.formatNum(seconds);
        self.displayHours = self.formatNum(hours);
        self.displayDays = self.formatNum(days);
      }, 1000);

    },
    checkCount() {
      const now = new Date();
      const end = new Date(this.countYear, this.countMonth, this.countDate)
      const distance = end.getTime() - now.getTime();
      if (distance > 0) return this.isCount = true
    }
  },
}
</script>

<style scoped>
.navbar {
  height: 80px;
}

.z-60{
  z-index: 60;
}
.bg-counter {
  z-index: 60;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='390' height='844' preserveAspectRatio='none' viewBox='0 0 390 844'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1324%26quot%3b)' fill='none'%3e%3crect width='390' height='844' x='0' y='0' fill='rgba(229%2c 229%2c 229%2c 1)'%3e%3c/rect%3e%3cpath d='M10 844L854 0L1035.5 0L191.5 844z' fill='url(%23SvgjsLinearGradient1325)'%3e%3c/path%3e%3cpath d='M152.70000000000002 844L996.7 0L1137.7 0L293.70000000000005 844z' fill='url(%23SvgjsLinearGradient1325)'%3e%3c/path%3e%3cpath d='M389 844L-455 0L-558.5 0L285.5 844z' fill='url(%23SvgjsLinearGradient1326)'%3e%3c/path%3e%3cpath d='M242.29999999999998 844L-601.7 0L-661.7 0L182.29999999999998 844z' fill='url(%23SvgjsLinearGradient1326)'%3e%3c/path%3e%3cpath d='M96.30302533101172 844L390 550.3030253310117L390 844z' fill='url(%23SvgjsLinearGradient1325)'%3e%3c/path%3e%3cpath d='M0 844L293.6969746689883 844L 0 550.3030253310117z' fill='url(%23SvgjsLinearGradient1326)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1324'%3e%3crect width='390' height='844' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='0%25' y1='100%25' x2='100%25' y2='0%25' id='SvgjsLinearGradient1325'%3e%3cstop stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3clinearGradient x1='100%25' y1='100%25' x2='0%25' y2='0%25' id='SvgjsLinearGradient1326'%3e%3cstop stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
}

.bg-counter-dark {
  z-index: 60;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='390' height='844' preserveAspectRatio='none' viewBox='0 0 390 844'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1318%26quot%3b)' fill='none'%3e%3crect width='390' height='844' x='0' y='0' fill='rgba(23%2c 23%2c 23%2c 1)'%3e%3c/rect%3e%3cpath d='M10 844L854 0L1035.5 0L191.5 844z' fill='url(%23SvgjsLinearGradient1319)'%3e%3c/path%3e%3cpath d='M152.70000000000002 844L996.7 0L1137.7 0L293.70000000000005 844z' fill='url(%23SvgjsLinearGradient1319)'%3e%3c/path%3e%3cpath d='M389 844L-455 0L-558.5 0L285.5 844z' fill='url(%23SvgjsLinearGradient1320)'%3e%3c/path%3e%3cpath d='M242.29999999999998 844L-601.7 0L-661.7 0L182.29999999999998 844z' fill='url(%23SvgjsLinearGradient1320)'%3e%3c/path%3e%3cpath d='M96.30302533101172 844L390 550.3030253310117L390 844z' fill='url(%23SvgjsLinearGradient1319)'%3e%3c/path%3e%3cpath d='M0 844L293.6969746689883 844L 0 550.3030253310117z' fill='url(%23SvgjsLinearGradient1320)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1318'%3e%3crect width='390' height='844' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='0%25' y1='100%25' x2='100%25' y2='0%25' id='SvgjsLinearGradient1319'%3e%3cstop stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3clinearGradient x1='100%25' y1='100%25' x2='0%25' y2='0%25' id='SvgjsLinearGradient1320'%3e%3cstop stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
}

.time-box {
  min-width: 60px;
}

.clock {
  background: var(--first-color);
  box-shadow: 2px 2px 6px var(--color-shadow-img);
}

.bg-digit {
  background: var(--bg-secondary);
}

.img-content {
  width: 300px;
  margin: 0px auto 0;
}

.blob {
  -webkit-filter: drop-shadow(8px 8px 12px var(--color-shadow-w));
  animation: floaty 2.5s infinite alternate;
}

.icon2 {
  position: absolute;
  animation: icon2 3s infinite alternate;
}

.icon-follow a {
  color: #FFF;
  transition: .3s;
}

.icon-follow a:hover {
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

.pos-bar {
  position: fixed;
  top: 47%;
  left: -19.5%;
}

.bar {
  transform: rotate(90deg);
}

.wrapper {
  background: var(--color);
  color: var(--color-neg);
  box-shadow: 2px 2px 6px var(--color-shadow-w);
  visibility: hidden;
  position: absolute;
}

.item {
  border-radius: 6px;
  background: var(--bg-neg);
  padding: 2px 10px;
  margin: 2px 8px;
  display: flex;
  align-items: center;
  cursor: pointer;
}

.item:hover {
  background: var(--bg);
  color: var(--color);
}

.item span {
  margin-left: 10px;
}

.item i::before {
  transform: translateY(1.5px);
}

hr {
  border-color: transparent;
}

.hidden-context {
  display: none;
}

.goto-menu {
  position: absolute;
  background: var(--color);
  width: 200px;
  right: -205px;
  top: -8px;
  opacity: 0;
  color: var(--color-neg);
  box-shadow: 2px 2px 6px var(--color-shadow-w);
}

.goto:hover .goto-menu {
  opacity: 1;
}

.goto-menu .item {
  margin: 4px 8px;
}

.to-top {
  position: fixed;
  bottom: 30px;
  transform: translateY(10px);
  right: 10px;
  width: 50px;
  height: 50px;
  border-radius: 25%;
  background: var(--first-color);
  z-index: 50;
  transition: all 1s;
}

.to-top i::before {
  transform: translate(-1px, -11px);
}

.hide {
  opacity: 0;
  bottom: -100%;
}

.show {
  opacity: 1;
  bottom: 20px;
}

.counter {
  position: fixed;
  top: 0;
  z-index: 60;
  width: 100%;
  height: 100%;
}

@keyframes icon2 {
  0% {
    transform: translateY(0);
  }

  100% {
    transform: translateY(10px);
  }
}

@keyframes iright {
  100% {
    background-position: bottom left, top left
  }
}

@media (min-width:390px) {
  .img-content {
    width: 350px;
    margin-top: 50px;
  }
}

@media (min-width:640px) {
  .to-top {
    right: 20px;
    transform: translateY(5px);
  }

  .img-content {
    width: 500px;
  }

  .bg-counter {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='820' height='1180' preserveAspectRatio='none' viewBox='0 0 820 1180'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1285%26quot%3b)' fill='none'%3e%3crect width='820' height='1180' x='0' y='0' fill='rgba(229%2c 229%2c 229%2c 1)'%3e%3c/rect%3e%3cpath d='M103 1180L1283 0L1440.5 0L260.5 1180z' fill='url(%23SvgjsLinearGradient1286)'%3e%3c/path%3e%3cpath d='M767 1180L-413 0L-866 0L314 1180z' fill='url(%23SvgjsLinearGradient1287)'%3e%3c/path%3e%3cpath d='M334.7371279828742 1180L820 694.7371279828742L820 1180z' fill='url(%23SvgjsLinearGradient1286)'%3e%3c/path%3e%3cpath d='M0 1180L485.2628720171258 1180L 0 694.7371279828742z' fill='url(%23SvgjsLinearGradient1287)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1285'%3e%3crect width='820' height='1180' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='0%25' y1='100%25' x2='100%25' y2='0%25' id='SvgjsLinearGradient1286'%3e%3cstop stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3clinearGradient x1='100%25' y1='100%25' x2='0%25' y2='0%25' id='SvgjsLinearGradient1287'%3e%3cstop stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
  }

  .bg-counter-dark {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='820' height='1180' preserveAspectRatio='none' viewBox='0 0 820 1180'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1291%26quot%3b)' fill='none'%3e%3crect width='820' height='1180' x='0' y='0' fill='rgba(23%2c 23%2c 23%2c 1)'%3e%3c/rect%3e%3cpath d='M103 1180L1283 0L1440.5 0L260.5 1180z' fill='url(%23SvgjsLinearGradient1292)'%3e%3c/path%3e%3cpath d='M767 1180L-413 0L-866 0L314 1180z' fill='url(%23SvgjsLinearGradient1293)'%3e%3c/path%3e%3cpath d='M334.7371279828742 1180L820 694.7371279828742L820 1180z' fill='url(%23SvgjsLinearGradient1292)'%3e%3c/path%3e%3cpath d='M0 1180L485.2628720171258 1180L 0 694.7371279828742z' fill='url(%23SvgjsLinearGradient1293)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1291'%3e%3crect width='820' height='1180' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='0%25' y1='100%25' x2='100%25' y2='0%25' id='SvgjsLinearGradient1292'%3e%3cstop stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3clinearGradient x1='100%25' y1='100%25' x2='0%25' y2='0%25' id='SvgjsLinearGradient1293'%3e%3cstop stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
  }
}

@media (min-width:1024px) {
  .img-content {
    width: 35%;
    margin-top: 0;
  }

  .bg-counter {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='1440' height='900' preserveAspectRatio='none' viewBox='0 0 1440 900'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1090%26quot%3b)' fill='none'%3e%3crect width='1440' height='900' x='0' y='0' fill='rgba(229%2c 229%2c 229%2c 1)'%3e%3c/rect%3e%3cpath d='M49 900L949 0L1345 0L445 900z' fill='url(%23SvgjsLinearGradient1091)'%3e%3c/path%3e%3cpath d='M484.20000000000005 900L1384.2 0L1633.2 0L733.2 900z' fill='url(%23SvgjsLinearGradient1091)'%3e%3c/path%3e%3cpath d='M1401 900L501 0L198 0L1098 900z' fill='url(%23SvgjsLinearGradient1092)'%3e%3c/path%3e%3cpath d='M962.8 900L62.799999999999955 0L-366.20000000000005 0L533.8 900z' fill='url(%23SvgjsLinearGradient1092)'%3e%3c/path%3e%3cpath d='M820.3913755523761 900L1440 280.3913755523761L1440 900z' fill='url(%23SvgjsLinearGradient1091)'%3e%3c/path%3e%3cpath d='M0 900L619.6086244476239 900L 0 280.3913755523761z' fill='url(%23SvgjsLinearGradient1092)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1090'%3e%3crect width='1440' height='900' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='0%25' y1='100%25' x2='100%25' y2='0%25' id='SvgjsLinearGradient1091'%3e%3cstop stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3clinearGradient x1='100%25' y1='100%25' x2='0%25' y2='0%25' id='SvgjsLinearGradient1092'%3e%3cstop stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
  }

  .bg-counter-dark {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='1440' height='900' preserveAspectRatio='none' viewBox='0 0 1440 900'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1096%26quot%3b)' fill='none'%3e%3crect width='1440' height='900' x='0' y='0' fill='rgba(23%2c 23%2c 23%2c 1)'%3e%3c/rect%3e%3cpath d='M49 900L949 0L1345 0L445 900z' fill='url(%23SvgjsLinearGradient1097)'%3e%3c/path%3e%3cpath d='M484.20000000000005 900L1384.2 0L1633.2 0L733.2 900z' fill='url(%23SvgjsLinearGradient1097)'%3e%3c/path%3e%3cpath d='M1401 900L501 0L198 0L1098 900z' fill='url(%23SvgjsLinearGradient1098)'%3e%3c/path%3e%3cpath d='M962.8 900L62.799999999999955 0L-366.20000000000005 0L533.8 900z' fill='url(%23SvgjsLinearGradient1098)'%3e%3c/path%3e%3cpath d='M820.3913755523761 900L1440 280.3913755523761L1440 900z' fill='url(%23SvgjsLinearGradient1097)'%3e%3c/path%3e%3cpath d='M0 900L619.6086244476239 900L 0 280.3913755523761z' fill='url(%23SvgjsLinearGradient1098)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1096'%3e%3crect width='1440' height='900' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='0%25' y1='100%25' x2='100%25' y2='0%25' id='SvgjsLinearGradient1097'%3e%3cstop stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3clinearGradient x1='100%25' y1='100%25' x2='0%25' y2='0%25' id='SvgjsLinearGradient1098'%3e%3cstop stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
  }
}

@media (min-width:1536px) {
  .img-content {
    width: 45%;
  }

  .bg-counter {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='1920' height='1080' preserveAspectRatio='none' viewBox='0 0 1920 1080'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1156%26quot%3b)' fill='none'%3e%3crect width='1920' height='1080' x='0' y='0' fill='rgba(229%2c 229%2c 229%2c 1)'%3e%3c/rect%3e%3cpath d='M44 1080L1124 0L2042 0L962 1080z' fill='url(%23SvgjsLinearGradient1157)'%3e%3c/path%3e%3cpath d='M751.6 1080L1831.6 0L2343.1 0L1263.1 1080z' fill='url(%23SvgjsLinearGradient1157)'%3e%3c/path%3e%3cpath d='M1808 1080L728 0L371 0L1451 1080z' fill='url(%23SvgjsLinearGradient1158)'%3e%3c/path%3e%3cpath d='M1196.4 1080L116.40000000000009 0L-65.09999999999991 0L1014.9000000000001 1080z' fill='url(%23SvgjsLinearGradient1158)'%3e%3c/path%3e%3cpath d='M1104.83315251273 1080L1920 264.83315251272995L1920 1080z' fill='url(%23SvgjsLinearGradient1157)'%3e%3c/path%3e%3cpath d='M0 1080L815.16684748727 1080L 0 264.83315251272995z' fill='url(%23SvgjsLinearGradient1158)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1156'%3e%3crect width='1920' height='1080' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='0%25' y1='100%25' x2='100%25' y2='0%25' id='SvgjsLinearGradient1157'%3e%3cstop stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3clinearGradient x1='100%25' y1='100%25' x2='0%25' y2='0%25' id='SvgjsLinearGradient1158'%3e%3cstop stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(255%2c 255%2c 255%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
  }

  .bg-counter-dark {
    background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' version='1.1' xmlns:xlink='http://www.w3.org/1999/xlink' xmlns:svgjs='http://svgjs.com/svgjs' width='1920' height='1080' preserveAspectRatio='none' viewBox='0 0 1920 1080'%3e%3cg mask='url(%26quot%3b%23SvgjsMask1150%26quot%3b)' fill='none'%3e%3crect width='1920' height='1080' x='0' y='0' fill='rgba(23%2c 23%2c 23%2c 1)'%3e%3c/rect%3e%3cpath d='M44 1080L1124 0L2042 0L962 1080z' fill='url(%23SvgjsLinearGradient1151)'%3e%3c/path%3e%3cpath d='M751.6 1080L1831.6 0L2343.1 0L1263.1 1080z' fill='url(%23SvgjsLinearGradient1151)'%3e%3c/path%3e%3cpath d='M1808 1080L728 0L371 0L1451 1080z' fill='url(%23SvgjsLinearGradient1152)'%3e%3c/path%3e%3cpath d='M1196.4 1080L116.40000000000009 0L-65.09999999999991 0L1014.9000000000001 1080z' fill='url(%23SvgjsLinearGradient1152)'%3e%3c/path%3e%3cpath d='M1104.83315251273 1080L1920 264.83315251272995L1920 1080z' fill='url(%23SvgjsLinearGradient1151)'%3e%3c/path%3e%3cpath d='M0 1080L815.16684748727 1080L 0 264.83315251272995z' fill='url(%23SvgjsLinearGradient1152)'%3e%3c/path%3e%3c/g%3e%3cdefs%3e%3cmask id='SvgjsMask1150'%3e%3crect width='1920' height='1080' fill='white'%3e%3c/rect%3e%3c/mask%3e%3clinearGradient x1='0%25' y1='100%25' x2='100%25' y2='0%25' id='SvgjsLinearGradient1151'%3e%3cstop stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3clinearGradient x1='100%25' y1='100%25' x2='0%25' y2='0%25' id='SvgjsLinearGradient1152'%3e%3cstop stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0'%3e%3c/stop%3e%3cstop stop-opacity='0' stop-color='rgba(39%2c 39%2c 39%2c 1)' offset='0.66'%3e%3c/stop%3e%3c/linearGradient%3e%3c/defs%3e%3c/svg%3e");
  }

  .pos-bar {
    display: none;
  }
}

@media (min-width:1900px) {
  .pos-bar {
    left: -11%;
    display: block;
  }
}
</style>