<template>
  <div>
    <Home />
    <div class="container h-0.5 hightlight mx-auto hidden lg:block"></div>
    <About />
    <div class="container h-0.5 hightlight mx-auto hidden lg:block"></div>
    <Experiences />
    <div class="container h-0.5 hightlight mx-auto hidden lg:block"></div>
    <Skills />
    <div class="container h-0.5 hightlight mx-auto hidden lg:block"></div>
    <Projects />
    <div class="container h-0.5 hightlight mx-auto hidden lg:block"></div>
    <Services />
    <div class="container h-0.5 hightlight mx-auto hidden lg:block"></div>
    <Testimonials />
    <div class="container h-0.5 hightlight mx-auto hidden lg:block"></div>
    <Contacts />
  </div>
</template>

<script>
import Home from '../components/homepage/home.vue';
import About from '../components/homepage/about.vue';
import Experiences from '../components/homepage/experiences.vue';
import Skills from '../components/homepage/skills.vue';
import Projects from '../components/homepage/projects.vue';
import Services from '../components/homepage/services.vue';
import Testimonials from '../components/homepage/testimonials.vue';
import Contacts from '../components/homepage/contacts.vue';
export default {
  name: "IndexPage",
  components: { Home, About, Experiences, Skills, Projects, Services, Testimonials, Contacts}
}
</script>

<style scoped>
  .hightlight{
    background: var(--first-color);
  }
</style>