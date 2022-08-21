<template>
  <nav class="navbar w-full fixed z-40 flex items-center justify-center" id="navbar">
    <div class="container flex items-center justify-between px-5">

      <!-- Logo -->
      <nuxt-link to="/" class="logo text-xl my-auto font-bold">Phanthakarn</nuxt-link>

      <!-- menu list -->
      <div class="nav__menu text-default text-lg" id="nav-menu">

        <!-- x-mark icon -->
        <i class="uil uil-x nav__close nav__icon absolute top-5 right-5 block lg:hidden" id="nav-close"></i>
        <ul class="grid grid-cols-3 gap-6 sm:inline-flex sm:justify-between sm:space-x-6">

          <!-- nuxt-link to home -->
          <li class="nav__item">
            <nuxt-link to="/" class="nav__link flex flex-col items-center">
              <i class="uil uil-estate nav__icon block lg:hidden"></i> <span
                class="text-tiny lg:text-base font-bold">Home</span>
            </nuxt-link>
          </li>

          <!-- nuxt-link to about -->
          <li class="nav__item">
            <nuxt-link to="/about" class="nav__link flex flex-col items-center">
              <i class="uil uil-user nav__icon block lg:hidden"></i><span
                class="text-tiny lg:text-base font-bold">About</span>
            </nuxt-link>
          </li>

          <!-- nuxt-link to experience -->
          <li class="nav__item">
            <nuxt-link to="/experience" class="nav__link flex flex-col items-center">
              <i class="uil uil-file-alt nav__icon block lg:hidden"></i><span
                class="text-tiny lg:text-base font-bold">Experience</span>
            </nuxt-link>
          </li>

          <!-- nuxt-link to skill -->
          <li class="nav__item">
            <nuxt-link to="/skills" class="nav__link flex flex-col items-center">
              <i class="uil uil-briefcase-alt nav__icon block lg:hidden"></i><span
                class="text-tiny lg:text-base font-bold">Skills</span>
            </nuxt-link>
          </li>

          <!-- nuxt-link to project -->
          <li class="nav__item">
            <nuxt-link to="/projects" class="nav__link flex flex-col items-center">
              <i class="uil uil-scenery nav__icon block lg:hidden"></i><span
                class="text-tiny lg:text-base font-bold">Projects</span>
            </nuxt-link>
          </li>

          <!-- nuxt-link to contact -->
          <li class="nav__item">
            <nuxt-link to="/contacts" class="nav__link flex flex-col items-center">
              <i class="uil uil-message nav__icon block lg:hidden"></i><span
                class="text-tiny lg:text-base font-bold">Contact</span>
            </nuxt-link>
          </li>
        </ul>
      </div>

      <div class="nav__btns inline-flex text-lg lg:text-xl items-center">

        <!-- change theme button -->
        <div @click="$colorMode.preference = 'light'" v-show="$colorMode.value === 'dark'"
          class="icon pt-2 cursor-pointer">
          <i class="uil-sun"></i>
        </div>
        <div @click="$colorMode.preference = 'dark'" v-show="$colorMode.value === 'light'"
          class="icon pt-2 cursor-pointer">
          <i class="uil-bolt"></i>
        </div>

        <!-- nuxt-link to asset -->
        <nuxt-link to="/assets" class="ml-5 pt-1.5 cursor-pointer hidden lg:block">
          <i class="uil-diary text-default hover-icon"></i>
        </nuxt-link>

        <!-- apps icon -->
        <div class="nav__toggle ml-5 pt-1.5 block lg:hidden" id="nav-toggle">
          <i class="uil-apps text-default"></i>
        </div>
      </div>
    </div>
  </nav>
</template>

<script>
export default {
  mounted() {
    const navMenu = document.getElementById('nav-menu');
    const navToggle = document.getElementById('nav-toggle');
    const navClose = document.getElementById('nav-close');
    const nav = document.getElementById('navbar')
    const navLink = document.querySelectorAll('.nav__link')
    /* Validate if constant exists */
    if (navToggle) {
      navToggle.addEventListener('click', () => {
        navMenu.classList.add('show-menu')
      })
    }

    /*===== MENU HIDDEN =====*/
    /* Validate if constant exists */
    if (navClose) {
      navClose.addEventListener('click', () => {
        navMenu.classList.remove('show-menu')
      })
    }

    function linkAction() {
      const navMenu = document.getElementById('nav-menu')
      // When we click on each nav__link, we remove the show-menu class
      navMenu.classList.remove('show-menu')
    }
    navLink.forEach(n => n.addEventListener('click', linkAction))

    function scrollHeader() {
      // When the scroll is greater than 200 viewport height, add the scroll-header class to the header tag
      if (this.scrollY >= 80) nav.classList.add('scroll-navbar'); else nav.classList.remove('scroll-navbar')
    }
    window.addEventListener('scroll', scrollHeader)
  },
}
</script>

<style scoped>
.navbar {
  height: 80px;
  background-color: transparent;
  transition: all 0.3s;
}

.navbar.scroll-navbar {
  height: 60px;
  background-color: var(--bg-nav);
}

.dark-mode .logo {
  background: var(--color-logo);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  transition: all .2s;
}

.icon {
  background: var(--color-primary);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  transition: all .2s;
}

a.nav__link::after {
  content: "";
  display: block;
  bottom: 10px;
  width: 0;
  height: 3px;
  background: var(--color);
  transition: width 0.3s;
}

a.nav__link:hover::after {
  width: 100%;
  background: var(--color);
}

.nav__menu {
  position: fixed;
  top: -100%;
  /* top: 0; */
  left: 0;
  width: 100%;
  background-color: var(--bg-nav);
  padding: 50px 30px 20px;
  box-shadow: 0 .5px 5px var(--color-shadow);
  border-radius: 0 0 1.5rem 1.5rem;
  transition: all .3s;
}

.show-menu {
  top: 0;
  z-index: 999;
}

.scroll-navbar {
  background-color: var(--bg-color);
  box-shadow: 0 .5px 5px var(--color-shadow);
}

.hover-icon {
  background: var(--color);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.hover-icon:hover {
  background: var(--color-primary);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  transition: all .2s;
}

@media (min-width: 1024px) {
  .nav__menu {
    position: static;
    width: auto;
    background-color: transparent;
    padding: 0;
    box-shadow: none;
    border-radius: none;
    transition: all .2s;
  }
}
</style>