import { Component, OnInit } from '@angular/core';
import { NoticiasService } from 'src/app/services/noticias.service';
import { Article } from 'src/app/interfaces/interfaces';

import { AngularFireAuth } from '@angular/fire/auth';

@Component({
  selector: 'app-tab1',
  templateUrl: 'tab1.page.html',
  styleUrls: ['tab1.page.scss']
})
export class Tab1Page implements OnInit {

  noticias: Article[] = [];

  constructor(private noticiasService: NoticiasService, public afAuth: AngularFireAuth) { }


  ngOnInit() {
    this.noticiasService.getTopHeadlines()
      .subscribe(resp => { console.log('noticas', resp);
    this.noticias.push( ...resp.articles);
  })
}
}