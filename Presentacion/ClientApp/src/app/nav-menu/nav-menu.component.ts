import { Component } from '@angular/core';
import { NgbAccordionConfig } from '@ng-bootstrap/ng-bootstrap';
import { User } from '../seguridad/user';
import { Router } from '@angular/router';
import { AuthenticationService } from '../services/authentication.service';


@Component({
  selector: 'app-nav-menu',
  templateUrl: './nav-menu.component.html',
  styleUrls: ['./nav-menu.component.css'],
  providers: [NgbAccordionConfig]
})
export class NavMenuComponent {
  isExpanded = false;
  show: boolean = false;
  show2: boolean = false;
  show3: boolean = false;
  show4: boolean = false;
  show5: boolean = false;
  currentUser: User;

  constructor(

    private router: Router,

    private authenticationService: AuthenticationService

  ) {

    this.authenticationService.currentUser.subscribe(x => this.currentUser = x);
    var usuario = (JSON.parse(localStorage.getItem('currentUser')));
    
  }
  collapse() {
    this.isExpanded = false;
  }

  toggle() {
    this.isExpanded = !this.isExpanded;
  }

  logout() {

    this.authenticationService.logout();
    
    this.router.navigate(['/login']);
    
    }
}
