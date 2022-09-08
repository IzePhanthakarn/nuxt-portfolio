<template>
  <div class="footer py-2.5 space-y-3 flex flex-col items-center">
    <div class="icon-follow flex justify-center space-x-6 text-3xl">
      <a href="https://www.facebook.com/ize.phanthakarn.5/" target="_blank" class="fab fa-facebook-square hover-icon"></a>
      <a href="https://www.instagram.com/jjaoizee/" target="_blank" class="fab fa-instagram-square hover-icon"></a>
      <a href="https://github.com/izephanthakarn" target="_blank" class="fab fa-github-square hover-icon"></a>
      <a href="https://github.com/izephanthakarn" target="_blank" class="fab fa-line hover-icon"></a>
    </div>
    <div class="line"></div>
    <p class="text-center">Created by <span class="text-highlight font-medium">IzePhanthakarn</span> | Copyright <i class="far fa-copyright"></i> 2022</p>
  </div>
</template>

<script>
export default {
mounted() {
    const sr = ScrollReveal({
      distance: '50px',
      duration: 2000,
    })

    sr.reveal(`.footer`, { origin: 'top', delay: 800 })
  },
}
</script>

<style scoped>
.footer{
  color: var(--color);
}
.icon-follow a{
  color: #FFF;
  transition: .3s;
}
.icon-follow a:hover{
  color: var(--color-primary);
}
.line{
  background: var(--color);
  height: .5px;
  width: 98%;
}
.hover-icon {
  background: var(--color);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  transition: all .2s;
}

.hover-icon:hover {
  background: var(--color-primary);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  transition: all .2s;
}
</style>