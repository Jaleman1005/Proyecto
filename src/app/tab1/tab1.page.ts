import { Component, OnInit } from '@angular/core';
import { NoticiasService } from 'src/app/services/noticias.service';
import { Article } from 'src/app/interfaces/interfaces';
import { UserServiceService } from '../services/user-service.service';
import { AngularFireAuth } from '@angular/fire/auth';

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page implements OnInit {

  noticias: Article[] = [];

  constructor(public userService: UserServiceService, public afAuth: AngularFireAuth, private noticiasService: NoticiasService) { }


  ngOnInit() {
    this.noticiasService.getTopHeadlines()
      .subscribe(resp => { console.log('noticas', resp);
    this.noticias.push( ...resp.articles);
  })
}
}