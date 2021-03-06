import { Component } from '@angular/core';
import { ToastController } from '@ionic/angular';

import { Platform,MenuController } from '@ionic/angular';
import { SplashScreen } from '@ionic-native/splash-screen/ngx';
import { StatusBar } from '@ionic-native/status-bar/ngx';
import { AngularFireAuth } from '@angular/fire/auth';
import { Router,RouterEvent, NavigationEnd  } from '@angular/router';



@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html'
})
export class AppComponent {

  public isConnected:boolean;

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

  initializeApp() {
    this.platform.ready().then(() => {
      this.statusBar.styleDefault();
      this.splashScreen.hide();
    });
  }
  
  pages = [
    {
      title: 'Home',
      url: '/nav',
      icon: 'home'
    },
    {
      title: 'Cerrar sesión',
      url: '/cerrar-sesion',
      icon: 'open'
    }

 
  ];

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

}
