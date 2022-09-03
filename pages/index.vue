<template>
  <div>
    <Home/>
    <!-- <DarkTest/> -->
    <About/>
    <Experiences/>
    <Skills/>
    <!-- <Projects/> -->
    <Services/>
    <!-- <Testimonials/> -->
    <!-- <Contacts/> -->
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
import DarkTest from '../components/homepage/dark-test.vue';
export default {
    name: "IndexPage",
    components: { Home, About, Experiences, Skills, Projects, Services, Testimonials, Contacts, DarkTest }
}
</script>
