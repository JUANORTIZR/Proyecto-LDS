import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SolitudServicioComponent } from './solitud-servicio.component';

describe('SolitudServicioComponent', () => {
  let component: SolitudServicioComponent;
  let fixture: ComponentFixture<SolitudServicioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SolitudServicioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SolitudServicioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
