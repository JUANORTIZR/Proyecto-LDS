import { Injectable, Inject } from '@angular/core';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { HandleHttpErrorService } from '../@base/handle-http-error.service';
import { Usuario } from '../logisticaDelSinu/Models/usuario';
import { Observable } from 'rxjs';
import { tap, catchError } from 'rxjs/operators';
import { User } from '../seguridad/user';

const httpOptions = {
  headers: new HttpHeaders({ 'Content-Type': 'application/json' })
};
@Injectable({
  providedIn: 'root'
})
export class UsuarioService {

  baseUrl: string;
  constructor(
    private http: HttpClient,
    @Inject('BASE_URL') baseUrl: string,
    private handleErrorService: HandleHttpErrorService
  ) {
    this.baseUrl = baseUrl;
  }

  post(usuario: User): Observable<User> {
    return this.http.post<User>(this.baseUrl + 'api/Usuario', usuario)
      .pipe(
        tap(_ => this.handleErrorService.log('datos enviados')),
        catchError(this.handleErrorService.handleError<User>('Registrar Usuario', null))
      );
  }

  gets(): Observable<User[]> {
    return this.http.get<User[]>(this.baseUrl + 'api/Usuario')
        .pipe(
            tap(_ => this.handleErrorService.log('datos enviados')),
            catchError(this.handleErrorService.handleError<User[]>('Consulta Usuario', null))
        );
  }
  get(identificacion: string, tipoServicio : string): Observable<User> {
    const url = `${this.baseUrl + 'api/Usuario'}/${identificacion},${tipoServicio}`;
      return this.http.get<User>(url,httpOptions)
      .pipe(
        tap(_ => this.handleErrorService.log('Identifiación enviada y usuario recibido')),
        catchError(this.handleErrorService.handleError<User>("Consulta x id", null))
      );
  }

  put(usuario: User): Observable<User> {
    const url = `${this.baseUrl + 'api/Usuario'}/${usuario.identificacion}`;
    return this.http.put<User>(url, usuario, httpOptions)
    .pipe(
      tap(_ => this.handleErrorService.log('datos enviados')),
      catchError(this.handleErrorService.handleError<User>('Editar usuario'))
    );
  }

}
