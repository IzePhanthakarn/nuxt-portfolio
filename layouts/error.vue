<template>
  <div>
    <Navbar/>
    <h1 class="pt-60">{{error.statusCode}}</h1>
    <h2>{{error.message}}</h2>
  </div>
</template>

<script>
import Navbar from '../components/layout/navbar.vue';
export default {
    layout: "default",
    props: {
        error: {
            type: [Object, Error],
            default: () => { },
        },
    },
    components: { Navbar }
}
</script>

<style>

</style>