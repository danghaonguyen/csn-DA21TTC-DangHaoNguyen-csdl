/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     26/11/2023 7:14:12 CH                        */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO') and o.name = 'FK_CO_CO_VIEN_CHU')
alter table CO
   drop constraint FK_CO_CO_VIEN_CHU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO') and o.name = 'FK_CO_CO2_PHIEU_DA')
alter table CO
   drop constraint FK_CO_CO2_PHIEU_DA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CO') and o.name = 'FK_CO_CO3_TIEU_CHI')
alter table CO
   drop constraint FK_CO_CO3_TIEU_CHI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DAM_NHAN') and o.name = 'FK_DAM_NHAN_DAM_NHAN_VIEN_CHU')
alter table DAM_NHAN
   drop constraint FK_DAM_NHAN_DAM_NHAN_VIEN_CHU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DAM_NHAN') and o.name = 'FK_DAM_NHAN_DAM_NHAN2_NHIEM_VU')
alter table DAM_NHAN
   drop constraint FK_DAM_NHAN_DAM_NHAN2_NHIEM_VU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIU') and o.name = 'FK_GIU_GIU_VIEN_CHU')
alter table GIU
   drop constraint FK_GIU_GIU_VIEN_CHU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('GIU') and o.name = 'FK_GIU_GIU2_CHUC_VU')
alter table GIU
   drop constraint FK_GIU_GIU2_CHUC_VU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THUOC') and o.name = 'FK_THUOC_THUOC_DON_VI_C')
alter table THUOC
   drop constraint FK_THUOC_THUOC_DON_VI_C
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('THUOC') and o.name = 'FK_THUOC_THUOC2_VIEN_CHU')
alter table THUOC
   drop constraint FK_THUOC_THUOC2_VIEN_CHU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TIEU_CHI_DANH_GIA') and o.name = 'FK_TIEU_CHI_BAO_GOM_LOAI_TIE')
alter table TIEU_CHI_DANH_GIA
   drop constraint FK_TIEU_CHI_BAO_GOM_LOAI_TIE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XET_DUYET') and o.name = 'FK_XET_DUYE_XET_DUYET_VIEN_CHU')
alter table XET_DUYET
   drop constraint FK_XET_DUYE_XET_DUYET_VIEN_CHU
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XET_DUYET') and o.name = 'FK_XET_DUYE_XET_DUYET_CAP_DANH')
alter table XET_DUYET
   drop constraint FK_XET_DUYE_XET_DUYET_CAP_DANH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('XET_DUYET') and o.name = 'FK_XET_DUYE_XET_DUYET_XEP_LOAI')
alter table XET_DUYET
   drop constraint FK_XET_DUYE_XET_DUYET_XEP_LOAI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CAP_DANH_GIA')
            and   type = 'U')
   drop table CAP_DANH_GIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHUC_VU')
            and   type = 'U')
   drop table CHUC_VU
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO')
            and   name  = 'CO3_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO.CO3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO')
            and   name  = 'CO2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO.CO2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CO')
            and   name  = 'CO_FK'
            and   indid > 0
            and   indid < 255)
   drop index CO.CO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CO')
            and   type = 'U')
   drop table CO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DAM_NHAN')
            and   name  = 'DAM_NHAN2_FK'
            and   indid > 0
            and   indid < 255)
   drop index DAM_NHAN.DAM_NHAN2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DAM_NHAN')
            and   name  = 'DAM_NHAN_FK'
            and   indid > 0
            and   indid < 255)
   drop index DAM_NHAN.DAM_NHAN_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DAM_NHAN')
            and   type = 'U')
   drop table DAM_NHAN
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DON_VI_CONG_TAC')
            and   type = 'U')
   drop table DON_VI_CONG_TAC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIU')
            and   name  = 'GIU2_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIU.GIU2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('GIU')
            and   name  = 'GIU_FK'
            and   indid > 0
            and   indid < 255)
   drop index GIU.GIU_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('GIU')
            and   type = 'U')
   drop table GIU
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAI_TIEU_CHI')
            and   type = 'U')
   drop table LOAI_TIEU_CHI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NHIEM_VU')
            and   type = 'U')
   drop table NHIEM_VU
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEU_DANH_GIA')
            and   type = 'U')
   drop table PHIEU_DANH_GIA
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THUOC')
            and   name  = 'THUOC2_FK'
            and   indid > 0
            and   indid < 255)
   drop index THUOC.THUOC2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('THUOC')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index THUOC.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('THUOC')
            and   type = 'U')
   drop table THUOC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('TIEU_CHI_DANH_GIA')
            and   name  = 'BAO_GOM_FK'
            and   indid > 0
            and   indid < 255)
   drop index TIEU_CHI_DANH_GIA.BAO_GOM_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TIEU_CHI_DANH_GIA')
            and   type = 'U')
   drop table TIEU_CHI_DANH_GIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('VIEN_CHUC')
            and   type = 'U')
   drop table VIEN_CHUC
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XEP_LOAI')
            and   type = 'U')
   drop table XEP_LOAI
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XET_DUYET')
            and   name  = 'XET_DUYET3_FK'
            and   indid > 0
            and   indid < 255)
   drop index XET_DUYET.XET_DUYET3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XET_DUYET')
            and   name  = 'XET_DUYET2_FK'
            and   indid > 0
            and   indid < 255)
   drop index XET_DUYET.XET_DUYET2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('XET_DUYET')
            and   name  = 'XET_DUYET_FK'
            and   indid > 0
            and   indid < 255)
   drop index XET_DUYET.XET_DUYET_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('XET_DUYET')
            and   type = 'U')
   drop table XET_DUYET
