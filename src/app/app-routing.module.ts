import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: '',
    loadChildren: () => import('./tabs/tabs.module').then(m => m.TabsPageModule)
  },
  { path: 'login', loadChildren: './login/login.module#LoginPageModule' },
  { path: 'tab5', loadChildren: './tab5/tab5.module#Tab5PageModule' },
  { path: 'nav', loadChildren: './tabs/tabs.module#TabsPageModule' },
  { path: 'cerrar-sesion', loadChildren: './cerrar-sesion/cerrar-sesion.module#CerrarSesionPageModule' }
  

];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
