<template>
  <div>
    <Home/>
    <DarkTest/>
    <About/>
    <Experience/>
    <Skill/>
    <Project/>
    <Service/>
    <Testimonial/>
    <Contact/>
  </div>
</template>

<script>
import Home from '../components/homepage/home.vue';
import About from '../components/homepage/about.vue';
import Experience from '../components/homepage/experience.vue';
import Skill from '../components/homepage/skill.vue';
import Project from '../components/homepage/project.vue';
import Service from '../components/homepage/service.vue';
import Testimonial from '../components/homepage/testimonial.vue';
import Contact from '../components/homepage/contact.vue';
import DarkTest from '../components/homepage/dark-test.vue';
export default {
    name: "IndexPage",
    components: { Home, About, Experience, Skill, Project, Service, Testimonial, Contact, DarkTest }
}
</script>
