<template>
  <div class="w-full flex justify-center items-center overflow-hidden">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">My Projects</h1>
      </div>
      <hooper :settings="hooperSettings" class="hooperr flex justify-center items-center my-2">
        <slide v-for="(project,index) in projects" :key="index">
          <div class="slides py-4 h-full">
            <div class="bg-content w-5/6 h-full mx-auto p-4 rounded-xl text-default flex flex-col items-start">
              <img class="rounded-2xl" :src="require(`~/static/img/projects${project.img}`)" />
              <h1 class="text-highlight font-semibold mt-4">{{project.type}}</h1>
              <h2 class="text-base font-semibold">{{project.name}}</h2>
              <h3 class="truncated-lines mt-1">{{project.detail}}</h3>
              <button @click="$router.push(`/projects/${project.id}`)" class="viewmore text-white rounded-lg mt-2 px-3 py-1 mr-0 ml-auto">
                    View more
                  </button>
            </div>
          </div>
        </slide>
        <hooper-navigation slot="hooper-addons"></hooper-navigation>
      </hooper>
    </div>
  </div>
</template>

<script>
import '@/components/homepage/css/projects.css';
import {
  Hooper,
  Slide,
  Navigation as HooperNavigation
} from 'hooper';
export default {
  components: {
    Hooper,
    Slide,
    HooperNavigation
  },
  data() {
    return {
      hooperSettings: {
        itemsToShow: 1,
        itemsToSlide: 1,
        // centerMode: true,
        // autoPlay: true,
        playSpeed: 5000,
        // infiniteScroll:true,
        wheelControl: false,
        trimWhiteSpace:true,
        breakpoints: {
          640: {
            centerMode: false,
            itemsToShow: 2
          },
          1024: {
            itemsToShow: 3,
            pagination: 'fraction'
          }
        }
      },
      projects:[
        {id:1,type:"Website",name:"Portfolio Website",img:"/mainport.png",detail:"This website is the website you are watching now. It started making in August 2022 and update until now. It made by Nuxt.js framework."}
      ]
    };
  },
  mounted() {
    const sr = ScrollReveal({
      distance: '100px',
      duration: 1500,
    })

    sr.reveal(`.hooperr`, { origin: 'top', delay: 300 })
    sr.reveal(`.slides`, { origin: 'left', delay: 500 })

  },
}
</script>

<style scoped>
.head::after {
  content: "what I do";
  bottom: 2px;
}

.head::before {
  bottom: 12px;
}

.bg-content {
  background: var(--bg-secondary);
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
}
img{
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
}
.truncated-lines{
  width: 100%;
  overflow: hidden;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 4;
}
/* .hooper-slide {
  height: 100%;
} */
button{
  background: var(--first-color);
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
}
</style>