go

/*==============================================================*/
/* Table: CAP_DANH_GIA                                          */
/*==============================================================*/
create table CAP_DANH_GIA (
   MA_CDG               varchar(5)           not null,
   TEN_CDG              varchar(50)          null,
   constraint PK_CAP_DANH_GIA primary key nonclustered (MA_CDG)
)
go
/*== Doi kieu du lieu thuoc tinh TEN_CDG cua TABLE: CAP_DANH_GIA */
alter table CAP_DANH_GIA alter column TEN_CDG nvarchar(50) null

/*==============================================================*/
/* Table: CHUC_VU                                               */
/*==============================================================*/
create table CHUC_VU (
   MA_CV                varchar(5)           not null,
   TEN_CV               varchar(50)          null,
   constraint PK_CHUC_VU primary key nonclustered (MA_CV)
)
go
/*== Doi kieu du lieu thuoc tinh TEN_CV cua TABLE: CHUC_VU */
alter table CHUC_VU alter column TEN_CV nvarchar(50) null


/*==============================================================*/
/* Table: CO                                                    */
/*==============================================================*/
create table CO (
   MA_VC                varchar(5)           not null,
   MA_PDG               varchar(5)           not null,
   MA_TC                varchar(5)           not null,
   constraint PK_CO primary key (MA_VC, MA_PDG, MA_TC)
)
go

/*==============================================================*/
/* Index: CO_FK                                                 */
/*==============================================================*/
create index CO_FK on CO (
MA_VC ASC
)
go

/*==============================================================*/
/* Index: CO2_FK                                                */
/*==============================================================*/
create index CO2_FK on CO (
MA_PDG ASC
)
go

/*==============================================================*/
/* Index: CO3_FK                                                */
/*==============================================================*/
create index CO3_FK on CO (
MA_TC ASC
)
go

/*==============================================================*/
/* Table: DAM_NHAN                                              */
/*==============================================================*/
create table DAM_NHAN (
   MA_VC                varchar(5)           not null,
   MA_NV                varchar(5)           not null,
   constraint PK_DAM_NHAN primary key (MA_VC, MA_NV)
)
go

/*==============================================================*/
/* Index: DAM_NHAN_FK                                           */
/*==============================================================*/
create index DAM_NHAN_FK on DAM_NHAN (
MA_VC ASC
)
go

/*==============================================================*/
/* Index: DAM_NHAN2_FK                                          */
/*==============================================================*/
create index DAM_NHAN2_FK on DAM_NHAN (
MA_NV ASC
)
go

/*==============================================================*/
/* Table: DON_VI_CONG_TAC                                       */
/*==============================================================*/
create table DON_VI_CONG_TAC (
   MA_DV                varchar(5)           not null,
   TEN_DV               varchar(50)          null,
   constraint PK_DON_VI_CONG_TAC primary key nonclustered (MA_DV)
)
go

/*== Doi kieu du lieu thuoc tinh TEN_DV cua TABLE: DON_VI_CONG_TAC*/
alter table DON_VI_CONG_TAC alter column TEN_DV nvarchar(50) null

/*==============================================================*/
/* Table: GIU                                                   */
/*==============================================================*/
create table GIU (
   MA_VC                varchar(5)           not null,
   MA_CV                varchar(5)           not null,
   THOIGIAN_BATDAU      datetime             null,
   THOIGIAN_KETTHUC     datetime             null,
   constraint PK_GIU primary key (MA_VC, MA_CV)
)
go

alter table GIU alter column THOIGIAN_BATDAU date null
alter table GIU alter column THOIGIAN_KETTHUC date null

/*==============================================================*/
/* Index: GIU_FK                                                */
/*==============================================================*/
create index GIU_FK on GIU (
MA_VC ASC
)
go

/*==============================================================*/
/* Index: GIU2_FK                                               */
/*==============================================================*/
create index GIU2_FK on GIU (
MA_CV ASC
)
go

/*==============================================================*/
/* Table: LOAI_TIEU_CHI                                         */
/*==============================================================*/
create table LOAI_TIEU_CHI (
   MA_LOAI_TC           varchar(5)           not null,
   TEN_LOAI_TC          varchar(50)          null,
   constraint PK_LOAI_TIEU_CHI primary key nonclustered (MA_LOAI_TC)
)
go
/*== Doi kieu du lieu cua thuoc tinh TEN_LOAI_TC cua TABLE: LOAI_TIEU_CHI*/
alter table LOAI_TIEU_CHI alter column TEN_LOAI_TC nvarchar(100) null

