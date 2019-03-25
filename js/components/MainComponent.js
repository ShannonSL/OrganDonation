
export default {
    template: `
   
<!-- Full Page Intro -->
  <div class="view">
    <video class="video-intro" poster="images/hands.jpg">
      <source src="images/hands.jpg" type="video/mp4">
    </video>
    <!-- Mask & flexbox options-->
    <div class="d-flex">
      <!-- Content -->
      <div class="container my-container wow fadeIn" style="height:50%;">
        <!--Grid row-->
        <div class="row wow fadeIn">
          <!--Grid column-->
          <div class="col-md-12 mb-4 white-text wow fadeIn call-to-action">
            <h3 class="action-header">Reduce. Reuse. Recycle...</h3>
            <h3 class="action-sub-header">Yourself.</h3>
          
            <h4 class="action-text">Did you know that you contain renewable materials?
            Have you ever thought of recycling... yourself?<br>
            In the time it took you to read this, you could have already signed up :o.<br>
             All you need is your Ontario health card.<br>
            You could do it anywhere: online, or at Service Canada centre when you get your drivers license renewed.<br>
            <i>Do you have 30 seconds to save a life?</i>
            You recycle everything else.... <b>why not your organs?</b></h4>
            <pulse-button><a href="#">Register Now</a></pulse-button>
          </div>
        </div>
        
      </div>
     
    </div>
   
  </div>


    `,

    data() {
        return {
    
        }
    },


    methods: {
   
    },
    components: {
      
    }
}