import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';



@Injectable({
  providedIn: 'root'
})
export class ApiService {

  private url = 'http://localhost:8080/klasemen';



  constructor(private httpClient: HttpClient) { }



  getPosts(){

    return this.httpClient.get(this.url);

  }
}
