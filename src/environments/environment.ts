// This file can be replaced during build by using the `fileReplacements` array.
// `ng build --prod` replaces `environment.ts` with `environment.prod.ts`.
// The list of file replacements can be found in `angular.json`.

export const environment = {
  production: true,
  
    apiKey: '984e255723ed49a6a400ca94068aa962',
    apiUrl: 'https://newsapi.org/v2',

    firebase:{
      apiKey: "AIzaSyCXWyZegNWDDlHjX_FlYNL4Abxvfl1h-pE",
      authDomain: "proyectoconstruccion.firebaseapp.com",
      databaseURL: "https://proyectoconstruccion.firebaseio.com",
      projectId: "proyectoconstruccion",
      storageBucket: "proyectoconstruccion.appspot.com",
      messagingSenderId: "475817886699"
    },
};

/*
 * For easier debugging in development mode, you can import the following file
 * to ignore zone related error stack frames such as `zone.run`, `zoneDelegate.invokeTask`.
 *
 * This import should be commented out in production mode because it will have a negative impact
 * on performance if an error is thrown.
 */
// import 'zone.js/dist/zone-error';  // Included with Angular CLI.