/*==============================================================*/
/* Table: NHIEM_VU                                              */
/*==============================================================*/
create table NHIEM_VU (
   MA_NV                varchar(5)           not null,
   TEN_NV               varchar(50)          null,
   constraint PK_NHIEM_VU primary key nonclustered (MA_NV)
)
go

/*== Doi kieu du lieu cua thuoc tinh TEN_NV cua TABLE: NHIEM_VU*/
alter table NHIEM_VU alter column TEN_NV nvarchar(50) null

/*==============================================================*/
/* Table: PHIEU_DANH_GIA                                        */
/*==============================================================*/
create table PHIEU_DANH_GIA (
   MA_PDG               varchar(5)           not null,
   constraint PK_PHIEU_DANH_GIA primary key nonclustered (MA_PDG)
)
go


/*==============================================================*/
/* Table: THUOC                                                 */
/*==============================================================*/
create table THUOC (
   MA_DV                varchar(5)           not null,
   MA_VC                varchar(5)           not null,
   THOIGIAN_BATDAU      datetime             null,
   THOIGIAN_KETTHUC     datetime             null,
   constraint PK_THUOC primary key (MA_DV, MA_VC)
)
go

alter table THUOC alter column THOIGIAN_BATDAU date null
alter table THUOC alter column THOIGIAN_KETTHUC date null

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on THUOC (
MA_DV ASC
)
go

/*==============================================================*/
/* Index: THUOC2_FK                                             */
/*==============================================================*/
create index THUOC2_FK on THUOC (
MA_VC ASC
)
go

/*==============================================================*/
/* Table: TIEU_CHI_DANH_GIA                                     */
/*==============================================================*/
create table TIEU_CHI_DANH_GIA (
   MA_TC                varchar(5)           not null,
   MA_LOAI_TC           varchar(5)           not null,
   TEN_TC               varchar(50)          null,
   DIEM_TC              numeric(10)          null,
   constraint PK_TIEU_CHI_DANH_GIA primary key nonclustered (MA_TC)
)
go

/*== Doi kieu du lieu cua thuoc tinh TEN_TC cua TABLE: TIEU_CHI_DANH_GIA*/
alter table TIEU_CHI_DANH_GIA alter column TEN_TC nvarchar(50) null

/*==============================================================*/
/* Index: BAO_GOM_FK                                            */
/*==============================================================*/
create index BAO_GOM_FK on TIEU_CHI_DANH_GIA (
MA_LOAI_TC ASC
)
go

/*==============================================================*/
/* Table: VIEN_CHUC                                             */
/*==============================================================*/
create table VIEN_CHUC (
   MA_VC                varchar(5)           not null,
   TEN_VC               varchar(50)          null,
   GIOI_TINH            varchar(3)           null,
   NGAY_SINH            date                 null,
   DIA_CHI              text                 null,
   SO_DIEN_THOAI        numeric(20)          null,
   constraint PK_VIEN_CHUC primary key nonclustered (MA_VC)
)
go

/*== Doi kieu du lieu cua thuoc tinh TEN_VC, GIOI_TINH, SO_DIEN_THOAI cua TABLE: VIEN_CHUC*/
alter table VIEN_CHUC alter column TEN_VC nvarchar(50) null
alter table VIEN_CHUC alter column GIOI_TINH nvarchar(50) null
alter table VIEN_CHUC alter column SO_DIEN_THOAI varchar(20) null

/*==============================================================*/
/* Table: XEP_LOAI                                              */
/*==============================================================*/
create table XEP_LOAI (
   MA_XL                varchar(5)           not null,
   TEN_XL               varchar(50)          null,
   constraint PK_XEP_LOAI primary key nonclustered (MA_XL)
)
go

/*== Doi kieu du lieu cua thuoc tinh TEN_XL cua TABLE: XEP_LOAI*/
alter table XEP_LOAI alter column TEN_XL nvarchar(50) null

/*==============================================================*/
/* Table: XET_DUYET                                             */
/*==============================================================*/
create table XET_DUYET (
   MA_VC                varchar(5)           not null,
   MA_CDG               varchar(5)           not null,
   MA_XL                varchar(5)           not null,
   NGAY_DANH_GIA        datetime             null,
   constraint PK_XET_DUYET primary key (MA_VC, MA_CDG, MA_XL)
)
go

alter table XET_DUYET alter column NGAY_DANH_GIA date null

/*==============================================================*/
/* Index: XET_DUYET_FK                                          */
/*==============================================================*/
create index XET_DUYET_FK on XET_DUYET (
MA_VC ASC
)
go

/*==============================================================*/
/* Index: XET_DUYET2_FK                                         */
/*==============================================================*/
create index XET_DUYET2_FK on XET_DUYET (
MA_CDG ASC
)
go

/*==============================================================*/
/* Index: XET_DUYET3_FK                                         */
/*==============================================================*/
create index XET_DUYET3_FK on XET_DUYET (
MA_XL ASC
)
go

alter table CO
   add constraint FK_CO_CO_VIEN_CHU foreign key (MA_VC)
      references VIEN_CHUC (MA_VC)
go

alter table CO
   add constraint FK_CO_CO2_PHIEU_DA foreign key (MA_PDG)
      references PHIEU_DANH_GIA (MA_PDG)
