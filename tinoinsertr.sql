CREATE TABLE Pagos (
    ID_Pago int IDENTITY NOT NULL,
    DNI int NOT NULL,
    IdPlan int NOT NULL,
    Fecha date NOT NULL,
    CONSTRAINT PK_Pagos PRIMARY KEY (ID_Pago),
    CONSTRAINT FK_Pago_Suscripciones FOREIGN KEY (DNI,IdPlan) REFERENCES Suscripciones,
);

INSERT INTO PAGOS (DNI, Fecha, IdPlan) VALUES (50123300, '2022/10/29', 1),
	   (12235012, '2022/09/12', 2),
	   (50123300, '2022/11/10', 3),
	   (178125, '2022/11/01', 1),
	   (25688911, '2022/10/31', 2),
	   (44721345, '2022/09/12', 3),
	   (4733901, '2022/10/10', 1)

CREATE PROCEDURE DeshabilitarCuentasConDeudas   
    @ToleranciaDeDiasDeDeuda int   
AS   
    UPDATE S  
	set tipo = 0
	from suscripciones as S
	inner join pagos as p
		on s.dni = p.dni and s.id_plan = p.idplan
	where  DATEDIFF(day,fecha,GETDATE()) >@ToleranciaDeDiasDeDeuda
