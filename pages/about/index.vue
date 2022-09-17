<template>
    <div class="w-full pt-20 flex flex-col justify-center items-center overflow-x-hidden">
        <div class="container px-5 flex flex-col justify-center items-center">
            <div class="title mt-0 sm:mt-4">
                <h1 class="head mx-auto">About me</h1>
            </div>
            <div class="w-full lg:mt-12 2xl:mt-20 flex flex-col lg:flex-row justify-center items-center">
                <div class="img-about mx-auto lg:w-4/12">
                    <img src="~/static/img/me/profileme.jpg" alt="">
                </div>
                <div class="content-about lg:w-7/12">
                    <div class="w-full flex flex-col text-default">
                        <h3 class="font-semibold text-base sm:text-xl lg:text-lg leading-6 sm:leading-9 lg:leading-7">
                            I'm Phanthakarn Khumphai</h3>
                        <p
                            class="my-5 text-sm sm:text-base lg:text-tiny 2xl:text-base font-semibold text-justify indent-8">
                            Hello, my name is Phanthakarn Khumphai nickname is Ize.
                            I'm a student in the Department of Electrical and Computer Systems Engineering at Silpakorn
                            University.
                            I've more than 4 years front-end experience and more than 1 year back-end experience. This
                            website was
                            created with nuxt.js as a portfolio to showcase my skills.</p>
                        <div class="px-2 flex justify-between sm:justify-evenly items-center">
                            <div class="flex flex-col justify-center items-center glass p-2 rounded-xl w-24 sm:w-28 h-28 sm:h-32"
                                v-for="(exp, index) in exps" :key="index">
                                <span class="text-highlight text-lg sm:text-xl font-semibold">{{ exp.number }}</span>
                                <p
                                    class="text-sm sm:text-base lg:text-tiny font-semibold text-center leading-4 sm:leading-6 lg:leading-5">
                                    {{ exp.line1 }}<br>{{ exp.line2 }}</p>
                            </div>
                        </div>
                        <div
                            class="my-6 px-2 sm:my-8 flex justify-between sm:justify-start items-center text-base font-semibold sm:space-x-10">
                            <div class="button bold__btn-bg w-36 h-11 rounded-2xl">
                                <button class="button-inside font-semibold">Resume</button>
                            </div>
                            <div class="button regular__btn-bg w-36 h-11 rounded-2xl">
                                <nuxt-link to="/about"
                                    class="button-inside font-semibold flex justify-center items-center">CV
                                </nuxt-link>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container px-5 flex flex-col lg:flex-row justify-center items-center text-default">
            <div class="content-about lg:w-7/12">
                <div class="w-full">
                    <h1 class="font-semibold text-base sm:text-xl lg:text-lg leading-6 sm:leading-9 lg:leading-7">I'm a
                        <span class="text-highlight typing2"></span><span class="text-highlight ml-px">|</span>
                    </h1>
                    <p class="my-5 text-sm sm:text-base lg:text-tiny 2xl:text-base font-semibold text-justify indent-8">
                        I've
                        known about computers since I was 7 years old from my father's computer. And I got my first
                        laptop when I was 12 years old, then I got really addicted to the game. Until the age of 15,
                        I was introduced to computer programming from a school subject. I started computer programming
                        seriously at the
                        age of 18.</p>
                    <p class="my-5 text-sm sm:text-base lg:text-tiny 2xl:text-base font-semibold text-justify indent-8">
                        I started
                        web development by studying Front-end with HTML CSS JavaScript Basics from free courses on the
                        internet. and started writing, followed by back-end with PHP and SQL. I studied basic web
                        development for 3 years while attending university. </p>
                    <p class="mt-5 text-sm sm:text-base lg:text-tiny 2xl:text-base font-semibold text-justify indent-8">
                        Until I came to work at AI Technovation Co.,Ltd.I am familiar with the Nuxt.js framework,
                        back-end writing in Golang, used with PostgreSQL database,
                        and now I am able to develop full-stack websites.</p>
                </div>
            </div>
            <div class="img-about mx-auto lg:w-4/12">
                <img src="~/static/img/me/me2.jpg" alt="">
            </div>
        </div>
        <div class="tabs container px-5 text-default">
            <div class="tabs__head rounded-full mb-4 flex items-center justify-between">
                <div class="tabs__toggle rounded-full py-px w-1/2 text-center text-tiny lg:text-lg font-semibold flex items-center justify-center"
                    :class="{'tabs__active':!tabs__active}" @click="tabs__active = false">
                    <i class="uil uil-file-info-alt text-xl file-info-icon"></i>
                    <p class="tabs__name">Personal information</p>
                </div>
                <div class="tabs__toggle rounded-full py-px w-1/2 text-center text-tiny lg:text-lg font-semibold flex space-x-2 items-center justify-center"
                    :class="{'tabs__active':tabs__active}" @click="tabs__active = true">
                    <i class="uil uil-image-v text-xl"></i>
                    <p class="tabs__name">Galley</p>
                </div>
            </div>
            <div class="tabs__body p-4 mb-4">
                <div class="tabs__content" :class="{'tabs__active':!tabs__active}">
                    <h1 class="tabs__title text-lg sm:text-xl font-semibold">Personal information</h1>
                    <div class="tabs__text flex my-1 sm:text-base flex items-center"
                        v-for="(personal,index) in personals" :key="index">
                        <p class="w-24 sm:w-36 text-tiny sm:text-lg font-semibold">{{personal.title}}</p>:
                        <p class="ml-4 sm:ml-8 font-medium">{{personal.detail}}</p>
                    </div>
                </div>
                <div class="tabs__content" :class="{'tabs__active':tabs__active}">
                    <h1 class="tabs__title text-lg sm:text-xl font-semibold mb-2">Gallery</h1>
                    <div class="gallery">
                        <div v-for="(gallery,index) in gallerys.slice(0,numPic)" :key="index">
                            <img class="rounded-lg cursor-pointer" :src="require(`~/static/img/me${gallery.imgUrl}`)"
                                @click="show(gallery.imgUrl)" />
                        </div>
                    </div>
                    <div class="w-full flex items-center justify-center mt-2">
                        <button @click="numPic += 20" v-show="numPic <= 20">
                            <p class="underline text-base">loadmore</p>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div v-if="focusImg != ''" class="prevent-box w-full sm:w-2/3 lg:w-auto px-2.5 text-default font-medium" :class="{'active':isOpen}">
            <div class="flex justify-end mr-0">
                <i class="uil uil-x cursor-pointer text-xl" @click="close"></i>
            </div>
            <img class="rounded-lg drop-shadow-md" :src="require(`~/static/img/me${focusImg}`)">
            <div class="w-full my-2 flex justify-start items-center">
                <a class="buttonDownload" :href="require(`~/static/img/me${focusImg}`)" download>Download</a>
                <a class="underline ml-4" :href="require(`~/static/img/me${focusImg}`)" target="_blank">Open new tab</a>
            </div>
        </div>
        <div class="overlay" :class="{'active':isOpen}" @click="close"></div>
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
            ],
            personals: [
                { title: "Name", detail: "Phanthakarn Khumphai" },
                { title: "Nickname", detail: "Ize" },
                { title: "Gender", detail: "Male" },
                { title: "Birthday", detail: "17 June 2001" },
                { title: "Age", detail: "21 years old" },
                { title: "Education", detail: "Electrical Engineering" },
                { title: "Occupation", detail: "Developer" },
                { title: "Blood type", detail: "AB" },
                { title: "Weight", detail: "51 kg" },
                { title: "Height", detail: "160 cm" },
                { title: "Nationality", detail: "Thai" },
                { title: "Hobby", detail: "Watch a movie" },
                { title: "Character", detail: "Friendly" },
            ],
            gallerys: [
                { id: "1", imgUrl: "/me3.jpg" },
                { id: "2", imgUrl: "/me4.jpg" },
                { id: "3", imgUrl: "/me5.jpg" },
                { id: "6", imgUrl: "/me8.jpg" },
                { id: "7", imgUrl: "/me9.jpg" },
                { id: "5", imgUrl: "/me7.jpg" },
                { id: "8", imgUrl: "/me10.jpg" },
                { id: "4", imgUrl: "/me6.jpg" },
                { id: "11", imgUrl: "/me13.jpg" },
                { id: "9", imgUrl: "/me11.jpg" },
                { id: "10", imgUrl: "/me12.jpg" },
                { id: "12", imgUrl: "/me14.jpg" },
                { id: "13", imgUrl: "/me15.jpg" },
                { id: "14", imgUrl: "/me16.jpg" },
                { id: "15", imgUrl: "/me17.jpg" },
                { id: "16", imgUrl: "/me18.jpg" },
                { id: "17", imgUrl: "/me19.jpg" },
                { id: "18", imgUrl: "/me20.jpg" },
                { id: "19", imgUrl: "/me21.jpg" },
                { id: "20", imgUrl: "/me22.jpg" },
                { id: "21", imgUrl: "/me23.jpg" },
                { id: "22", imgUrl: "/me24.jpg" },
                { id: "23", imgUrl: "/me25.jpg" },
                { id: "24", imgUrl: "/me26.jpg" },
            ],
            numPic: 6,
            screen: window.screen.width,
            tabs__active: false,
            isOpen: false,
            focusImg: ''
        }
    },
    methods: {
        responsive() {
            this.numPic = 6
            if (this.screen > 640 && this.screen < 1280) {
                this.numPic = 9
            }
            else if (this.screen >= 1280) {
                this.numPic = 24
            }
            console.log(this.numPic)
        },
        show(img) {
            this.focusImg = img
            this.isOpen = true
        },
        close() {
            this.focusImg = ''
            this.isOpen = false
        }
    },
    mounted() {
        this.responsive();
        var typed = new Typed(".typing2", {
            strings: ["Full Stack Developer.", "UX/UI Designer.", "Programmer.", "Gamer."],
            typeSpeed: 100,
            backSpeed: 60,
            cursorChar: '',
            loop: true
        });

        const sr = ScrollReveal({
            distance: '100px',
            duration: 1500,
        })

        sr.reveal(`.title`, { origin: 'top', delay: 200 })
        sr.reveal(`.img-about`, { origin: 'left', delay: 300 })
        sr.reveal(`.content-about`, { origin: 'right', delay: 400 })
        sr.reveal(`.tabs__head`, { origin: 'left', delay: 400 })
        sr.reveal(`.tabs__body`, { origin: 'right', delay: 400 })
    },

}
</script>
    
