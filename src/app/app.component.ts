import { Component } from '@angular/core';
import { ToastController } from '@ionic/angular';

import { Platform,MenuController } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';
import { AngularFireAuth } from '@angular/fire/auth';
import { Router,RouterEvent, NavigationEnd  } from '@angular/router';


export class AppComponent {
  constructor(
    private platform: Platform,
    private splashScreen: SplashScreen,
    private statusBar: StatusBar,
    public afAuth: AngularFireAuth,
    private router: Router,
    private menuCtrl: MenuController,
    public toastController: ToastController
  ) {
    this.initializeApp();
  }

  pages = [
    {
      title: 'Home',
      url: '/nav',
      icon: 'home'
    },{
      title: 'Planes',
      url: '/nav/tabs/tab2',
      icon: 'md-calendar'
    },{
      title: 'Mis invitaciones',
      url: '/invitaciones-familiares',
      icon: 'mail'
    },
    {
      title: 'Cerrar sesión',
      url: '/cerrar-sesion',
      icon: 'open'
    }
  ];
  
  initializeApp() {
    this.platform.ready().then(() => {
      this.statusBar.styleDefault();
      this.splashScreen.hide();
    });
  }
  
  ngOnInit() {
  
  
  
  
    this.afAuth.authState.subscribe(user => {
      if (!user) {
        if(this.router.url != '/'        )
        window.location.href = "/";
      }
    });
    this.router.events.subscribe((event: RouterEvent) => {
      if (event instanceof NavigationEnd && event.url === '/') {
        this.menuCtrl.enable(false);
      }
    }); 
    this.router.events.subscribe((event: RouterEvent) => {
      if (event instanceof NavigationEnd) {
        this.pages.map( p => {
          return p['active'] = (event.url === p.url);
        });
      }
    });
  
  }
  
  @Component({
    selector: 'app-root',
    templateUrl: 'app.component.html',
    styleUrls: ['app.component.scss']
  })

}
