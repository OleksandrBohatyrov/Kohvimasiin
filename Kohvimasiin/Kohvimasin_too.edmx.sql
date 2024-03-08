
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/08/2024 13:10:36
-- Generated from EDMX file: C:\Users\opilane\source\repos\Bohatyrov\Kohvimasiin\Kohvimasiin\Kohvimasin_too.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Kohv4];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'KohviautomaatSet'
CREATE TABLE [dbo].[KohviautomaatSet] (
    [kohvi_Id] int IDENTITY(1,1) NOT NULL,
    [jooginimi] nvarchar(max)  NOT NULL,
    [Topsejuua_topsejuuaId] int  NOT NULL,
    [Topsepakis_topsepakisId] int  NOT NULL
);
GO

-- Creating table 'TopsejuuaSet'
CREATE TABLE [dbo].[TopsejuuaSet] (
    [topsejuuaId] int IDENTITY(1,1) NOT NULL,
    [topsejuua] int  NOT NULL
);
GO

-- Creating table 'TopsepakisSet'
CREATE TABLE [dbo].[TopsepakisSet] (
    [topsepakisId] int IDENTITY(1,1) NOT NULL,
    [topsepakis] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [kohvi_Id] in table 'KohviautomaatSet'
ALTER TABLE [dbo].[KohviautomaatSet]
ADD CONSTRAINT [PK_KohviautomaatSet]
    PRIMARY KEY CLUSTERED ([kohvi_Id] ASC);
GO

-- Creating primary key on [topsejuuaId] in table 'TopsejuuaSet'
ALTER TABLE [dbo].[TopsejuuaSet]
ADD CONSTRAINT [PK_TopsejuuaSet]
    PRIMARY KEY CLUSTERED ([topsejuuaId] ASC);
GO

-- Creating primary key on [topsepakisId] in table 'TopsepakisSet'
ALTER TABLE [dbo].[TopsepakisSet]
ADD CONSTRAINT [PK_TopsepakisSet]
    PRIMARY KEY CLUSTERED ([topsepakisId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Topsejuua_topsejuuaId] in table 'KohviautomaatSet'
ALTER TABLE [dbo].[KohviautomaatSet]
ADD CONSTRAINT [FK_TopsejuuaKohviautomaat]
    FOREIGN KEY ([Topsejuua_topsejuuaId])
    REFERENCES [dbo].[TopsejuuaSet]
        ([topsejuuaId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TopsejuuaKohviautomaat'
CREATE INDEX [IX_FK_TopsejuuaKohviautomaat]
ON [dbo].[KohviautomaatSet]
    ([Topsejuua_topsejuuaId]);
GO

-- Creating foreign key on [Topsepakis_topsepakisId] in table 'KohviautomaatSet'
ALTER TABLE [dbo].[KohviautomaatSet]
ADD CONSTRAINT [FK_TopsepakisKohviautomaat]
    FOREIGN KEY ([Topsepakis_topsepakisId])
    REFERENCES [dbo].[TopsepakisSet]
        ([topsepakisId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TopsepakisKohviautomaat'
CREATE INDEX [IX_FK_TopsepakisKohviautomaat]
ON [dbo].[KohviautomaatSet]
    ([Topsepakis_topsepakisId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------