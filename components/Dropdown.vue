<template>
  <div class="text-center">
    <v-menu offset-y>
      <template v-slot:activator="{ on }">
        <v-btn
          color="primary"
          v-on="on"
          outlined
        >
          Menu
        </v-btn>
      </template>
      <v-list>
        <v-list-item
          v-for="(item, index) in items"
          :key="index"
          @click="() => handleClick(item)"
        >
          <v-list-item-title>{{ item.title }}</v-list-item-title>
        </v-list-item>
      </v-list>
    </v-menu>
  </div>
</template>

<script>
  export default {
    data: () => ({
      items: [
        { title: 'Home'},
        { title: 'Projects'},
        { title: 'About'},
        { title: 'Blogs'},
        { title: 'Contact'},
      ],
    }),
    methods: {
        handleClick(item){
            const name = item.title.toLowerCase()
                name == 'projects'
                    ? document.querySelector('#navbar').scrollIntoView({ behavior: 'smooth' })
                    : document.querySelector(`#${name}`).scrollIntoView({ behavior: 'smooth' })
                setTimeout(() => {
                    console.log(screen.height, window.pageYOffset)
                }, 3000)
        }
    }
  }
</script>

<style lang="scss">
  .text-center {
    display: flex;
    justify-content: center;
    align-content: center;
    padding-top: .7rem;
  }
</style>