<style scoped>
.head::after {
    content: "who i am";
}

.prevent-box {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) scale(0);
    transition: .5s ease-in-out;
    border: 2px solid var(--timeline-line);
    border-radius: 20px;
    z-index: 60;
    background-color: var(--color-neg);
}

.prevent-box.active {
    transform: translate(-50%, -50%) scale(1);
}

.prevent-box img{
    max-height: 80vh;
}
.overlay {
    position: fixed;
    opacity: 0;
    transition: .2s ease-in-out;
    z-index: 59;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0, 0, 0, 0.5);
    pointer-events: none;
}

.overlay.active {
    opacity: 1;
    pointer-events: all;
}

.buttonDownload {
 display: inline-block;
 position: relative;
 padding: 10px 25px;
 background: var(--color-primary);
 color: white;
 border-radius: 15px;
 font-family: sans-serif;
 text-decoration: none;
 font-size: 0.9em;
 text-align: center;
 text-indent: 15px;
 border: none;
}


.buttonDownload:before, .buttonDownload:after {
 content: ' ';
 display: block;
 position: absolute;
 left: 15px;
 top: 52%;
}

.buttonDownload:before {
 width: 14px;
 height: 2px;
 border-style: solid;
 border-width: 0 2px 2px;
}

.buttonDownload:after {
 width: 0;
 height: 0;
 margin-left: 3px;
 margin-top: -7px;
 border-style: solid;
 border-width: 4px 4px 0 4px;
 border-color: transparent;
 border-top-color: inherit;
 animation: downloadArrow 1s linear infinite;
 animation-play-state: paused;
}

