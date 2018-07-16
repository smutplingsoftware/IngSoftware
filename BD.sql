/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     14/7/2018 11:11:11                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BICICLETA') and o.name = 'FK_BICICLET_RELATIONS_ESTACION')
alter table BICICLETA
   drop constraint FK_BICICLET_RELATIONS_ESTACION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CLIENTE') and o.name = 'FK_CLIENTE_RELATIONS_USERS')
alter table CLIENTE
   drop constraint FK_CLIENTE_RELATIONS_USERS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DIA') and o.name = 'FK_DIA_RELATIONS_ESTACION')
alter table DIA
   drop constraint FK_DIA_RELATIONS_ESTACION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTACION_SERVICIO') and o.name = 'FK_ESTACION_RELATIONS_SERVICIO')
alter table ESTACION_SERVICIO
   drop constraint FK_ESTACION_RELATIONS_SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('ESTACION_SERVICIO') and o.name = 'FK_ESTACION_RELATIONS_ESTACION')
alter table ESTACION_SERVICIO
   drop constraint FK_ESTACION_RELATIONS_ESTACION
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('HORA') and o.name = 'FK_HORA_RELATIONS_DIA')
alter table HORA
   drop constraint FK_HORA_RELATIONS_DIA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('MANTENIMIENTO') and o.name = 'FK_MANTENIM_RELATIONS_BICICLET')
alter table MANTENIMIENTO
   drop constraint FK_MANTENIM_RELATIONS_BICICLET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PAGOS') and o.name = 'FK_PAGOS_RELATIONS_CLIENTE')
alter table PAGOS
   drop constraint FK_PAGOS_RELATIONS_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESERVA') and o.name = 'FK_RESERVA_RELATIONS_BICICLET')
alter table RESERVA
   drop constraint FK_RESERVA_RELATIONS_BICICLET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('RESERVA') and o.name = 'FK_RESERVA_RELATIONS_CLIENTE')
alter table RESERVA
   drop constraint FK_RESERVA_RELATIONS_CLIENTE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('USERS') and o.name = 'FK_USERS_RELATIONS_CLIENTE')
alter table USERS
   drop constraint FK_USERS_RELATIONS_CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BICICLETA')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index BICICLETA.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BICICLETA')
            and   type = 'U')
   drop table BICICLETA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CLIENTE')
            and   name  = 'RELATIONSHIP_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index CLIENTE.RELATIONSHIP_12_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CLIENTE')
            and   type = 'U')
   drop table CLIENTE
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DIA')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index DIA.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DIA')
            and   type = 'U')
   drop table DIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTACION')
            and   type = 'U')
   drop table ESTACION
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTACION_SERVICIO')
            and   name  = 'RELATIONSHIP_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTACION_SERVICIO.RELATIONSHIP_8_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('ESTACION_SERVICIO')
            and   name  = 'RELATIONSHIP_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index ESTACION_SERVICIO.RELATIONSHIP_7_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ESTACION_SERVICIO')
            and   type = 'U')
   drop table ESTACION_SERVICIO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('HORA')
            and   name  = 'RELATIONSHIP_6_FK'
            and   indid > 0
            and   indid < 255)
   drop index HORA.RELATIONSHIP_6_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HORA')
            and   type = 'U')
   drop table HORA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('MANTENIMIENTO')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index MANTENIMIENTO.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MANTENIMIENTO')
            and   type = 'U')
   drop table MANTENIMIENTO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PAGOS')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PAGOS.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PAGOS')
            and   type = 'U')
   drop table PAGOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESERVA')
            and   name  = 'RELATIONSHIP_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESERVA.RELATIONSHIP_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('RESERVA')
            and   name  = 'RELATIONSHIP_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index RESERVA.RELATIONSHIP_9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('RESERVA')
            and   type = 'U')
   drop table RESERVA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SERVICIOS')
            and   type = 'U')
   drop table SERVICIOS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('USERS')
            and   name  = 'RELATIONSHIP_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index USERS.RELATIONSHIP_11_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('USERS')
            and   type = 'U')
   drop table USERS
go

