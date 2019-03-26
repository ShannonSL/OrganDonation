import UserListComponent from './UserListComponent.js';

export default {
    template: `
    <div>
    
            <h2 class="display-2" style="text-align:center;font-family:bebas-neue, sans-serif;letter-spacing:3px;color:#1569C7;">Administrators</h2>
       

        
        <userlistcomponent v-for="(user, index) in userList" :currentUser="user" :key="index"></userlistcomponent> 
        

   
</div>
     `,
 
     created: function() {

        this.fetchAllUsers();
      },
  
      data() {
        return {
          userList: []
        }
      },
  
      methods: {
        createSubUser(){
          this.$router.push({ name: "create", params: { userLoggedin: true } });
        },
        fetchAllUsers() {
          let userid = localStorage.getItem("currentUserID");
          let url = `./admin/scripts/users.php?allusers=${userid}`;
  
          fetch(url)
            .then(res => res.json())
            .then(data => {this.userList = data;
              console.log(data);
              // if(data.agedays>=6935){
              //   localStorage.setItem("adultauthenticated", true);
              // }
          
            })
          .catch(function(error) {
            console.error(error);
          });
        }
      },
  
    components: {
       
        userlistcomponent: UserListComponent
      }
 }