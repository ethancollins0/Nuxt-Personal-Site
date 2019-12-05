<template>
  <div>
    <Intro />
    <Navbar />
    <Projects />
    <About />
    <Blogs />
    <Contact />
  </div>
</template>

<script>
import Intro from '../components/Intro'
import Projects from '../components/Projects'
import Navbar from '../components/Navbar'
import About from '../components/About'
import Blogs from '../components/Blogs'
import Contact from '../components/Contact'
export default {

  components: {
    Intro,
    Projects,
    Navbar,
    About,
    Blogs,
    Contact
  },
  mounted(){
    fetch(this.$store.state.mailerUrl) //fire up heroku server for email comms
  }
}
</script>
