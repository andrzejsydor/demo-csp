import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CspAllowComponent } from './csp-allow/csp-allow.component';
import { CspDenyComponent } from './csp-deny/csp-deny.component';
import { AngularResourcesComponent } from './angular-resources/angular-resources.component';

const routes: Routes = [
  { path: 'csp-allow', component: CspAllowComponent },
  { path: 'csp-deny', component: CspDenyComponent },
  { path: 'angular-resources', component: AngularResourcesComponent }
];

@NgModule({
  declarations: [
    AppComponent,
    CspAllowComponent,
    CspDenyComponent,
    AngularResourcesComponent
  ],
  imports: [
    RouterModule.forRoot(routes),
    BrowserModule,
    AppRoutingModule
  ],
  exports: [RouterModule],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
