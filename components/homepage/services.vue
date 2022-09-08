<template>
  <div class="w-full py-3 flex flex-col justify-center items-center overflow-x-hidden">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">Services</h1>
      </div>
      <div
        class="service-content mt-3 sm:mt-6 lg:px-20 w-full gap-4 2xl:flex 2xl:justify-center 2xl:items-center grid grid-cols-2 md:grid-cols-3 place-items-center text-default">
        <div class="service1 w-full box aspect-square flex justify-center items-center">
          <div class="content duration-300 flex flex-col justify-center items-center">
            <i class="uil-clapper-board text-5xl sm:text-8xl"></i>
            <p class="text-lg font-semibold">Front-end</p>
            <p class="text-base -mt-2">Nuxt.js</p>
          </div>
        </div>
        <div class="service2 w-full box aspect-square flex justify-center items-center">
          <div class="content duration-300 flex flex-col justify-center items-center">
            <i class="uil-processor text-5xl sm:text-8xl"></i>
            <p class="text-lg font-semibold">Back-end</p>
            <p class="text-base -mt-2">Golang</p>
          </div>
        </div>
        <div class="service3 box rectang flex justify-center items-center col-span-2 md:col-span-1">
          <div class="content duration-300 flex md:flex-col justify-center items-center">
            <i class="uil-cloud-share text-7xl sm:text-8xl"></i>
            <div class="flex flex-col items-center justify-center">
              <p class="text-lg font-semibold">Cloud server</p>
              <p class="text-base">Google Cloud Platform</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="contact-con container mt-8 flex flex-col sm:flex-row sm:rounded-3xl">
      <div class="w-full sm:w-8/12 text-content px-6 pt-6 font-medium text-default">
        <h1 class="text-lg">You want to have a website ?</h1>
        <h2 class="text-tiny mb-3">If this is your first project contact me and get 30% discount on your new project.
        </h2>
        <nuxt-link to="/contacts" class="button text-white rounded-xl py-1 px-3 text-tiny">Contact me</nuxt-link>
      </div>
      <div class="img-content w-full sm:w-4/12">
        <img src="~/static/img/me/myprofile3.png" alt="" class="w-2/3 sm:w-full sm:rounded-3xl mr-0 ml-auto -mt-12 sm:mt-0">
      </div>
    </div>
  </div>
</template>

<script>
export default {
  mounted() {
    const sr = ScrollReveal({
      distance: '100px',
      duration: 1500,
    })

    sr.reveal(`.service1`, { origin: 'left', delay: 300 })
    sr.reveal(`.service2`, { origin: 'left', delay: 400 })
    sr.reveal(`.service3`, { origin: 'left', delay: 500 })
    sr.reveal(`.contact-con`, { origin: 'right', delay: 600 })
  }
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

.box:hover .content {
  transform: scale(1.15);
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

.contact-con {
  background: var(--bg-secondary);
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
}

.button {
  background: var(--first-color);
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
}

@media(min-width:768px) {
  .box {
    max-width: 300px;
  }

  .rectang {
    aspect-ratio: 1/1;
  }
}

@media (min-width: 1024px) {
  .contact-con{
    max-width: 824px;
  }
}
@media(min-width:1280px){
.contact-con{
  max-width: 1030px;
}
}

@media(min-width:1536px){
  .contact-con{
    max-width: 940px;
  }
}
</style>