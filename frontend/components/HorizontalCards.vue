<!--<template>-->
<!--  <v-card max-width="600" class="mx-auto" elevation="24">-->
<!--    <v-system-bar color="orange darken-4" dark>-->
<!--      <v-spacer></v-spacer>-->
<!--    </v-system-bar>-->

<!--    <v-app-bar dark color="orange darken-3">-->
<!--      <v-toolbar-title>投稿一覧</v-toolbar-title>-->
<!--      <v-spacer></v-spacer>-->
<!--    </v-app-bar>-->
<!--    <v-card-text>-->
<!--      <v-row>-->
<!--        <v-col cols="10">-->
<!--          <v-text-field-->
<!--            v-model="content"-->
<!--            label="投稿用メッセージフォーム"-->
<!--            class="text-right"-->
<!--            @keydown.enter.exact="keyDownEnter"-->
<!--            @keyup.enter.exact="keyUpEnter"-->
<!--            @keydown.enter.shift="keyEnterShift"-->
<!--          >-->
<!--          </v-text-field>-->
<!--        </v-col>-->
<!--        <v-col cols="1" class="text-left pt-8">-->
<!--          <v-btn icon @click="submit"><v-icon>mdi-send</v-icon></v-btn>-->
<!--        </v-col>-->
<!--      </v-row>-->
<!--      <span v-if="success">送信成功！</span>-->
<!--    </v-card-text>-->
<!--    <v-divider></v-divider>-->
<!--    <v-container>-->
<!--      <v-row dense>-->
<!--        <v-col-->
<!--          v-for="(micropost, i) in micropostsComputed.data"-->
<!--          :key="i"-->
<!--          cols="12"-->
<!--        >-->
<!--          &lt;!&ndash;          <v-lazy&ndash;&gt;-->
<!--          &lt;!&ndash;            v-model="micropost.isActive"&ndash;&gt;-->
<!--          &lt;!&ndash;            :options="{&ndash;&gt;-->
<!--          &lt;!&ndash;              threshold: 0.1,&ndash;&gt;-->
<!--          &lt;!&ndash;            }"&ndash;&gt;-->
<!--          &lt;!&ndash;            min-height="1"&ndash;&gt;-->
<!--          &lt;!&ndash;            transition="fab-transition"&ndash;&gt;-->
<!--          &lt;!&ndash;          >&ndash;&gt;-->
<!--          <twitterCard :micropost="micropost" :current_user="current_user" />-->
<!--          &lt;!&ndash;          </v-lazy>&ndash;&gt;-->
<!--        </v-col>-->
<!--      </v-row>-->
<!--    </v-container>-->
<!--  </v-card>-->
<!--</template>-->

<!--<script>-->
<!--import TwitterCard from '~/components/TwitterCard.vue'-->
<!--export default {-->
<!--  components: {-->
<!--    TwitterCard,-->
<!--  },-->
<!--  props: {-->
<!--    // Object形に変換-->
<!--    microposts: Object,-->
<!--    current_user: Object,-->
<!--  },-->
<!--  data() {-->
<!--    return {-->
<!--      content: '',-->
<!--      // 送信が成功したかどうかのフラグ-->
<!--      success: false,-->
<!--      isActive: true,-->
<!--    }-->
<!--  },-->
<!--  computed: {-->
<!--    micropostsComputed: {-->
<!--      get() {-->
<!--        return this.microposts-->
<!--      },-->
<!--      set(value) {-->
<!--        this.$emit('input', this.microposts) // おやでは @input に書いたメソッドがよばれる。引数にvalue-->
<!--      },-->
<!--    },-->
<!--  },-->
<!--  mounted() {},-->
<!--  // methods: {-->
<!--  //   submit() {-->
<!--  //     this.success = true-->
<!--  //     this.$axios-->
<!--  //       .post('/api/v1/microposts', {-->
<!--  //         content: this.content,-->
<!--  //       })-->
<!--  //       .then((this.content = ''))-->
<!--  //       .catch((error) => console.log(error))-->
<!--  //   },-->
<!--  //   keyDownEnter(e) {-->
<!--  //     this.keyDownCode = e.keyCode // enterを押した時のkeycodeを記録-->
<!--  //     e.preventDefault()-->
<!--  //   },-->
<!--  //   keyUpEnter(e) {-->
<!--  //     if (this.keyDownCode === 229) {-->
<!--  //       // 日本語コードの場合は処理をストップ-->
<!--  //       return-->
<!--  //     }-->
<!--  //     e.preventDefault()-->
<!--  //     this.submit()-->
<!--  //   },-->
<!--  //   keyEnterShift(e) {},-->
<!--  // },-->
<!--}-->
<!--</script>-->
