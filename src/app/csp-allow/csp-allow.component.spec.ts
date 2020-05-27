import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CspAllowComponent } from './csp-allow.component';

describe('CspAllowComponent', () => {
  let component: CspAllowComponent;
  let fixture: ComponentFixture<CspAllowComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CspAllowComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CspAllowComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
