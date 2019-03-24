import FooterComponent from "./FooterComponent.js";


export default {
    props: ['loginMessage'],
    template: `
    <div>  
   
    <h4>{{loginMessage}}</h4>
    
    <form action="login.html" class="login-form" method="post">
        <label for="username" class="hide">Username:</label>
        <input v-model="input.username" type="text" placeholder="username"/>
        <label for="password" class="hide">Password</label>
        <input v-model="input.password" type="password" placeholder="password"/>
        <button v-on:click.prevent="login()" type="submit">login</button>
        
    </form>
    
   
    <footercomponent></footercomponent>
</div>
     `,
 
     data() {
         return {
             input: {
                 username: "",
                 password: ""
             },
             currentdate:""
          
         }
     },
     created: function() {

   //data
   
     },
     methods: {
       
         login() {
            //console.log(this.$parent.mockAccount.username);
 
            if(this.input.username != "" && this.input.password != "") {
            // fetch the user from the DB
            // generate the form data
            let formData = new FormData();

             formData.append("username", this.input.username);
             formData.append("password", this.input.password);

             let url = `./admin/scripts/admin_login.php`;
 
             fetch(url, {
                    method: 'POST',
                    body: formData
                })
                 .then(res => res.json())
                 .then(data => {
                    if (typeof data != "object") { // means that we're not getting a user object back
                        console.warn(data);
                        console.error("authentication failed, please try again");
                        this.$emit("autherror", data);
                    } else {
                    //    check agedays in to days and if it's number is more than 365*19 the user is authenticated
                     
                        localStorage.setItem("adultauthenticated", false);
                        localStorage.setItem("authenticated", true);
                        localStorage.setItem("currentUserID", data.user_id);
                        this.$emit("authenticated", true, data);
                        this.$router.replace({ name: "userlists" });
                    }
                })
             .catch(function(error) { 
                 console.log(error);
             });
        } else {
                 console.log("A username and password must be present");
            }
        }
    },
    components: {
        footercomponent: FooterComponent
      }
 }