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
      private klasemen: any = [];

    constructor(private httpClients: HttpClient) {

    }
async ngOnInit() {
    try {
        const data = await this.rest.get(
            'http://localhost:8080/api-karyawan/karyawan'
        );
        this.dataKaryawan = data['data'];
        } catch (error) {
            console.log(error);
        }
    }

    async delete(id){
        await this.rest.delete(
        `http://localhost:8080/api-karyawan/hapus-karyawan/${id}`
        );
        this.ngOnInit();
    }

}
}