/*==============================================================*/
/* Table: BICICLETA                                             */
/*==============================================================*/
create table BICICLETA (
   IDBICICLETA          int                  not null,
   IDESTACION           int                  not null,
   CODBICI              varchar(15)          null,
   MARCABICI            varchar(20)          null,
   COLORBICI            varchar(20)          null,
   TAMANOBICI           varchar(20)          null,
   ESTADOBICI           bit                  null,
   constraint PK_BICICLETA primary key (IDBICICLETA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_4_FK on BICICLETA (IDESTACION ASC)
go

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   IDCLIENTE            int                  not null,
   IDUSER               int                  not null,
   NOMBRESCLI           varchar(20)          null,
   APELLIDOSCLI         varchar(20)          null,
   TELEFONOCLI          varchar(10)          null,
   DIRECCIONCLI         varchar(15)          null,
   CEDULACLI            varchar(20)          null,
   TARJETACREDITOCLI    varchar(15)          null,
   ESTADOCLI            bit                  null,
   constraint PK_CLIENTE primary key (IDCLIENTE)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_12_FK on CLIENTE (IDUSER ASC)
go

/*==============================================================*/
/* Table: DIA                                                   */
/*==============================================================*/
create table DIA (
   IDDIA                int                  not null,
   IDESTACION           int                  null,
   DIA                  varchar(10)          null,
   constraint PK_DIA primary key (IDDIA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_5_FK on DIA (IDESTACION ASC)
go

/*==============================================================*/
/* Table: ESTACION                                              */
/*==============================================================*/
create table ESTACION (
   IDESTACION           int                  not null,
   NOMBREEST            varchar(20)          null,
   LOCALIZACIONEST      varchar(20)          null,
   ESTADOEST            bit                  null,
   constraint PK_ESTACION primary key (IDESTACION)
)
go

/*==============================================================*/
/* Table: ESTACION_SERVICIO                                     */
/*==============================================================*/
create table ESTACION_SERVICIO (
   IDESTSERV            int                  not null,
   IDESTACION           int                  not null,
   IDSERVICIO           int                  not null,
   constraint PK_ESTACION_SERVICIO primary key (IDESTSERV)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_7_FK on ESTACION_SERVICIO (IDSERVICIO ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_8_FK on ESTACION_SERVICIO (IDESTACION ASC)
go

/*==============================================================*/
/* Table: HORA                                                  */
/*==============================================================*/
create table HORA (
   IDHORA               int                  not null,
   IDDIA                int                  null,
   HORAINICIAL          datetime             null,
   HORAFINAL            datetime             null,
   constraint PK_HORA primary key (IDHORA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_6_FK on HORA (IDDIA ASC)
go

/*==============================================================*/
/* Table: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO (
   IDMANTENIMIENTO      int                  not null,
   IDBICICLETA          int                  null,
   HISTORICOMANTE       varchar(50)          null,
   constraint PK_MANTENIMIENTO primary key (IDMANTENIMIENTO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_3_FK on MANTENIMIENTO (IDBICICLETA ASC)
go

/*==============================================================*/
/* Table: PAGOS                                                 */
/*==============================================================*/
create table PAGOS (
   IDPAGO               int                  not null,
   IDCLIENTE            int                  not null,
   VALORPAGO            float                null,
   CONCEPTOPAGO         varchar(50)          null,
   constraint PK_PAGOS primary key (IDPAGO)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_2_FK on PAGOS (IDCLIENTE ASC)
go

/*==============================================================*/
/* Table: RESERVA                                               */
/*==============================================================*/
create table RESERVA (
   IDRESERVA            int                  not null,
   IDCLIENTE            int                  not null,
   IDBICICLETA          int                  not null,
   HORAFINAL            datetime             null,
   HORAINICIAL          datetime             null,
   FECHA                datetime             null,
   constraint PK_RESERVA primary key (IDRESERVA)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_9_FK on RESERVA (IDCLIENTE ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_10_FK on RESERVA (IDBICICLETA ASC)
go

/*==============================================================*/
/* Table: SERVICIOS                                             */
/*==============================================================*/
create table SERVICIOS (
   IDSERVICIO           int                  not null,
   NOMBRESERV           varchar(20)          null,
   DESCRIPCION          varchar(50)          null,
   constraint PK_SERVICIOS primary key (IDSERVICIO)
)
go

/*==============================================================*/
/* Table: USERS                                                 */
/*==============================================================*/
create table USERS (
   IDUSER               int                  not null,
   IDCLIENTE            int                  null,
   USUARIO              varchar(10)          null,
   CONTRASENA           varchar(50)          null,
   ROL                  varchar(10)          null,
   constraint PK_USERS primary key (IDUSER)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/




create nonclustered index RELATIONSHIP_11_FK on USERS (IDCLIENTE ASC)
go

alter table BICICLETA
   add constraint FK_BICICLET_RELATIONS_ESTACION foreign key (IDESTACION)
      references ESTACION (IDESTACION)
go

alter table CLIENTE
   add constraint FK_CLIENTE_RELATIONS_USERS foreign key (IDUSER)
      references USERS (IDUSER)
go

alter table DIA
   add constraint FK_DIA_RELATIONS_ESTACION foreign key (IDESTACION)
      references ESTACION (IDESTACION)
go

alter table ESTACION_SERVICIO
   add constraint FK_ESTACION_RELATIONS_SERVICIO foreign key (IDSERVICIO)
      references SERVICIOS (IDSERVICIO)
go

alter table ESTACION_SERVICIO
   add constraint FK_ESTACION_RELATIONS_ESTACION foreign key (IDESTACION)
      references ESTACION (IDESTACION)
go

alter table HORA
   add constraint FK_HORA_RELATIONS_DIA foreign key (IDDIA)
      references DIA (IDDIA)
go

alter table MANTENIMIENTO
   add constraint FK_MANTENIM_RELATIONS_BICICLET foreign key (IDBICICLETA)
      references BICICLETA (IDBICICLETA)
go

alter table PAGOS
   add constraint FK_PAGOS_RELATIONS_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
go

alter table RESERVA
   add constraint FK_RESERVA_RELATIONS_BICICLET foreign key (IDBICICLETA)
      references BICICLETA (IDBICICLETA)
go

alter table RESERVA
   add constraint FK_RESERVA_RELATIONS_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
go

alter table USERS
   add constraint FK_USERS_RELATIONS_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
go

