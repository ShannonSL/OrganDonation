export default {
  template: `
  <footer>
<div class="footer">
      <ul>
        
        <li v-if="authenticated"><router-link :to="{ name: 'userlists'}">Users</router-link></li>
        <li v-if="authenticated" v-on:click="logout()">logout</li>
        <li v-else> <router-link :to="{ name: 'login'}">login</router-link></li>       
      </ul>
  </div>
  </footer>
    `
};