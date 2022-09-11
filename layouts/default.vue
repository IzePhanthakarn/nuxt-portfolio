<template>
  <div class="relative overflow-hidden">
    <Navbar />

    <!-- context menu -->
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

    <nuxt />

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
  },
  methods: {
    copyURL() {
      navigator.clipboard.writeText("https://www.izephanthakarn.com");
    },
    toTop: function () {
      window.scrollTo({
        top: 0,
        behavior: "smooth"
      });
    },
  },
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

.to-top i::before{
  transform: translate(-1px,-11px);
}

.hide {
  opacity: 0;
  bottom: -100%;
}

.show {
  opacity: 1;
  bottom: 20px;
}
@media (min-width:640px) {
  .to-top{
    right: 20px;
    transform: translateY(5px);
  }
}
@media (min-width:1536px) {
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