.buttonDownload:hover:before {
 border-color: #cdefbd;
}

.buttonDownload:hover:after {
 border-top-color: #cdefbd;
 animation-play-state: running;
}

@keyframes downloadArrow {
 0% {
  margin-top: -7px;
  opacity: 1;
 }

 0.001% {
  margin-top: -15px;
  opacity: 0.4;
 }

 50% {
  opacity: 1;
 }

 100% {
  margin-top: 0;
  opacity: 0.4;
 }
}
.img-about img {
    width: 250px;
    margin: 30px 0;
    border-radius: 15px;
    box-shadow: 2px 2px 6px var(--color-shadow);
}

.glass:hover {
    border: 3px solid var(--color-shadow-m);
    box-shadow: 4px 8px 30px rgba(0, 0, 0, 0.2);
}

.bold__btn-bg {
    background: var(--color-primary);
}

.file-info-icon {
    transform: translate(10px, 2px);
}

.bold__btn-bg:hover {
    scale: 1.05;
}

.bold__btn-bg .button-inside {
    color: #FFF;
}

.bold__btn-bg:hover .button-inside {
    background-color: var(--bg);
    color: var(--color);
}

.indent-8 {
    text-indent: 3rem;
}

.underline{
    text-underline-offset: 3px;
}

.gallery {
    columns: 2;
    gap: 10px;
}

.gallery img {
    margin-bottom: 10px;
    box-shadow: 2px 2px 6px var(--color-shadow-w);
}
.gallery img:hover{
    filter: brightness(.8);
}
.tabs__head {
    box-shadow: 2px 2px 6px var(--color-shadow-w);
    padding: 6px 3px;
    background: var(--bg-secondary);
}

.tabs__toggle {
    margin: 0 5px;
    cursor: pointer;
    transition: all .5s;
}

.tabs__content {
    display: none;
}

.tabs__body {
    box-shadow: 2px 2px 6px var(--color-shadow-w);
    border-radius: 25px;
    position: relative;
    background: var(--bg-secondary);
}

.tabs__toggle.tabs__active {
    background: var(--color-primary);
    box-shadow: 2px 2px 6px var(--color-shadow-w);
    color: #FFF;
}

.tabs__content.tabs__active {
    display: block;
}


@media(min-width:640px) {
    .img-about img {
        width: 400px;
        border-radius: 30px;
    }

    .gallery {
        columns: 3;
    }

    .file-info-icon {
        transform: translate(0);
        margin-right: 5px;
    }
}

@media(min-width:1280px) {
    .gallery {
        columns: 5;
        gap: 15px;
    }

    .gallery img {
        margin-bottom: 15px;
    }
}

@media(min-width:1536px) {
    .img-about img {
        width: 500px;
    }
}
</style>