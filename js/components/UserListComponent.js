
export default {
    props: ['currentUser'],
    template: `
  
        <div class="container full">
    <div class="card card-cascade">
    
    <!-- Card image -->
    <div class="view view-cascade gradient-card-header blue-gradient">
  
      <!-- Title -->
      <h2 class="display-3 card-header-title mb-3" style="text-align:center;font-family:bebas-neue, sans-serif;letter-spacing:3px;color:#fff;">{{ currentUser.username }}</h2>
      <!-- Subtitle -->
      <p class="card-header-subtitle mb-0 display-4" style="text-align:center;font-family:basic-sans, sans-serif;letter-spacing:3px;color:#fff;">
      
      
      <router-link :to="{ name: 'edit', params: { userinfo: currentUser }}"><span style="color:#fff;">Edit Account</span></router-link>
      
      </p>
  
    </div>
  </div><hr>
  <!-- Card -->
</div>

     `,
    methods: {
      //data
    }
}