go

alter table CO
   add constraint FK_CO_CO3_TIEU_CHI foreign key (MA_TC)
      references TIEU_CHI_DANH_GIA (MA_TC)
go

alter table DAM_NHAN
   add constraint FK_DAM_NHAN_DAM_NHAN_VIEN_CHU foreign key (MA_VC)
      references VIEN_CHUC (MA_VC)
go

alter table DAM_NHAN
   add constraint FK_DAM_NHAN_DAM_NHAN2_NHIEM_VU foreign key (MA_NV)
      references NHIEM_VU (MA_NV)
go

alter table GIU
   add constraint FK_GIU_GIU_VIEN_CHU foreign key (MA_VC)
      references VIEN_CHUC (MA_VC)
go

alter table GIU
   add constraint FK_GIU_GIU2_CHUC_VU foreign key (MA_CV)
      references CHUC_VU (MA_CV)
go

alter table THUOC
   add constraint FK_THUOC_THUOC_DON_VI_C foreign key (MA_DV)
      references DON_VI_CONG_TAC (MA_DV)
go

alter table THUOC
   add constraint FK_THUOC_THUOC2_VIEN_CHU foreign key (MA_VC)
      references VIEN_CHUC (MA_VC)
go

alter table TIEU_CHI_DANH_GIA
   add constraint FK_TIEU_CHI_BAO_GOM_LOAI_TIE foreign key (MA_LOAI_TC)
      references LOAI_TIEU_CHI (MA_LOAI_TC)
go

alter table XET_DUYET
   add constraint FK_XET_DUYE_XET_DUYET_VIEN_CHU foreign key (MA_VC)
      references VIEN_CHUC (MA_VC)
go

alter table XET_DUYET
   add constraint FK_XET_DUYE_XET_DUYET_CAP_DANH foreign key (MA_CDG)
      references CAP_DANH_GIA (MA_CDG)
go

alter table XET_DUYET
   add constraint FK_XET_DUYE_XET_DUYET_XEP_LOAI foreign key (MA_XL)
      references XEP_LOAI (MA_XL)
go

/*== INSERT DU LIEU MAU THU == */

/* 1.Nhập dữ liệu vào bảng CAP DANH GIA */
insert into CAP_DANH_GIA
values ('C1',N'Cấp Trường')

insert into CAP_DANH_GIA
values ('C2',N'Cấp Khoa và Phòng')

insert into CAP_DANH_GIA
values ('C3',N'Cấp Bộ môn')

select *
from CAP_DANH_GIA


/* 2.Nhập dữ liệu vào bảng DON_VI_CONG_TAC */
insert into DON_VI_CONG_TAC
values ('DV01',N'Phòng Công nghệ thông tin')

insert into DON_VI_CONG_TAC
values ('DV02',N'Phòng Công tác sinh viên')

insert into DON_VI_CONG_TAC
values ('DV03',N'Khoa Kỹ Thuật và Công Nghệ')

insert into DON_VI_CONG_TAC
values ('DV04',N'Phòng Khoa học Công Nghệ')

insert into DON_VI_CONG_TAC
values ('DV05',N'Khoa Lý luận Chịnh trị')

select *
from DON_VI_CONG_TAC




/* 3.Nhập dữ liệu vào bảng CHUC_VU */
insert into CHUC_VU
values ('CV01',N'Trưởng Khoa')

insert into CHUC_VU
values ('CV02',N'Phó trưởng Khoa')

insert into CHUC_VU
values ('CV03',N'Trưởng Bộ môn')

insert into CHUC_VU
values ('CV04',N'Phó trưởng Bộ môn')

insert into CHUC_VU
values ('CV05',N'Trưởng phòng')

insert into CHUC_VU
values ('CV06',N'Phó trưởng phòng')

insert into CHUC_VU
values ('CV07',N'Giảng viên')

insert into CHUC_VU
values ('CV08', N'Viên chức hành chính')

select *
from CHUC_VU



/* 4.Nhập dữ liệu vào bảng XEP_LOAI */
insert into XEP_LOAI
values ('XL01',N'Hoàn thành Xuất sắc Nhiệm vụ')

insert into XEP_LOAI
values ('XL02',N'Hoàn thành Tốt Nhiệm vụ')

insert into XEP_LOAI
values ('XL03',N'Hoàn thành Nhiệm vụ')

insert into XEP_LOAI
values ('XL04',N'Không hoàn thành Nhiệm vụ')

select *
from XEP_LOAI

/* 5.Nhập dữ liệu vào bảng LOAI_TIEU_CHI */
insert into LOAI_TIEU_CHI
values ('L01',N'Hoạt động Giảng dạy')

insert into LOAI_TIEU_CHI
values ('L01.1',N'Đạt 100% giờ chuẩn được được 135 điểm. Cứ	mỗi giờ vượt chuẩn được tính 0,5 điểm')

insert into LOAI_TIEU_CHI
values('L01.2',N'Khảo sát sự hài lòng của sinh viên điểm TB chung từ 4,2 trở lên')

insert into LOAI_TIEU_CHI
values('L01.3',N'Khảo sát sự hài lòng của sinh viên điểm TB chung từ 3,4 đến dưới 4,2 điểm')

