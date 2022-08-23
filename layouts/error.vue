<template>
  <div class="h-content pt-20 w-full flex flex-col items-center justify-center">
    <div class="container flex flex-col lg:flex-row items-center justify-evenly">
      <div class="data">
      <div class="flex flex-col justify-center items-center lg:items-start text-base sm:text-lg 2xl:text-2xl text-default">
        <h1 class="font-medium">Error {{ error.statusCode }}</h1>
        <h2 class="text-3xl -my-1 lg:-my-4 sm:text-4xl lg:text-4xl 2xl:text-7xl font-semibold">Hey Friend</h2>
        <h2 class="text-center">{{ error.message }}.</h2>
        <nuxt-link to="/" class="mt-4 py-2.5 px-6 rounded-full text-neg text-tiny text-white font-medium button">Go Home
        </nuxt-link>
      </div>
      </div>
      <div class="img mt-12">
        <img src="~/static/ghost-img.png" alt="" class="mx-auto">
        <div class="shadow"></div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    error: {
      type: [Object, Error],
      default: () => { },
    },
  },
  mounted() {
    const sr = ScrollReveal({
      distance: '50px',
      duration: 2000,
    })

    sr.reveal(`.data`, { origin: 'top', delay: 500 })
    sr.reveal(`.img`, { origin: 'bottom', delay: 600 })
  },
}
</script>

<style scoped>
.h-content {
  height: calc(100vh - 112.5px);
}

.button {
  background: var(--color-primary);
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
}

img {
  width: 230px;
  height: auto;
  animation: floaty 1.8s infinite alternate;
}

.shadow {
  width: 130px;
  height: 24px;
  background-color: var(--color-shadow-img);
  margin: 0 auto;
  border-radius: 50%;
  filter: blur(7px);
  animation: shadow 1.8s infinite alternate;
}


@keyframes shadow {
  0% {
    transform: scale(1, 1);
  }

  100% {
    transform: scale(.85, .85);
  }
}

@media (min-width: 768px) {
  img {
    width: 400px;
  }

  .shadow {
    width: 250px;
    height: 40px;
  }
}

@media (min-width: 1536px) {
  img {
    width: 600px;
  }

  .shadow {
    width: 400px;
    height: 60px;
  }
}
</style>