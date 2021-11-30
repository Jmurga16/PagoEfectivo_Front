USE DB_PagoEfectivo
GO

--CREACION DE TABLAS

--TABLA ESTADOS
CREATE TABLE TBL_ESTADO(
    nIdEstado INT NOT NULL IDENTITY(1,1) PRIMARY KEY ,
    sDescripcion VARCHAR(MAX),
	bActivo BIT NOT NULL DEFAULT 1
)
GO

--TABLA REGISTRO
CREATE TABLE TBL_REGISTRO(
    nIdRegistro INT NOT NULL IDENTITY(1,1) PRIMARY KEY ,
    sNombre VARCHAR(MAX),
	sEmail VARCHAR(MAX),
	sCodigo VARCHAR(MAX),
	nEstado INT,
    FOREIGN KEY (nEstado) REFERENCES TBL_ESTADO(nIdEstado),
)
GO
