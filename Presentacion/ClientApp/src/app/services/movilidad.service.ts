import { Injectable, Inject } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { Movilidad } from '../LogisticaDelSinu/Models/movilidad';
import { Observable } from 'rxjs';
import { tap, catchError } from 'rxjs/operators';

const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Injectable({
  providedIn: 'root'
})
export class MovilidadService {
  baseUrl: string;
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string,
    private handleErrorService: HandleHttpErrorService
  ) {
    this.baseUrl = baseUrl;
  }


  post(movilidad: Movilidad): Observable<Movilidad> {
    return this.http.post<Movilidad>(this.baseUrl + 'api/Movilidad', movilidad)
      .pipe(
        tap(_ => this.handleErrorService.log('datos enviados')),
        catchError(this.handleErrorService.handleError<Movilidad>('Registrar Servicio', null))
      );
  }

  gets(): Observable<Movilidad[]> {
    return this.http.get<Movilidad[]>(this.baseUrl + 'api/Movilidad')
        .pipe(
            tap(_ => this.handleErrorService.log('datos enviados')),
            catchError(this.handleErrorService.handleError<Movilidad[]>('Consulta Servico Movilidad', null))
        );
  }

  get(identificacion: string): Observable<Movilidad> {
    const url = `${this.baseUrl + 'api/Movilidad'}/${identificacion}`;
      return this.http.get<Movilidad>(url,httpOptions)
      .pipe(
        tap(_ => this.handleErrorService.log('Identifiación enviada y servicio recibido')),
        catchError(this.handleErrorService.handleError<Movilidad>("Consulta x id", null))
      );
  }

  getCantidad(identificacion:string):Observable<number> {
    const url = `${this.baseUrl + 'api/ObtenerSuma'}/${identificacion}`;
    return this.http.get<number>(url,httpOptions)
    .pipe(
      tap(_ => this.handleErrorService.log('datos enviados')),
      catchError(this.handleErrorService.handleError<number>('Obtener codigo', null))

    );
  }

  put(movilidad: Movilidad): Observable<Movilidad> {
    const url = `${this.baseUrl + 'api/Movilidad'}/${movilidad.idMovilidad}`;
    return this.http.put<Movilidad>(url, movilidad, httpOptions)
    .pipe(
      tap(_ => this.handleErrorService.log('datos enviados')),
      catchError(this.handleErrorService.handleError<Movilidad>('Editar estado de servicio'))
    );
  }

}
