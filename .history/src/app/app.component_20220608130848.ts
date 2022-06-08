import { Component } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { ApiService } from './api.service';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'klasemen-web';
      klasemen: any = [];

    constructor(private api: ApiService) {

    }
    async dataKlasemen() {
      await this.api.getDataKlasemen().subscribe((data) => {
          console.log(data)
      })
    }
}
