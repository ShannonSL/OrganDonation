
export default {
    props: ['userinfo'],
    template: `
    
   
   <div class="container full" style="text-align:center;">

    <div class="form" style="width:80%;">
   
    <form action="login.html" class="login-form" method="post">
       <h2>First Name</h2> <label v-show for="fname">First Fame:</label>
        <input  v-model="input.firstname" name="fname" type="text" :placeholder="'Current: ' + c_userinfo.userfname" /><hr>
        <h2>Username</h2>
        <input v-model="input.username" name="username" type="text" :placeholder="'Current: ' +c_userinfo.username" /><hr>
       
        <h2>Email</h2><input v-model="input.email" name="email" type="email" value="gggggg" :placeholder="'Current: ' +c_userinfo.email"  />
      <hr>
        <button type="submit" @click.prevent="edit_user(null)">Edit User</button>
        
    </form>
    
    </div>


    



     `,

     data() {
         return {
             input: {
                firstname: "",
                 username: "",
                 email: "",

             },
             c_userinfo:[],
             userid:"",
             validateInput:""

         }
     },
     created: function() {

   
       {
        this.fetchCurrentUser(null);
       }
     
       
     },
 
     methods: {


      
        fetchCurrentUser(grade) {
            console.log(grade)
            let userid = this.userinfo.id;
            let url = (grade == null) ?  `./admin/scripts/users.php?mainuser=${userid}`:`./admin/scripts/users.php?subuser=${userid}`;
    
            fetch(url)
              .then(res => res.json())
              .then(data => {this.c_userinfo = data;
                console.log(data);
              })
            .catch(function(error) {
              console.error(error);
            });
          },

        edit_user(filter) {
            let userid = this.userinfo.id;
        {
           
            this.validateInput =this.input.firstname !== "" && this.input.username !== "" && this.input.email !== "";
          }
            if (this.validateInput) {
              let formData = new FormData();
      
              formData.append("firstname", this.input.firstname);
              formData.append("username", this.input.username);
              formData.append("email", this.input.email);
              
              let url = (filter == null) ? `./admin/scripts/admin_edituser.php?main=${userid}`:`./admin/scripts/admin_edituser.php?sub=${userid}`;
              fetch(url, {
                method: "POST",
                body: formData
              })
                .then(res => res.json())
                .then(data => {
                  console.log(data);
                  if (data == "User edit Failed") {
                    console.log("Creation failed, try again");
                    this.$emit("autherror", data);  
                } else {
                    this.$router.replace({ name: "userlists" });

                  }
                })
                .catch(function (error) {
                  console.log(error);
                });
            } else {
             let warn = ("Fields shouldn't be blank");
              this.$emit("autherror", warn);  
            }
          }
    },
    components: {
         
      }
 }
