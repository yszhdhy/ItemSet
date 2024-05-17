<template>
  <div>
    <div>账号切换</div>
    <button @click="zhangsan()" type="default" size="mini">陈剑豪</button>
    <button @click="lisi()" type="default" size="mini">肖大海</button>
    <button @click="zzjl()" type="default" size="mini">张总经理</button>
    <button @click="admin()" type="default" size="mini">admin</button>
    <div>当前token：{{ token }}</div>
  </div>
</template>

<script>
export default {
  name: "Test",

  data() {
    return {
      token: ''
    };
  },

  created(){
    this.token = window.localStorage.getItem('token')
  },

  methods: {
    admin() {
      window.localStorage.setItem('token', '');
      let token = 'eyJhbGciOiJIUzUxMiIsInppcCI6IkdaSVAifQ.H4sIAAAAAAAAAKtWKi5NUrJScgwN8dANDXYNUtJRSq0oULIyNDc0Nza3MDY211EqLU4t8kwBihkaQTh5ibmpQE1P9014sa01WakWALCQ-kFGAAAA.KKnJ6pZ70fJxSAQgZpiP1hEF_K18afDfwjrXvpZ2yj7r1Tpzli7VrZTBUvwtAFsZk9gHSmyAKMPJr9NrBcrr-Q'
      window.localStorage.setItem('token', token);
      this.token = window.localStorage.getItem('token')
    },

    zhangsan() {
      window.localStorage.setItem('token', '');
      let token = 'eyJhbGciOiJIUzUxMiIsInppcCI6IkdaSVAifQ.H4sIAAAAAAAAAKtWKi5NUrJScgwN8dANDXYNUtJRSq0oULIyNLMwM7C0MDcx1FEqLU4t8kwBihlCOXmJualATS9ndjztnPhi4yqlWgDeAcHGSAAAAA.kcSny1CxUZJuy88L9BZp9ojp0JWAy95_Zle0jGTQ2jNtxdVm4COd6VxdlG_zAtRnuf1afXIjgz1iCIpQIzVvCg'
      window.localStorage.setItem('token', token);
      this.token = window.localStorage.getItem('token')
    },

    zzjl() {
      window.localStorage.setItem('token', '');
      let token = 'eyJhbGciOiJIUzUxMiIsInppcCI6IkdaSVAifQ.H4sIAAAAAAAAAKtWKi5NUrJScgwN8dANDXYNUtJRSq0oULIyNLMwMzAyNTM311EqLU4t8kxRsjKFMPMSc1OBWqqqsnKUagGWUBLrQQAAAA.0ga4ahQ3ZwNgyDe3kAHvr4aOQNqG9SntIeB7deHkjBIS8FtJ8JtwcdJB8QKbMI8th93ttrXQKvnIZlJhccUD0Q'
      window.localStorage.setItem('token', token);
      this.token = window.localStorage.getItem('token')
    },

    lisi() {
      window.localStorage.setItem('token', '');
      let token = 'eyJhbGciOiJIUzUxMiIsInppcCI6IkdaSVAifQ.H4sIAAAAAAAAAKtWKi5NUrJScgwN8dANDXYNUtJRSq0oULIyNLMwM7C0MLc01FEqLU4t8kwBihmYQzh5ibmpQE0vmqY9XbL82dbtSrUA7SYn3kgAAAA.nJtfV1U5vX22yoh9sUz1Kqx6euctFKb3dC9QTq7vouUi8w05TDe39pAZsh1zHXwIlXV_bijwiIeJbVIPrVq1yw'
      window.localStorage.setItem('token', token);
      this.token = window.localStorage.getItem('token')
    }
  }
}
</script>
