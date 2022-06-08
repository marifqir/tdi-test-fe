import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'klasemen-web';
      products: any = []; // tambahkan baris ini sebagai variabel yang akan menampung data JSON

    // tambahkan dari sini
    constructor(private httpClient: HttpClient) {
        this.httpClient.get("http://localhost:8080/klasemen").subscribe(data =>{
            console.log(data);
            this.products = data;
        })
    }
}
