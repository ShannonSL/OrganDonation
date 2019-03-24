import FooterComponent from "./FooterComponent.js";
import UserListComponent from './UserListComponent.js';

export default {
    template: `
    <div>
    
            <h2>Administrators</h2>
       

    <userlistcomponent v-for="(user, index) in userList" :currentUser="user" :key="index"></userlistcomponent>     
     
    <footercomponent></footercomponent>
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
        footercomponent: FooterComponent,
        userlistcomponent: UserListComponent
      }
 }