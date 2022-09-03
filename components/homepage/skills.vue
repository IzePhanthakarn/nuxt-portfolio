<template>
  <div class="w-full py-3 flex justify-center items-center overflow-x-hidden">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">My Skills</h1>
      </div>
      <div class="w-full grid grid-cols-1 sm:grid-cols-2 sm:gap-x-6 text-default">
        <div class="flex flex-col">
          <div class="skills__cards w-full my-2.5 sm:my-3.5 rounded-2xl">
            <header class="skills__header flex justify-between items-center px-4 py-2 cursor-pointer">
              <div class="skills_subheader">
                <i class="uil uil-desktop-cloud-alt skills__icon text-4xl xl:text-5xl mx-2 lg:mx-8 text-highlight"></i>
                <div>
                  <h1 class="text-base xl:text-lg font-bold">Full Stack Developer</h1>
                  <span class="text-tiny xl:text-base font-semibold">More than 4 years</span>
                </div>
              </div>

              <i class="uil uil-angle-down skills__arrow text-4xl text-highlight lg:mx-8"></i>
            </header>
            <div class="skill__set">
              <div class="flex px-6 py-4 xl:px-10 font-medium" v-for="(fullstack, index) in fullstacks" :key="index">
                <i class="uil uil-award text-2xl xl:text-3xl text-highlight mr-1 xl:mr-4"></i>
                <div class="lg:text-base">
                  <h2 class="skill__title-info">{{ fullstack.title }}</h2>
                  <p>{{ fullstack.level }}</p>
                </div>
              </div>
            </div>
          </div>

          <div class="skills__cards w-full my-2.5 sm:my-3.5 rounded-2xl">
            <header class="skills__header flex justify-between items-center px-4 py-2 cursor-pointer">
              <div class="skills_subheader">
                <i class="uil uil-arrow skills__icon text-4xl xl:text-5xl mx-2 lg:mx-8 text-highlight"></i>
                <div>
                  <h1 class="text-base xl:text-lg font-bold">Programming</h1>
                  <span class="text-tiny xl:text-base font-semibold">More than 5 years</span>
                </div>
              </div>

              <i class="uil uil-angle-down skills__arrow text-4xl text-highlight lg:mx-8"></i>
            </header>

            <div class="skill__set">
              <div class="flex px-6 py-4 xl:px-10 font-medium" v-for="(programming, index) in programmings" :key="`work-${index}`">
                <i class="uil uil-award text-2xl xl:text-3xl text-highlight mr-1 xl:mr-4"></i>
                <div class="lg:text-base">
                  <h2 class="skill__title-info">{{ programming.title }}</h2>
                  <p>{{ programming.level }}</p>
                </div>
              </div>
            </div>

          </div>
        </div>
        <div class="flex flex-col">
          <div class="skills__cards w-full my-2.5 sm:my-3.5 rounded-2xl">
            <header class="skills__header flex justify-between items-center px-4 py-2 cursor-pointer">
              <div class="skills_subheader">
                <i class="uil uil-swatchbook skills__icon text-4xl xl:text-5xl mx-2 lg:mx-8 text-highlight"></i>
                <div>
                  <h1 class="text-base xl:text-lg font-bold">Tools</h1>
                  <span class="text-tiny xl:text-base font-semibold">More than 4 years</span>
                </div>
              </div>

              <i class="uil uil-angle-down skills__arrow text-4xl text-highlight lg:mx-8"></i>
            </header>
            <div class="skill__set">
              <div class="flex px-6 py-4 xl:px-10 font-medium" v-for="(tool, index) in tools" :key="`work-${index}`">
                <i class="uil uil-award text-2xl xl:text-3xl text-highlight mr-1 xl:mr-4"></i>
                <div class="lg:text-base">
                  <h2 class="skill__title-info">{{ tool.title }}</h2>
                  <p>{{ tool.level }}</p>
                </div>
              </div>
            </div>

          </div>
          <div class="skills__cards w-full my-2.5 sm:my-3.5 rounded-2xl">
            <header class="skills__header flex justify-between items-center px-4 py-2 cursor-pointer">
              <div class="skills_subheader">
                <i class="uil uil-brain skills__icon text-4xl xl:text-5xl mx-2 lg:mx-8 text-highlight"></i>
                <div>
                  <h1 class="text-base xl:text-lg font-bold">Soft Skills</h1>
                  <span class="text-tiny xl:text-base font-semibold">More than 3 years</span>
                </div>
              </div>

              <i class="uil uil-angle-down skills__arrow text-4xl text-highlight lg:mx-8"></i>
            </header>
            <div class="skill__set">
              <div class="flex px-6 py-4 xl:px-10 font-medium" v-for="(soft, index) in softs" :key="`work-${index}`">
                <i class="uil uil-award text-2xl xl:text-3xl text-highlight mr-1 xl:mr-4"></i>
                <div class="lg:text-base">
                  <h2 class="skill__title-info whitespace-nowrap">{{ soft.title }}</h2>
                  <p>{{ soft.level }}</p>
                </div>
              </div>
            </div>
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
      fullstacks: [
        { id: "1", title: "HTML", level: "Expert" },
        { id: "2", title: "CSS", level: "Expert" },
        { id: "3", title: "JavaScript", level: "Intermdiate" },
        { id: "4", title: "PHP", level: "Intermdiate" },
        { id: "5", title: "Flutter", level: "Intermdiate" }
      ],
      programmings: [
        { id: "1", title: "Python", level: "Advance" },
        { id: "2", title: "SQL", level: "Advance" },
        { id: "3", title: "JavaScript", level: "Intermdiate" },
        { id: "4", title: "C/C++", level: "Intermdiate" },
        { id: "5", title: "Dart", level: "Beginner" }
      ],
      tools: [
        { id: "1", title: "VS Code", level: "Expert" },
        { id: "2", title: "Github", level: "Advance" },
        { id: "3", title: "Figma", level: "Advance" },
        { id: "4", title: "Trello", level: "Elementary" },
      ],
      softs: [
        { id: "1", title: "Computer", level: "Expert" },
        { id: "2", title: "Leadership", level: "Intermdiate" },
        { id: "3", title: "Management", level: "Advance" },
        { id: "4", title: "Design skills", level: "Intermdiate" },
      ],
    }
  },
  mounted() {
    const accordItem = document.querySelectorAll('.skills__cards')

    accordItem.forEach((item) => {
      const accordHeader = item.querySelector('.skills__header')
      accordHeader.addEventListener('click', () => {
        const openItem = document.querySelector('.accord-open')

        toggleItem(item)

        if (openItem && openItem !== item) {
          toggleItem(openItem)
        }
      })
    })

    const toggleItem = (item) => {
      const accordContent = item.querySelector('.skill__set')
      const skill = item.querySelector('.skills__arrow')
      if (item.classList.contains('accord-open')) {
        accordContent.removeAttribute('style')
        item.classList.remove('accord-open')
        skill.classList.remove('rotate');

      } else {
        accordContent.style.height = accordContent.scrollHeight + 'px'
        item.classList.add('accord-open')
        skill.classList.add('rotate');
      }
    }


  },
}
</script>

<style scoped>
.head::after {
  content: "what I can do";
  bottom: -1px;
}
.head::before{
  bottom: 11px;
}
.skills__arrow {
  transition: all .4s;
}

.skills__arrow.rotate {
  transition: all .4s;
  transform: rotate(-180deg)
}

.skills__cards {
  background: var(--bg-secondary);
  box-shadow: 2px 2px 6px var(--color-shadow);
}

.skills__header i {
  transform: translateY(0.3rem);
}

.skills_subheader {
  display: flex;
  align-items: center;
}

.skill__set {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  overflow: hidden;
  height: 0;
  transition: 0.4s;
}
</style>