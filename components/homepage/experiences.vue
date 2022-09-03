<template>
  <div class="w-full py-3 flex justify-center items-center overflow-hidden">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">My Experiences</h1>
      </div>
      <div class="text-default w-full -py-4 rounded-3xl text-lg font-semibold tracking-wider flex items-center space-x-2 sm:space-x-4">
        <i class="uil uil-graduation-cap text-highlight text-4xl font-bold"></i>
        <h1>Education</h1>
      </div>
      <div class="w-full timeline pl-10 sm:pl-0 flex flex-col relative text-default"
        v-for="(education, index) in educations" :key="index">
        <div class="timeline-bg mb-4 pb-0.5 px-0.5 flex flex-col sm:flex-row sm:space-x-12">
          <div class="timeline-date py-2 sm:py-0">
            <span class="font-semibold xl:text-base text-white pl-2 sm:pl-2 sm:pr-3 whitespace-nowrap">{{ education.year }}</span>
          </div>
          <div class="timeline-info w-full">
            <h1 class="text-base xl:text-lg xl:text-xl font-medium">{{ education.major }}</h1>
            <h2 class="text-tiny xl:text-base 2xl:text-lg xl:font-medium -mt-1">- {{ education.location }}</h2>
            <p class="my-2 2xl:text-base">{{ education.detail }}</p>
            <span class="text-highlight text-base font-semibold">GPA : {{ education.gpa }}</span>
          </div>
        </div>
      </div>
      <div class="text-default w-full mt-4 -py-4 rounded-3xl text-lg font-semibold tracking-wider flex items-center space-x-2 sm:space-x-4">
        <i class="uil uil-briefcase-alt text-highlight text-4xl font-bold"></i>
        <h1>Work</h1>
      </div>
      <div class="w-full timeline pl-10 sm:pl-0 flex flex-col relative text-default"
        v-for="(work, index) in works" :key="`work-${index}`">
        <div class="timeline-bg mb-4 pb-0.5 px-0.5 flex flex-col sm:flex-row sm:space-x-12">
          <div class="timeline-date py-2 sm:py-0">
            <span class="font-semibold xl:text-base text-white pl-2 sm:pl-2 sm:pr-3 whitespace-nowrap">{{ work.year }}</span>
          </div>
          <div class="timeline-info w-full">
            <h1 class="text-base xl:text-lg 2xl:text-xl font-medium">{{ work.job }}</h1>
            <h2 class="text-tiny xl:text-base 2xl:text-lg xl:font-medium -mt-1">- {{ work.location }}</h2>
             <p class="my-1 2xl:text-base">{{ work.detail }}</p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      educations: [
        { id: "1", major: "Electricals engineering", location: "Silpakorn University", year: "2019 - 2023", detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam tenetur totam voluptate dolores quisquam doloremque cumque quod eveniet ullam autem animi minus laborum delectus molestiae temporibus, distinctio vitae officia? Ullam.", gpa: "3.33" },
        { id: "2", major: "Science - Math", location: "Samchukratana Phokharam school", year: "2012 - 2018", detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam tenetur totam voluptate dolores quisquam doloremque cumque quod eveniet ullam autem animi minus laborum delectus molestiae temporibus, distinctio vitae officia? Ullam.", gpa: "3.13" }
      ],
      works: [
        { id: "1", job: "Full Stack Developer", location: "AI Technovation Co.,Ltd.", year: "2022 - now", detail: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam tenetur totam voluptate dolores quisquam doloremque cumque quod eveniet ullam autem animi minus laborum delectus molestiae temporibus, distinctio vitae officia? Ullam."}
      ]
    }
  },
}
</script>

<style scoped>
.head::after {
  content: "education & work";
  bottom: 3px;
}
.head::before{
  bottom: 13px;
}
.subheader{
  color: var(--color);
}
.timeline-bg {
  background: var(--first-color);
  border-radius: 0 22px 22px 22px;
  box-shadow: 4px 4px 10px var(--color-shadow-img);
}

.timeline::before {
  display: inline-block;
  position: absolute;
  content: "";
  top: 0;
  left: 0;
  height: 1.5rem;
  width: 1.5rem;
  border: solid 4px var(--timeline-line);
  border-radius: 50%;
  background: var(--bg);
  z-index: 1;
  transition: all .2s;
}

.timeline::after {
  content: "";
  border-left: solid 3px var(--timeline-line);
  height: 100%;
  position: absolute;
  top: 0;
  left: .7rem;
  z-index: 0;
}

.timeline:last-child::after {
  border-radius: 10px;
  height: 98%;
}

.timeline-info {
  background: var(--bg-secondary);
  backdrop-filter: blur(5px);
  -webkit-backdrop-filter: blur(5px);
  transition: all .2s;
  padding: .5rem 1rem;
  border-radius: 0 0 20px 20px;
}

@media (min-width:640px) {
  .head::after {
  bottom: -1px;
}
.head::before{
  bottom: 12px;
}
  .timeline-bg {
    background: transparent;
    border-radius: 0;
    box-shadow: none;
  }

  .timeline::before {
    left: 6.9rem;
  }

  .timeline::after {
    left: 7.58rem;
  }

  .timeline-date span {
    border-radius: .25rem;
    -webkit-clip-path: polygon(0 0, 0 0, 100% 0, 100% 0, 100% calc(100% - 15px), calc(100% - 15px) 100%, 15px 100%, 0 100%);
    clip-path: polygon(0 0, 0 0, 100% 0, 100% 0, 100% calc(100% - 10px), calc(100% - 10px) 100%, 15px 100%, 0 100%);
    background: var(--first-color);
    box-shadow: 4px 4px 10px var(--color-shadow-btn);
  }

  .timeline-info {
    border: 2px solid var(--timeline-line);
    border-radius: 0 20px 20px 20px;
    box-shadow: 4px 4px 10px var(--color-shadow-img);
  }
}
@media (min-width:1280px){
  .timeline::before {
    left: 8.2rem;
  }

  .timeline::after {
    left: 8.88rem;
  }
  .timeline-info {
    border: 3px solid var(--timeline-line);
  }
}
</style>