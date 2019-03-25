import MainComponent from './components/MainComponent.js';
import LoginComponent from './components/LoginComponent.js';
import UserListsComponent from './components/UserListsComponent.js';
import EditComponent from './components/EditComponent.js';
import LearnMoreComponent from './components/LearnMoreComponent.js';
import RecyclaBallComponent from './components/RecyclaBallComponent.js';




let router = new VueRouter({

  routes: [{
      path: '/',
      redirect: {
        name: "main"
      }
    },
    {
      path: '/home',
      redirect: {
        name: "main"
      }
    },
    {
      path: '/main',
      name: "main",
      component: MainComponent
    },


    {
      path: '/login',
      name: "login",
      component: LoginComponent,
      props: true
    },

    {
      path: '/learnmore',
      name: "Learn More",
      component: LearnMoreComponent
      
    },

    {
      path: '/recyclaball',
      name: "Rycycla-Ball",
      component: RecyclaBallComponent
      
    },

    {
      path: '/userlists',
      name: "userlists",
      component: UserListsComponent,
      beforeEnter: (to, from, next) => {
        if (localStorage.getItem("authenticated") == "true") {
          next();
        } else {
          next("/login");
        }

      }
    },
    {
      path: '/edit',
      name: "edit",
      component: EditComponent,
      props: true,
      beforeEnter: (to, from, next) => {
        if (localStorage.getItem("authenticated") == "true") {
          next();
        } else {
          next("/login");
        }
      }
    },




  ]
});

const vm = new Vue({

  data: {
    authenticated: false,
    user: [],


    navlist: [{
        name: "HOME",
        url: "main",
        
      },


    ]
  },



  created: function () {
    if (localStorage.getItem("authenticated") == "true") {
      this.authenticated = true;

    }

  },


  methods: {
    logout() {
      // delete local session
      localStorage.setItem("authenticated", false);
      localStorage.setItem("adultauthenticated", false);
      localStorage.removeItem("cachedUser");
      localStorage.removeItem("authenticated");
      localStorage.removeItem("currentUserID");


      this.authenticated = false;
      // push user back to login page
      this.$router.push({
        path: "/main"
      });
    },
    setAuthenticated(status, data) {
      if (status) {
        this.authenticated = status;
      }
      this.user = data;
      // console.log(data);
    },


  },




  router: router
}).$mount("#app");


$('#toggle').click(function () {
  $(this).toggleClass('active');
  $('#overlay').toggleClass('open');
});

//wow init
new WOW().init();