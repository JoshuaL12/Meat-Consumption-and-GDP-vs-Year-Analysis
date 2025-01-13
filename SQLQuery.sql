SELECT
dbo.Consumption.Entity as [Country],
dbo.Consumption.Year,
Round(GDP_per_capita_PPP_constant_2017_international, 2) as [GDP],
Round(Poultry, 2) as [Poultry],
Round(Beef, 2) as [Beef],
Round(Sheep_and_goat, 2) as [Sheep and Goat],
Round(Pork, 2) as [Pork],
Round(Fish_and_seafood, 2) as [Seafood],
Round(Other_meats, 2) as [Other meats]
From dbo.Consumption
Inner Join dbo.GDP on dbo.Consumption.Entity = dbo.GDP.Entity And dbo.Consumption.Year = dbo.GDP.Year
Where dbo.Consumption.Year < 2000 Or dbo.Consumption.Year >= 2012
