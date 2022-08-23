<template>
  <div class="w-full flex justify-center items-center">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">About me</h1>
      </div>
      <div class="w-full flex flex-col justify-center">
        <div class="img-about mx-auto">
          <img src="~/static/profileme.jpg" alt="">
        </div>
        <div class="content-about">
          <div class="w-full flex flex-col">
            <h3 class="font-semibold text-base leading-6 text-default">I'm Phanthakarn Khumphai and <br> I'm <span class="text-highlight typing2"></span><span
                class="text-highlight ml-px">|</span></h3>
                <p class="text-default text-sm font-semibold text-justify">Hello, my name is Phanthakarn Khumphai nickname is Ize. I'm a student in the Department of Electrical and Computer Systems Engineering at Silpakorn University. I’ve more than 4 years front-end experience and more than 1 year back-end experience. This website was created with nuxt.js as a portfolio to showcase my skills.</p>
                <div class="flex justify-around items-center">
                  <div class="flex flex-col justify-center items-center">
                    span
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
.content-about p{
  margin: 20px 0;
}
</style>