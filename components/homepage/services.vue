<template>
  <div class="w-full flex justify-center items-center overflow-x-hidden">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">Services</h1>
      </div>
      <div class="service-content w-full gap-8 grid grid-cols-2 place-items-center">
        <div class="box flex flex-col justify-center items-center">
          <i class="uil-clapper-board text-6xl"></i>
          <p>Front-end</p>
          <p>Nuxt.js</p>
        </div>
        <div class="box flex flex-col justify-center items-center">
          <i class="uil-processor text-6xl"></i>
          <p>Back-end</p>
          <p>Golang</p>
        </div>
        <div class="box flex justify-center items-center col-span-2">
          <i class="uil-cloud-share text-7xl"></i>
          <div class="w-full flex flex-col items-center justify-center">
            <p>Cloud server</p>
            <p>Google Cloud Platform</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.head::after {
  content: "you will get";
}
.box{
  width: 100%;
  /* height: 100px; */
  background-color: var(--bg);
  border: 3px solid var(--color-primary);
  border-radius: 15px;
}
</style>