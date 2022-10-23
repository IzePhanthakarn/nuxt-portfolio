<template>
  <div class="w-full flex justify-center items-center overflow-x-hidden py-0 lg:py-8">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">About me</h1>
      </div>
      <div class="w-full lg:mt-12 2xl:mt-20 flex flex-col lg:flex-row justify-center items-center">
        <div class="img-about mx-auto lg:w-4/12">
          <img src="~/static/img/me/profileme.jpg" alt="">
        </div>
        <div class="content-about lg:w-7/12">
          <div class="w-full flex flex-col text-default">
            <h3 class="font-semibold text-base sm:text-xl lg:text-lg leading-6 sm:leading-9 lg:leading-7">I'm Phanthakarn Khumphai and <br> I'm <span
                class="text-highlight typing2"></span><span class="text-highlight ml-px">|</span></h3>
            <p class="my-5 text-sm sm:text-base lg:text-tiny 2xl:text-base font-semibold text-justify">Hello, my name is Phanthakarn Khumphai nickname is Ize.
              I'm a student in the Department of Electrical and Computer Systems Engineering at Silpakorn University.
              I've more than 4 years front-end experience and more than 1 year back-end experience. This website was
              created with nuxt.js as a portfolio to showcase my skills.</p>
            <div class="px-2 flex justify-between sm:justify-evenly items-center">
              <div class="flex flex-col justify-center items-center glass p-2 rounded-xl w-24 sm:w-28 h-28 sm:h-32"
                v-for="(exp, index) in exps" :key="index">
                <span class="text-highlight text-lg sm:text-xl font-semibold">{{ exp.number }}</span>
                <p class="text-sm sm:text-base lg:text-tiny font-semibold text-center leading-4 sm:leading-6 lg:leading-5">{{ exp.line1 }}<br>{{ exp.line2 }}</p>
              </div>
            </div>
            <div class="my-6 px-2 sm:my-8 flex justify-between sm:justify-start items-center text-base font-semibold sm:space-x-10">
                <div class="button bold__btn-bg w-36 h-11 rounded-2xl">
                  <button class="button-inside font-semibold">Resume</button>
                </div>
                <div class="button regular__btn-bg w-36 h-11 rounded-2xl">
                  <nuxt-link to="/about" class="button-inside font-semibold flex justify-center items-center">More</nuxt-link>
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
      exps: [
        { number: "04+", line1: "Years", line2: "experience" },
        { number: "06+", line1: "Completed", line2: "projects" },
        { number: "05+", line1: "People", line2: "work with" }
      ]
    }
  },
  mounted() {
    var typed = new Typed(".typing2", {
      strings: ["Full Stack Developer.", "UX/UI Designer.", "Programmer.", "Gamer."],
      typeSpeed: 100,
      backSpeed: 60,
      cursorChar: '',
      loop: true
    });
  },
}
</script>

<style scoped>
.head::after {
  content: "who i am";
}

.img-about img {
  width: 250px;
  margin: 30px 0;
  border-radius: 15px;
  box-shadow: 2px 2px 6px var(--color-shadow);
}
.glass:hover{
  border: 3px solid var(--color-shadow-m);
  box-shadow: 4px 8px 30px rgba(0, 0, 0, 0.2);
}
.bold__btn-bg {
  background: var(--color-primary);
}

.bold__btn-bg:hover{
  scale: 1.05;
}
.bold__btn-bg .button-inside{
  color: #FFF;
}
.bold__btn-bg:hover .button-inside{
background-color: var(--bg);
color: var(--color);
}

@media(min-width:640px){
  .img-about img {
  width: 400px;
  border-radius: 30px;
}
}
@media(min-width:1536px){
  .img-about img {
  width: 500px;
}
}

</style>