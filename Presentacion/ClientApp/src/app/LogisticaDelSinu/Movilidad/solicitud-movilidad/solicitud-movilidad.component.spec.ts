import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SolicitudMovilidadComponent } from './solicitud-movilidad.component';

describe('SolicitudMovilidadComponent', () => {
  let component: SolicitudMovilidadComponent;
  let fixture: ComponentFixture<SolicitudMovilidadComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SolicitudMovilidadComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SolicitudMovilidadComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