insert into LOAI_TIEU_CHI
values('L01.4',N'Khảo sát sự hài lòng của sinh viên điểm TB chung từ 2,6 đến dưới 3,4 điểm')

insert into LOAI_TIEU_CHI
values ('L02',N'Nghiên cứu Khoa học')

insert into LOAI_TIEU_CHI
values ('L03',N'Phục vụ Cộng đồng')

select *
from LOAI_TIEU_CHI
delete LOAI_TIEU_CHI




/* 6.Nhập dữ liệu vào bảng TIEU_CHI_DANH_GIA */
insert into TIEU_CHI_DANH_GIA
values ('TC01','L01',N'Nhiệm vụ công việc được giao cho cá nhân','210')

insert into TIEU_CHI_DANH_GIA
values ('TC1.1','L01.1',N'Nhiệm vụ công việc được giao cho cá nhân','200')

insert into TIEU_CHI_DANH_GIA
values ('TC1.2','L01.2',N'Nhiệm vụ công việc được giao cho cá nhân','10')

insert into TIEU_CHI_DANH_GIA
values ('TC1.3','L01.3',N'Nhiệm vụ công việc được giao cho cá nhân','8')

insert into TIEU_CHI_DANH_GIA
values ('TC1.4','L01.4',N'Nhiệm vụ công việc được giao cho cá nhân','6')

insert into TIEU_CHI_DANH_GIA
values ('TC02','L02',N'Nhiệm vụ công việc được giao cho cá nhân','190')

insert into TIEU_CHI_DANH_GIA
values ('TC03','L03',N'Nhiệm vụ công việc được giao cho cá nhân','100')

select *
from TIEU_CHI_DANH_GIA
delete TIEU_CHI_DANH_GIA



/* 7.Nhập dữ liệu vào bảng NHIEM_VU */
insert into NHIEM_VU
values ('NV01',N'Giảng dạy')

insert into NHIEM_VU
values ('NV02',N'Nghiên cứu khoa học')

insert into NHIEM_VU
values ('NV03',N'Phục vụ Cộng Ðồng')

insert into NHIEM_VU
values ('NV04',N'Hoàn thành công việc được phân công')

select *
from NHIEM_VU


/* 8.Nhập dữ liệu vào bảng VIEN_CHUC*/
/*== DU LIEU PHONG CONG NGHE THONG TIN ==*/
insert into VIEN_CHUC
values ('VC01', N'Nghi Vĩnh Khanh', N'Nam', '1991-02-14', 'Trà Vinh', '02943855246281')

insert into VIEN_CHUC
values ('VC02', N'Lê Vãn Phol', N'Nam', '1991-10-02', 'Trà Vinh', '02943855246366')

/*== DU LIEU KHOA KY THUAT & CONG NGHE THONG TIN ==*/
insert into VIEN_CHUC
values ('VC03', N'Nguyễn Nhứt Lam', N'Nam', '1995-01-20', 'Trà Vinh', '0919556441')

insert into VIEN_CHUC
values ('VC04', N'Nguyễn Bảo Ân', N'Nam', '1995-07-16', 'Trà Vinh', '0908961632')

insert into VIEN_CHUC
values ('VC05' , N'Phạm Thị Trúc Mai', N'Nữ', '1997-04-26', 'Trà Vinh', '0936010206')

/*== DU LIEU PHONG CONG TAC SINH VIEN ==*/
insert into VIEN_CHUC
values ('VC06' , N'Bùi Thành Dự', N'Nam', '1992-08-12', 'Trà Vinh', '0386557799')

insert into VIEN_CHUC
values ('VC07' , N'Ðỗ Thị Hồng Phương', N'Nữ', '1992-06-06', 'Trà Vinh', '0918285853')

/*== DU LIEU KHOA LY LUAN CHINH TRI ==*/
insert into VIEN_CHUC
values ('VC08' , N'Nguyễn Thị Ái Mỹ', N'Nữ', '1994-04-05', 'Trà Vinh', '0965261359')

insert into VIEN_CHUC
values ('VC09' , N'Nguyễn Thanh Thanh', N'Nữ','1994-09-26', 'Trà Vinh', '0344211383')

/*== DU LIEU PHONG KHOA CONG NGHE ==*/
insert into VIEN_CHUC
values ('VC10' , N'Huỳnh Công Khôi', N'Nam', '1993-12-20', 'Trà Vinh', '02943855246356')

select *
from VIEN_CHUC

/* 9. Nhập dữ liệu của bảng PHIEU_DANH_GIA */
insert into PHIEU_DANH_GIA
values ('PH01')

insert into PHIEU_DANH_GIA
values ('PH02')

insert into PHIEU_DANH_GIA
values ('PH03')

insert into PHIEU_DANH_GIA
values ('PH04')

insert into PHIEU_DANH_GIA
values ('PH05')

insert into PHIEU_DANH_GIA
values ('PH06')

insert into PHIEU_DANH_GIA
values ('PH07')

insert into PHIEU_DANH_GIA
values ('PH08')

insert into PHIEU_DANH_GIA
values ('PH09')

