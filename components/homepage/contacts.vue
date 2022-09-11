<template>
  <div class="w-full flex justify-center items-center overflow-hidden">
    <div class="container px-5 flex flex-col justify-center items-center">
      <div class="title">
        <h1 class="head mx-auto">Contact me</h1>
      </div>
      <div class="w-full text-default lg:flex lg:space-x-12">
        <!-- Contact info -->
        <div class="w-full mt-4">
          <h1 class="subheader text-base font-semibold">Get in touch</h1>
          <p class="con-detail font-medium">You can contact me in many ways, e-mail, linkedin or facebook. If you want
            to contact
            me urgently I
            recommend you to contact me via phone number.</p>
          <div class="lg:space-y-0.5 lg:mt-4">
            <div class="con-email flex">
              <i class="uil uil-envelope text-highlight text-5xl mr-4"></i>
              <div class="flex flex-col justify-center items-start -mt-2">
                <h1 class="text-highlight text-base font-semibold">Email</h1>
                <h1 class="text-tiny font-medium">khumphai_ph@hotmail.com</h1>
              </div>
            </div>
            <div class="con-phone flex -mt-3">
              <i class="uil uil-phone text-highlight text-5xl mr-4"></i>
              <div class="flex flex-col justify-center items-start -mt-2">
                <h1 class="text-highlight text-base font-semibold">Phone</h1>
                <h1 class="text-tiny font-medium">+66 98 340 5579</h1>
              </div>
            </div>
            <div class="con-linked flex -mt-3">
              <i class="uil uil-linkedin text-highlight text-5xl mr-4"></i>
              <div class="flex flex-col justify-center items-start -mt-2">
                <h1 class="text-highlight text-base font-semibold">LinkedIn</h1>
                <h1 class="text-tiny font-medium">Phanthakarn Khumphai</h1>
              </div>
            </div>
          </div>
        </div>

        <!-- Contact form -->
        <div class="lg:w-full lg:mt-4">
          <h1 class="subheader text-base font-semibold mb-1">Message me</h1>
          <form class="w-full" @submit.prevent="send">
            <div class="sm:flex sm:space-x-4">
              <div class="con-input1 sm:w-full">
                <label class="font-medium ml-2" for="name">Name</label>
                <input id="name" type="text" v-model="name" required />
              </div>
              <div class="con-input2 sm:w-full">
                <label class="font-medium ml-2" for="email">Email</label>
                <input id="email" type="email" v-model="email" required />
              </div>
            </div>
            <div class="con-input3">
              <label class="font-medium ml-2" for="subject">Subject</label>
              <input id="subject" type="text" v-model="subject" required />
            </div>
            <div class="con-input4">
              <label class="font-medium ml-2" for="message">Message</label>
              <textarea id="message" v-model="message" required />
            </div>

            <div class="send-button button-bg">
              <button type="submit">
                <div class="i-animation">
                  <i class="fas fa-paper-plane"></i>
                </div>
                <span>
                  Send
                </span>
              </button>

            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import 'mailtrap'
export default {
  data() {
    return {
      name: '',
      email: '',
      message: '',
      subject: '',
    }

  },
  methods: {
    send() {
      const { MailtrapClient } = require("mailtrap");

      const TOKEN = "8190d83191bcfad14b28545a265a5482";
      const ENDPOINT = "https://send.api.mailtrap.io/";

      const client = new MailtrapClient({ endpoint: ENDPOINT, token: TOKEN });

      const sender = {
        email: "mailtrap@izephanthakarn.dev",
        name: "Mailtrap Test",
      };
      const recipients = [
        {
          email: "izephanthakarn@hotmail.com",
        }
      ];

      client
        .send({
          from: sender,
          to: recipients,
          subject: "You are awesome!",
          text: "Congrats for sending test email with Mailtrap!",
          category: "Integration Test",
        })
        .then(console.log, console.error);

      // this.$mail.send({
      //   from: this.email,
      //   subject: this.subject,
      //   text: 'Hi my name is ' + this.name + "\n" + this.message,
      // })
      this.name = ""
      this.email = ""
      this.subject = ""
      this.message = ""
    }
  },
  mounted() {
    const sr = ScrollReveal({
      distance: '100px',
      duration: 1500,
    })

    sr.reveal(`.con-detail`, { origin: 'left', delay: 300 })
    sr.reveal(`.con-email`, { origin: 'left', delay: 400 })
    sr.reveal(`.con-phone`, { origin: 'left', delay: 500 })
    sr.reveal(`.con-linked`, { origin: 'left', delay: 600 })
    sr.reveal(`.con-input1`, { origin: 'left', delay: 300 })
    sr.reveal(`.con-input2`, { origin: 'right', delay: 400 })
    sr.reveal(`.con-input3`, { origin: 'left', delay: 500 })
    sr.reveal(`.con-input4`, { origin: 'right', delay: 600 })
    sr.reveal(`.send-button`, { origin: 'left', delay: 700 })
  }
}
</script>

<style scoped>
.head::after {
  content: "get in touch";
}

input,
textarea {
  background: var(--bg-secondary);
  box-shadow: 2px 2px 6px var(--color-shadow);
  border-radius: 20px;
  width: 100%;
  margin-bottom: 15px;
  outline: none;
  transition: all .1s;
  padding: 10px 15px;
  overflow: hidden;
}

/* input:hover,textarea:hover{
  border: 1px solid #aaa;
} */
input:focus,
textarea:focus {
  outline: solid 2px var(--color-shadow-m);
}

input {
  height: 40px;
}

textarea {
  height: 60px;
  resize: none;
}

.button-bg {
  width: 90px;
  padding: 3px 0;
  display: flex;
  border-radius: 10px;
  align-items: center;
  justify-content: center;
  align-items: center;
  background: var(--first-color);
}

.button-bg button {
  width: 84px;
  /* margin-bottom: 3px; */
  border-radius: 10px;
  padding: 2px 0;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  background: var(--bg-secondary);
}

.button-bg button span {
  display: block;
  margin-left: 5px;
  transition: all 0.3s;
}

.button-bg button i {
  transform-origin: center center;
  margin-right: 0.4rem;
  transition: 0.3s;
}

.button-bg button:hover .i-animation {
  animation: fly-1 0.3s;
}

.button-bg button:hover i {
  transform: translateX(20px) rotate(45deg) scale(1);
  /* color: var(--bg-secondary); */
}


.button-bg button:hover span {
  transform: translateX(50px);
}
</style>