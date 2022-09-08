<template>
  <div class="w-full py-3 flex justify-center items-center overflow-hidden">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">Testimonial</h1>
      </div>
      <hooper :settings="hooperSettings" class="hooperr flex justify-center items-center my-2">
        <slide v-for="(testimonial, index) in testimonials" :key="index" class="h-full">
          <div class="slides py-4 h-full">
            <div class="bg-content w-11/12 h-full mx-auto p-4 rounded-xl text-default flex flex-col items-start">
              <div class="profile">
                <div class="flex">
                  <img class="h-16 mr-4 rounded-full" :src="require(`~/static/img/testimonial${testimonial.img}`)" />
                  <div>
                    <h1 class="text-base font-semibold">{{ testimonial.name }}</h1>
                    <h2 class="text-tiny -mt-1 font-medium">{{ testimonial.relation }}</h2>
                  </div>
                </div>
              </div>
              <div class="text-content mt-2 truncated-lines">{{ testimonial.detail }}</div>
            </div>
          </div>
        </slide>
        <hooper-pagination slot="hooper-addons" ></hooper-pagination>
      </hooper>
    </div>
  </div>
</template>

<script>
import '@/components/homepage/css/projects.css';
import {
  Hooper,
  Slide,
  Pagination as HooperPagination
} from 'hooper';
export default {
  components: {
    Hooper,
    Slide,
    HooperPagination
  },
  data() {
    return {
      hooperSettings: {
        itemsToShow: 1,
        itemsToSlide: 1,
        // centerMode: true,
        autoPlay: true,
        playSpeed: 5000,
        // infiniteScroll:true,
        wheelControl: false,
        trimWhiteSpace: true,
        breakpoints: {
          640: {
            centerMode: false,
            itemsToShow: 2,
          },
          1024: {
            itemsToShow: 3,
          }
        }
      },
      testimonials: [
        { id: 1, name: "Sompong Kh.", relation: "Father", point: 9.5, img: "/testimonial1.png", detail: "He has the determination, the effort, and the great determination in what needs to be accomplished." },
        { id: 2, name: "Pichaya Kh.", relation: "Best friend", point: 10, img: "/testimonial2.png", detail: "He is my best friend, he is always improving his programming skills. And of course, if there is any job that he is responsible for, he will do it well in the way you want for sure." },
      ]
    }
  },
}
</script>

<style scoped>
.head::after {
  content: "what people say";
}

.bg-content {
  background: var(--bg-secondary);
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
  border: solid 2px var(--timeline-line);
}

img {
  box-shadow: 2px 2px 6px var(--color-shadow-btn);
}

.truncated-lines {
  width: 100%;
  overflow: hidden;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 3;
}

@media(min-width:640px) {
  .bg-content {
    height: 204px;
  }

  .truncated-lines {
    -webkit-line-clamp: 4;
  }
  .hooper-pagination{
    display: none;
  }
}

@media(min-width:1024px) {
  .bg-content {
    height: 230px;
  }

  .truncated-lines {
    -webkit-line-clamp: 5;
  }
}
</style>