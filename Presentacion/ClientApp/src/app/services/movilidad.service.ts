import { Injectable, Inject, EventEmitter } from '@angular/core';
import { HttpHeaders, HttpClient } from '@angular/common/http';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { Movilidad } from '../LogisticaDelSinu/Models/movilidad';
import { Observable } from 'rxjs';
import { tap, catchError } from 'rxjs/operators';
import * as singnalR from '@aspnet/signalr';
const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};

@Injectable({
  providedIn: 'root'
})
export class MovilidadService {
  baseUrl: string;
  private hubConnection: singnalR.HubConnection;
  signalRecived = new EventEmitter<Movilidad>();
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string,
    private handleErrorService: HandleHttpErrorService
  ) {
    this.baseUrl = baseUrl;
    this.buildConnection();
    this.startConnection();
  }

  private buildConnection = () => {
    this.hubConnection = new singnalR.HubConnectionBuilder()
    .withUrl(this.baseUrl + "signalHub")
    .build();
  }
  private startConnection = () => {
    this.hubConnection
    .start()
    .then(() => {
      console.log("Iniciando signal");
      this.registerSignalEvents();
    })
    .catch(err => {
      console.log("Error en el signal" + err);
      setTimeout(function() {
        this.startConnection();
      }, 3000);
    });
  }
  private registerSignalEvents(){
    this.hubConnection.on("movilidadRegistrada", (data: Movilidad) => {
      this.signalRecived.emit(data);
    });
  }

  post(movilidad: Movilidad): Observable<Movilidad> {
    return this.http.post<Movilidad>(this.baseUrl + 'api/MovilidadAcademica', movilidad)
      .pipe(
        tap(_ => this.handleErrorService.log('datos enviados')),
        catchError(this.handleErrorService.handleError<Movilidad>('Registrar Servicio', null))
      );
  }

  gets(): Observable<Movilidad[]> {
    return this.http.get<Movilidad[]>(this.baseUrl + 'api/MovilidadAcademica')
        .pipe(
            tap(_ => this.handleErrorService.log('datos enviados')),
            catchError(this.handleErrorService.handleError<Movilidad[]>('Consulta Servico Movilidad', null))
        );
  }

  get(identificacion: string): Observable<Movilidad> {
    const url = `${this.baseUrl + 'api/MovilidadAcademica'}/${identificacion}`;
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
    const url = `${this.baseUrl + 'api/MovilidadAcademica'}/${movilidad.idMovilidad}`;
    return this.http.put<Movilidad>(url, movilidad, httpOptions)
    .pipe(
      tap(_ => this.handleErrorService.log('datos enviados')),
      catchError(this.handleErrorService.handleError<Movilidad>('Editar estado de servicio'))
    );
  }

}
