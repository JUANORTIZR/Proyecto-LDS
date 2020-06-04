import { Injectable, Inject } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { Utilidad } from '../LogisticaDelSinu/Models/utilidad';
import { Observable } from 'rxjs';
import { tap, catchError } from 'rxjs/operators';
const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};
@Injectable({
  providedIn: 'root'
})
export class UtilidadService {
  baseUrl: string;
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string,
    private handleErrorService: HandleHttpErrorService
  ) {
    this.baseUrl = baseUrl;
  }
  post(utilidad: Utilidad): Observable<Utilidad> {
    return this.http.post<Utilidad>(this.baseUrl + 'api/Utilidad', utilidad)
      .pipe(
        tap(_ => this.handleErrorService.log('datos enviados')),
        catchError(this.handleErrorService.handleError<Utilidad>('Registrar Utilidad', null))
      );
  }

  gets(): Observable<Utilidad[]> {
    return this.http.get<Utilidad[]>(this.baseUrl + 'api/Utilidad')
        .pipe(
            tap(_ => this.handleErrorService.log('datos enviados')),
            catchError(this.handleErrorService.handleError<Utilidad[]>('Consulta utilidad', null))
        );
  }
}
