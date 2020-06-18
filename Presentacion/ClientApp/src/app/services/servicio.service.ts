import { Injectable, Inject, EventEmitter } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { Servicio } from '../LogisticaDelSinu/Models/servicio';
import { Observable } from 'rxjs';
import { tap, catchError } from 'rxjs/operators';
import * as singnalR from '@aspnet/signalr';

const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};
@Injectable({
  providedIn: 'root'
})
export class ServicioService {

 baseUrl: string; 
 private hubConnection: singnalR.HubConnection;
  signalRecived = new EventEmitter<Servicio>();
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
    this.hubConnection.on("servicioRegistrado", (data: Servicio) => {
      this.signalRecived.emit(data);
    });
  }
 

  post(servicio: Servicio): Observable<Servicio> {
    return this.http.post<Servicio>(this.baseUrl + 'api/Servicio', servicio)
      .pipe(
        tap(_ => this.handleErrorService.log('datos enviados')),
        catchError(this.handleErrorService.handleError<Servicio>('Registrar Servicio', null))
      );
  }

  gets(): Observable<Servicio[]> {
    return this.http.get<Servicio[]>(this.baseUrl + 'api/Servicio')
        .pipe(
            tap(_ => this.handleErrorService.log('datos enviados')),
            catchError(this.handleErrorService.handleError<Servicio[]>('Consulta Usuario', null))
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

  get(identificacion: string): Observable<Servicio> {
    const url = `${this.baseUrl + 'api/Servicio'}/${identificacion}`;
      return this.http.get<Servicio>(url,httpOptions)
      .pipe(
        tap(_ => this.handleErrorService.log('Identifiación enviada y servicio recibido')),
        catchError(this.handleErrorService.handleError<Servicio>("Consulta x id", null))
      );
  }

  put(servicio: Servicio): Observable<Servicio> {
    const url = `${this.baseUrl + 'api/Servicio'}/${servicio.idServicio}`;
    return this.http.put<Servicio>(url, servicio, httpOptions)
    .pipe(
      tap(_ => this.handleErrorService.log('datos enviados')),
      catchError(this.handleErrorService.handleError<Servicio>('Editar estado de servicio'))
    );
  }
}
