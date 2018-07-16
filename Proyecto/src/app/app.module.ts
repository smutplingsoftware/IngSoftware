import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppComponent } from './app.component';
import { HomeComponent } from './home/home.component';
import { MatToolbarModule } from '@angular/material/toolbar';
import { MatCardModule } from '@angular/material/card';
import { MatListModule } from '@angular/material/list';
import { TruncatePipe } from './pipes/truncate.pipe';
import { ClientesComponent } from './clientes/clientes.component'

@Module({
    imports: [
        TypeOrmModule.forRoot({
            type: 'mysql',
            host: 'localhost',
            port: 3306,
            username: 'root',
            password: 'root',
            database: 'web',
            entities: [__dirname + '/../**/*.entity{.ts,.js}'],
            synchronize: true,
            ssl :true
        }),
        TypeOrmModule.forFeature([UsuarioEntity, AutorEntity, LibroEntity])
    ],
    controllers: [AppController, AutorController, LibroController, AutorizacionController, UsuarioController],
    providers: [AppService, AutorService, LibroService, UsuarioService],
})

@NgModule({
declarations: [
AppComponent,
HomeComponent, 
TruncatePipe, ClientesComponent
],
imports: [
BrowserModule,
MatToolbarModule,
MatCardModule, 
MatListModule 
],
providers: [],
bootstrap: [AppComponent]
})
export class AppModule { } 