
export default {
    props: ['currentUser'],
    template: `
  
        
          <div>
          <router-link :to="{ name: 'main'}" id="userlistCom">
            
            <h2>{{ currentUser.username }}</h2>
            <p><router-link :to="{ name: 'edit', params: { userinfo: currentUser }}">Edit Account</router-link></p>
            
        </router-link>
         
        </div>
     `,
    methods: {
      //data
    }
}