insert into PHIEU_DANH_GIA
values ('PH10')

select *
from PHIEU_DANH_GIA

/* 10. Nhập dữ liệu của bảng LIEN KET: CO */

insert into CO
values ('VC01', 'PH01', 'TC02')

insert into CO
values ('VC02', 'PH02', 'TC02')


insert into CO
values ('VC03', 'PH03', 'TC01')

insert into CO
values ('VC03', 'PH03', 'TC1.1')

insert into CO
values ('VC03', 'PH03', 'TC1.2')

insert into CO
values ('VC03', 'PH03', 'TC02')

insert into CO
values ('VC03', 'PH03', 'TC03')



insert into CO
values ('VC04', 'PH04', 'TC01')

insert into CO
values ('VC04', 'PH04', 'TC1.1')

insert into CO
values ('VC04', 'PH04', 'TC1.2')

insert into CO
values ('VC04', 'PH04', 'TC02')

insert into CO
values ('VC04', 'PH04', 'TC03')



insert into CO
values ('VC05', 'PH05', 'TC01')

insert into CO
values ('VC05', 'PH05', 'TC1.1')

insert into CO
values ('VC05', 'PH05', 'TC1.3')

insert into CO
values ('VC05', 'PH05', 'TC02')

insert into CO
values ('VC05', 'PH05', 'TC03')



insert into CO
values ('VC06', 'PH06', 'TC03')

insert into CO
values ('VC07', 'PH07', 'TC03')



insert into CO
values ('VC08', 'PH08', 'TC01')

insert into CO
values ('VC08', 'PH08', 'TC1.3')

insert into CO
values ('VC08', 'PH08', 'TC1.4')

insert into CO
values ('VC08', 'PH08', 'TC02')

insert into CO
values ('VC08', 'PH08', 'TC03')



insert into CO
values ('VC09', 'PH09', 'TC01')

insert into CO
values ('VC09', 'PH09', 'TC1.3')

insert into CO
values ('VC09', 'PH09', 'TC1.4')

insert into CO
values ('VC09', 'PH09', 'TC02')

insert into CO
values ('VC09', 'PH09', 'TC03')



insert into CO
values ('VC10', 'PH10', 'TC02')

select *
from CO
delete CO



/* 11. Nhập dữ liệu của bảng LIEN KET: DAM_NHAN */

/*== Viên chức 01 là trưởng phòng nên chỉ hoàn thành công việc được phân công ==*/
insert into DAM_NHAN
values ('VC01', 'NV04')

/*== Viên chức 02 là phó trưởng phòng nên chỉ hoàn thành công việc được phân công ==*/
insert into DAM_NHAN
values ('VC02', 'NV04')


/*== Viên chức 03 là giảng viên nên có 3 nhiệm vụ chính : giảng dạy, nghiên cứu khoa học, phục vụ cộng đồng ==*/
insert into DAM_NHAN
values ('VC03', 'NV01')

insert into DAM_NHAN
values ('VC03', 'NV02')

insert into DAM_NHAN
values ('VC03', 'NV03')


/*== Viên chức 04 là giảng viên nên có 3 nhiệm vụ chính : giảng dạy, nghiên cứu khoa học, phục vụ cộng đồng ==*/
insert into DAM_NHAN
values ('VC04', 'NV01')

insert into DAM_NHAN
values ('VC04', 'NV02')

insert into DAM_NHAN
values ('VC04', 'NV03')


/*== Viên chức 05 là giảng viên nên có 3 nhiệm vụ chính: giảng dạy, nghiên cứu khoa học, phục vụ cộng đồng ==*/
insert into DAM_NHAN
values ('VC05', 'NV01')

insert into DAM_NHAN
values ('VC05', 'NV02')

insert into DAM_NHAN
values ('VC05', 'NV03')


/*== Viên chức 06 là viên chức hành chính có nhiệm vụ phục vụ cồng động ==*/
insert into DAM_NHAN
values ('VC06', 'NV03')

/*== Viên chức 07 là viên chức hành chính có nhiệm vụ phục vụ cộng đồng ==*/
insert into DAM_NHAN
values ('VC07', 'NV03')


/*== Viên chức 08 LÀ giảng viên nên có 3 nhiệm vụ chính: giảng dạy, nghiên cứu khoa học, phục vụ cộng đồng ==*/
insert into DAM_NHAN
values ('VC08', 'NV01')

insert into DAM_NHAN
values ('VC08', 'NV02')

insert into DAM_NHAN
values ('VC08', 'NV03')


/*== Viên chức 09 LÀ giảng viên nên có 3 nhiệm vụ chính: giảng dạy, nghiên cứu khoa học, phục vụ cộng đồng ==*/
insert into DAM_NHAN
values ('VC09', 'NV01')

insert into DAM_NHAN
values ('VC09', 'NV02')

insert into DAM_NHAN
values ('VC09', 'NV03')

/*== Viên chức 10 là trưởng phòng nên chỉ hoàn thành công việc được phân công ==*/
insert into DAM_NHAN
values ('VC10', 'NV04')

select *
from DAM_NHAN


