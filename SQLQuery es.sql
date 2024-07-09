
--Em Quais Estados Estão Localizados os Funcionários Da Empresa?
Select StateProvinceName as Estado , Count(*) as Funcionarios
	from HumanResources.vEmployee 
	GROUP BY StateProvinceName
	order by Funcionarios DESC 

-- Verifique a quantidade de funcionarios por departamento. 
select Department,COUNT(*) as Quantidade 
	from HumanResources.vEmployeeDepartment 
	group by Department
	order by Quantidade DESC

-- Verifique e ordene a quantidade de produtos do inventário.

select * from Production.Product
select * from Production.ProductInventory

select p.ProductID ,p.Name , SUM (pi.Quantity) as Quantidade
from Production.Product p 
inner join Production.ProductInventory pi on p.ProductID = pi.ProductID
group by p.ProductID , P.Name
order by Quantidade desc


-- historio de quantidade de produtos vendidos ao longo do tempo 
Select *  from Production.Product 

select P.ProductID as ID , p.Name as Produto , p.Size as Tamanho , p.Weight as Peso , sum(pt.Quantity) as Quantidade , sum(pt.ActualCost) as ValoDaVenda
from  Production.Product P
inner join Production.TransactionHistory pt on p.ProductID = pt.ProductID
where p.ProductID = 781 --Numero do Produto
group by p.ProductID , p.Name ,p.Size ,p.Weight