<template>
  <div>
    <Navbar/>
    <nuxt/>
    <Foot/>
  </div>
</template>

<script>
import Navbar from '../components/layout/navbar.vue';
import Foot from '../components/layout/foot.vue';
export default {
    components: { Navbar, Foot }
}
</script>

<style>

</style>