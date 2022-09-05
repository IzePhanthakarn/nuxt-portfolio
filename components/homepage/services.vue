<template>
  <div class="w-full flex justify-center items-center overflow-x-hidden">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">Services</h1>
      </div>
      <div
        class="service-content mt-3 sm:mt-6 lg:px-20 w-full gap-4 2xl:flex 2xl:justify-center 2xl:items-center grid grid-cols-2 md:grid-cols-3 place-items-center text-default">
        <div class="w-full box aspect-square flex justify-center items-center">
          <div class="content flex flex-col justify-center items-center">
            <i class="uil-clapper-board text-5xl sm:text-8xl"></i>
            <p class="text-lg font-semibold">Front-end</p>
            <p class="text-base -mt-2">Nuxt.js</p>
          </div>
        </div>
        <div class="w-full box aspect-square flex justify-center items-center">
          <div class="content flex flex-col justify-center items-center">
            <i class="uil-processor text-5xl sm:text-8xl"></i>
            <p class="text-lg font-semibold">Back-end</p>
            <p class="text-base -mt-2">Golang</p>
          </div>
        </div>
        <div class="box rectang flex justify-center items-center col-span-2 md:col-span-1">
          <div class="content flex md:flex-col justify-center items-center">
            <i class="uil-cloud-share text-7xl sm:text-8xl"></i>
            <div class="flex flex-col items-center justify-center">
              <p class="text-lg font-semibold">Cloud server</p>
              <p class="text-base">Google Cloud Platform</p>
            </div>
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

.box {
  width: 100%;
  /* height: 100px; */
  background-color: var(--bg-secondary);
  border: 3px solid var(--timeline-line);
  border-radius: 15px;
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
}

i::before {
  transform: translateY(5px);
}

.aspect-square {
  aspect-ratio: 1 / 1;
}

.rectang {
  aspect-ratio: 2/1;
}

@media(min-width:768px) {
  .box {
    max-width: 300px;
  }

  .rectang {
    aspect-ratio: 1/1;
  }
}
</style>