/* 12. Nhập dữ liệu của bảng LIEN KET: GIU */
insert into GIU
values ('VC01', 'CV05', '2013-04-15', '2040-04-15')

insert into GIU
values ('VC02', 'CV06', '2013-08-20', '2040-08-20')

insert into GIU
values ('VC03', 'CV03', '2014-01-15', '2040-04-15')

insert into GIU
values ('VC04', 'CV04', '2012-02-20', '2040-04-15')

insert into GIU
values ('VC05', 'CV07', '2013-06-24', '2040-04-15')

insert into GIU
values ('VC06', 'CV08', '2011-02-13', '2040-04-15')

insert into GIU
values ('VC07', 'CV08', '2012-04-15', '2040-04-15')

insert into GIU
values ('VC08', 'CV07', '2013-11-10', '2040-04-15')

insert into GIU
values ('VC09', 'CV07', '2013-12-20', '2040-04-15')

insert into GIU
values ('VC10', 'CV05', '2010-05-20', '2040-04-15')

select *
from GIU


/* 13. Nhập dữ liệu của bảng LIEN KET: THUOC */
insert into THUOC
values ('DV01', 'VC01', '2013-04-15', '2040-04-15')

insert into THUOC
values ('DV01', 'VC02', '2013-08-20', '2040-08-20')


insert into THUOC
values ('DV03', 'VC03', '2014-01-15', '2040-04-15')

insert into THUOC
values ('DV03', 'VC04', '2012-02-20', '2040-04-15')

insert into THUOC
values ('DV03', 'VC05', '2013-06-24', '2040-04-15')


insert into THUOC
values ('DV02', 'VC06', '2011-02-13', '2040-04-15')

insert into THUOC
values ('DV02', 'VC07', '2013-04-15', '2040-04-15')

insert into THUOC
values ('DV05', 'VC08', '2013-11-10', '2040-04-15')


insert into THUOC
values ('DV05', 'VC09', '2013-12-20', '2040-04-15')

insert into THUOC
values ('DV04', 'VC10', '2010-05-20', '2040-04-15')

select *
from THUOC

/* 14. Nhập dữ liệu của bảng LIEN KET: XET_DUYET */
insert into XET_DUYET
values ('VC01', 'C1', 'XL01', '2023-01-25')

insert into XET_DUYET
values ('VC01', 'C2', 'XL02', '2023-01-25')


insert into XET_DUYET
values ('VC02', 'C1', 'XL01', '2023-01-25')

insert into XET_DUYET
values ('VC02', 'C2', 'XL02', '2023-01-25')


insert into XET_DUYET
values ('VC03', 'C1', 'XL01', '2023-01-25')

insert into XET_DUYET
values ('VC03', 'C2', 'XL02', '2023-01-25')

insert into XET_DUYET
values ('VC03', 'C3', 'XL03', '2023-01-25')


insert into XET_DUYET
values ('VC04', 'C1', 'XL02', '2023-01-25')

insert into XET_DUYET
values ('VC04', 'C2', 'XL03', '2023-01-25')

insert into XET_DUYET
values ('VC04', 'C3', 'XL03', '2023-01-25')


insert into XET_DUYET
values ('VC05', 'C1', 'XL02', '2023-01-25')

insert into XET_DUYET
values ('VC05', 'C2', 'XL03', '2023-01-25')

insert into XET_DUYET
values ('VC05', 'C3', 'XL03', '2023-01-25')


insert into XET_DUYET
values ('VC06', 'C1', 'XL03', '2023-01-25')

insert into XET_DUYET
values ('VC06', 'C2', 'XL03', '2023-01-25')


insert into XET_DUYET
values ('VC07', 'C1', 'XL03', '2023-01-25')

insert into XET_DUYET
values ('VC07', 'C2', 'XL03', '2023-01-25')


insert into XET_DUYET
values ('VC08', 'C1', 'XL01', '2023-01-25')

insert into XET_DUYET
values ('VC08', 'C2', 'XL02', '2023-01-25')

insert into XET_DUYET
values ('VC08', 'C3', 'XL03', '2023-01-25')


insert into XET_DUYET
values ('VC09', 'C1', 'XL03', '2023-01-25')

insert into XET_DUYET
values ('VC09', 'C2', 'XL04', '2023-01-25')

insert into XET_DUYET
values ('VC09', 'C3', 'XL04', '2023-01-25')



insert into XET_DUYET
values ('VC10', 'C1', 'XL01', '2023-01-25')

insert into XET_DUYET
values ('VC10', 'C2', 'XL02', '2023-01-25')


select *
from XET_DUYET




/*== TRUY VẤN HIỂN THỊ KẾT QUẢ ==*/

/*== 1. Hiển thị danh sách viên chức giữ chức vụ ==*/
select TEN_VC as Tên_Viên_chức, TEN_CV as Tên_Chức_vụ,THOIGIAN_BATDAU as Thời_gian_bắt_đầu, THOIGIAN_KETTHUC as Thời_gian_kết_thúc
from VIEN_CHUC A , CHUC_VU B, GIU C
where A.MA_VC = C.MA_VC
and B.MA_CV = C.MA_CV
order by TEN_VC


