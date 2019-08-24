import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  { path: '', loadChildren: './login/login.module#LoginPageModule' },
  { path: 'nav', loadChildren: './tabs/tabs.module#TabsPageModule' },
  { path: 'tab5', loadChildren: './tab5/tab5.module#Tab5PageModule' },
  { path: 'cerrar-sesion', loadChildren: './cerrar-sesion/cerrar-sesion.module#CerrarSesionPageModule' },
  { path: 'terminos', loadChildren: './terminos/terminos.module#TerminosPageModule' }

];
@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule {}
