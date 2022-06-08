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
      private klasemen: any;

    constructor(private httpClients: HttpClient) {

    }
     ngOnInit(): void {}

    getDataKlasemen(){
this.httpClients.get("http://localhost:8080/klasemen").subscribe((result:any)=>
{
  this.klasemen=result;
}


}

