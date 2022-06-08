import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ApiService } from './api.service';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent  implements OnInit{
  title = 'klasemen-web';
      klasemen: any;

   constructor(private service: ApiService) {}



      ngOnInit() {

          this.service.getPosts().subscribe(response => {

              this.klasemen = response;

            });

      }}

