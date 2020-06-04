import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UtilidadRegistroComponent } from './utilidad-registro.component';

describe('UtilidadRegistroComponent', () => {
  let component: UtilidadRegistroComponent;
  let fixture: ComponentFixture<UtilidadRegistroComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UtilidadRegistroComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UtilidadRegistroComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
