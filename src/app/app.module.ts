import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { AppComponent } from './app.component';
import { CspAllowComponent } from './csp-allow/csp-allow.component';
import { CspDenyComponent } from './csp-deny/csp-deny.component';

const routes: Routes = [
  { path: 'csp-allow', component: CspAllowComponent },
  { path: 'csp-deny', component: CspDenyComponent }
];

@NgModule({
  declarations: [
    AppComponent,
    CspAllowComponent,
    CspDenyComponent
  ],
  imports: [
    RouterModule.forRoot(routes),
    BrowserModule
  ],
  exports: [RouterModule],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
