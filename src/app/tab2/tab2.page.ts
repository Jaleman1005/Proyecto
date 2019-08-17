import { Component, ViewChild, OnInit } from '@angular/core';
import { IonSegment } from '@ionic/angular';
import { Article } from '../../../Proyecto/src/app/interfaces/interfaces';
import { NoticiasService } from '../services/noticias.service';



@Component({
  selector: 'app-tab2',
  templateUrl: 'tab2.page.html',
  styleUrls: ['tab2.page.scss']
})

export class Tab2Page implements OnInit {



  categorias = ['business', 'entertainment', 'general', 'health', 'science', 'sports', 'technology', ];
  noticias: Article[] = [];


  constructor( private noticiasService: NoticiasService ) {

  }


  ngOnInit() {

  }

}