/*== 2. Hiển thị danh sách viên chức thuộc đơn vị công tác ==*/
select TEN_VC as Tên_Viên_chức, TEN_DV as Tên_Đơn_vị_công_tác, THOIGIAN_BATDAU as Thời_gian_bắt_đầu, THOIGIAN_KETTHUC as Thời_gian_kết_thúc
from VIEN_CHUC A, DON_VI_CONG_TAC B, THUOC C
where A.MA_VC = C.MA_VC
and B.MA_DV = C.MA_DV
order by TEN_VC


/*== 3.Hiển thị danh sách viên chức đảm nhận nhiệm vụ ==*/
select TEN_VC as Tên_Viên_chức, TEN_NV as Tên_Nhiệm_vụ
from VIEN_CHUC A, NHIEM_VU B, DAM_NHAN C
where A.MA_VC = C.MA_VC
and B.MA_NV = C.MA_NV
order by TEN_VC


/*== 4.Hiển thị danh sách viên chức xét duyệt bởi cấp đánh giá và kết luận xếp loại ==*/
select TEN_VC as Tên_viên_chức, TEN_CDG as Tên_cấp_đánh_giá, TEN_XL as Tên_xếp_loại, NGAY_DANH_GIA as Ngày_đánh_giá
from VIEN_CHUC A, CAP_DANH_GIA B, XEP_LOAI C, XET_DUYET D
where A.MA_VC = D.MA_VC
and B.MA_CDG = D.MA_CDG
and C.MA_XL = D.MA_XL
and (D.MA_CDG = 'C1' OR D.MA_CDG = 'C2' OR D.MA_CDG = 'C3')
order by TEN_VC, TEN_CDG


/* Hiển thị thêm MÃ CẤP , điều chỉnh cấp xếp loại cùng bậc , lên - xuống cách nhau 1 bậc*/


/*== 5.Hiển thị danh sách thứ tự danh sách viên chức nhận phiếu đánh giá ==*/
select MA_PDG as Mã_phiếu_đánh_giá, TEN_VC as Tên_viên_chức 
from VIEN_CHUC A, CO B
where A.MA_VC = B.MA_VC
order by TEN_VC


/*== 6.1. Hiển thị danh sách viên chức có phiếu đánh giá có tiêu chí đánh giá gồm các loại tiêu chí ==*/
select MA_PDG as Mã_phiếu_đánh_giá, TEN_VC as Tên_viên_chức, TEN_TC as Tên_tiêu_chí_đánh_giá, TEN_LOAI_TC as Tên_loại_tiêu_chí, DIEM_TC as Điểm_tiêu_chí
from VIEN_CHUC A, TIEU_CHI_DANH_GIA B, LOAI_TIEU_CHI C, CO D
where A.MA_VC = D.MA_VC
and B.MA_TC = D.MA_TC
and B.MA_LOAI_TC = C.MA_LOAI_TC
order by TEN_VC



/*== 6.2. Tổng điểm tiêu chí của các viên chức ==*/
select TEN_VC as Tên_viên_chức, SUM(DIEM_TC) as Tổng_điểm
from VIEN_CHUC A, TIEU_CHI_DANH_GIA B, CO C
where A.MA_VC = C.MA_VC
and B.MA_TC = C.MA_TC
group by TEN_VC



/*== 6.3. Tổng điểm  tiêu chí của các viên chức theo cấp đánh giá ==*/
select TEN_VC as Tên_viên_chức, TEN_CDG as Tên_cấp_đánh_giá, SUM(DIEM_TC) as Tổng_điểm
from VIEN_CHUC A, TIEU_CHI_DANH_GIA B, CAP_DANH_GIA C, CO D, XET_DUYET E
where A.MA_VC = D.MA_VC
and B.MA_TC = D.MA_TC
and A.MA_VC = E.MA_VC
and C.MA_CDG = E.MA_CDG
group by TEN_VC, TEN_CDG
order by TEN_VC, TEN_CDG desc



/*== 7.Hiển thị danh sách viên chức thuộc đơn vị công tác và giữ chức vụ ==*/
select TEN_VC as Tên_viên_chức, GIOI_TINH as Giới_tính, NGAY_SINH as Ngày_sinh, TEN_DV as Tên_đơn_vị_công_tác, TEN_CV as Tên_chức_vụ
from VIEN_CHUC A, DON_VI_CONG_TAC B, CHUC_VU C, THUOC D, GIU E
where A.MA_VC = D.MA_VC
and A.MA_VC = E.MA_VC
and B.MA_DV = D.MA_DV
and C.MA_CV = E.MA_CV


/*== 8.Hiển thị danh sách viên chức giữ chức vụ và đảm nhận nhiệm vụ ==*/
select TEN_VC as Tên_viên_chức, TEN_CV as Tên_chức_vụ, TEN_NV as Tên_nhiệm_vụ
from VIEN_CHUC A, CHUC_VU B, NHIEM_VU C, GIU D, DAM_NHAN E
where A.MA_VC = D.MA_VC
and A.MA_VC = E.MA_VC
and B.MA_CV = D.MA_CV
and C.MA_NV = E.MA_NV
order by TEN_VC





