import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ModificarSolicitudComponent } from './modificar-solicitud.component';

describe('ModificarSolicitudComponent', () => {
  let component: ModificarSolicitudComponent;
  let fixture: ComponentFixture<ModificarSolicitudComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ModificarSolicitudComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ModificarSolicitudComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
