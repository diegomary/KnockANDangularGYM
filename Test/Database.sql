USE [master]
GO
/****** Object:  Database [Test.Models.DataLayer]    Script Date: 19/04/2014 15:56:03 ******/
CREATE DATABASE [Test.Models.DataLayer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Test.Models.DataLayer', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Test.Models.DataLayer.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Test.Models.DataLayer_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Test.Models.DataLayer_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Test.Models.DataLayer] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Test.Models.DataLayer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Test.Models.DataLayer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Test.Models.DataLayer] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Test.Models.DataLayer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Test.Models.DataLayer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Test.Models.DataLayer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Test.Models.DataLayer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Test.Models.DataLayer] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Test.Models.DataLayer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Test.Models.DataLayer] SET  MULTI_USER 
GO
ALTER DATABASE [Test.Models.DataLayer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Test.Models.DataLayer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Test.Models.DataLayer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Test.Models.DataLayer] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Test.Models.DataLayer]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 19/04/2014 15:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Flowers]    Script Date: 19/04/2014 15:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flowers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[FlowerColor] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Flowers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kings]    Script Date: 19/04/2014 15:56:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[ImagePath] [nvarchar](max) NULL,
	[KingColor] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Kings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201404190924113_InitialCreate', N'Test.Models.DataLayer', 0x1F8B0800000000000400ED58DB6EE336107D2FD07F10F8D40259339797369077913A71616C9C04ABECBED3D2D8264A512A49A5F6B7ED433FA9BFD0A1A8BBECF8B2D9A0050203864DCD9CB9F07038A37FBEFEED7F58C5C27B02A5792287E46C704A3C90611271B91892CCCCDFFD423EBCFFF107FF268A57DE9752EEC2CAA1A6D443B23426BDA454874B88991EC43C54894EE666102631655142CF4F4F7FA567671410822096E7F99F3269780CF91FFC3B4A6408A9C998982611085DACE3932047F5EE580C3A65210CC92368337062C4BB129CA10B018839F198948961061DBCFCAC21302A918B20C505261ED729A0DC9C090D85E397B5F8BE319C9EDB1868AD5842859936497C20E0D9459114DA553F2AB5A44A1AA6ED06D36BD636EA3C75433216C95FA088D735753912CA8AB5F23A70D2279E5D3BA9761DC9613F27DE2813265330949019C5C489F790CD040F3FC2FA31F903E450664234DD4187F0596B01971E54928232EB4F302F9C9C44C4A36D3DDA55ACD41A3A2E80893417E7C4BB43E36C26A0DAED46B0814914FC0E121433103D306340498B0179BE7AD63BB6EC77690DE98547847853B6BA05B930CB21C19FC41BF31544E54AE1C167C9F144A1925119EC32720D3A543C753CF8CEB626315B00A661F9DD2D39468D1291A817B6E5D39AECCF1E818FB9B5FD0E80957DA3FF1BFD5FCA92E5D3EB931FAF55C3386E77995B66D82D5B6FBC07F0C62C4E822E0CB5037288019802EB4A0877A6F116AE7D7057F1A0BC6DE84E0C9B984D08EEB06E0AB50AAA6E12A8EB12CA6E826E6927FC294B536BAFD62C56BCC0F516A377C1E1776FEC3068A8375CC195B795253C83C8BACE53348D9E8EB9D2C66ED28CD97D1F45714FACDEC22DA92DEDF476A95B7FEA94972AF6B753EBF7025DF53A77630C27C602924706951F55CBD153CCBB3A2698DA50CAF08C64B1DC560E9FD376C5A9A9EF56F64768559E2650EBC1FE788DEAD20AAB5EDE1FAB757D36D15A0FFA783EEDEC529705B44783CE05D425D6BEB47307FB58D2E5C7FF70CA6D567B23DCE1846B5C584DACC6F22B93AD57FEBB2295F5EA1AE8947BBF28BDBB47CC5E2D7622C4C3243DF1C8D6E160AD0DC4032B3008FE1423C131DE5A60CA249F239F5D434870D83BEF0CABFF9DC1916A1D89BDA6C757EF69B9CDE9CEAEB5D7F2EEDFC6CA27A6C225533FC56CF57313E9C856F59BF07AEDE837A16D98B80EC03B6CAA7A23C6FF8818BD59E4C568D19D37FA3DEDF3F34039366C9D275C1D1E926896A0F3CEC96A0AD9316CB88962CBA0B109B8184D8E9C41FA978D4F9B6F3D7D24095FD410F61DA884D072A6062D6526729E94BB8811353D2A453A9B3C05C322CCFA95327CCE42838F43D03A0FF60B13198ADCC4338826F23E336966AEB48678265AEF007CFABCFD7CD06AFBECDFE7ACD72F1102BAC93104B897BF655C4495DFE3FE59DE066109581408F40A676E845BAC2BA4BB44EE0954A4EF1A5290B6BC3C429C0A04D3F732604F708C6F3870DFC28285EBB267D80EB27B23DA69F7AF395B2816EB02A3D6B76FF2A97D95FFFE5F8CE7E552FC170000, N'6.1.0-30225')
SET IDENTITY_INSERT [dbo].[Flowers] ON 

INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (1, N'Agrimony', N'Agrimony is the remedy for people who keep their troubles hidden under a mask of pleasure and happiness. The sad clown masking inner hurt by being the life and soul of the party is an Agrimony archetype. Friends are often the last to know that anything is wrong in the Agrimony person''s life.
Sometimes Agrimony people turn to drink or drugs to help them stay ''happy''. They tend not to like being alone: the mask slips when there is no company. They seek out friends, parties and bright lights. Only at night when they are alone with their thoughts will the mental torture they have repressed come back to haunt them.
Agrimony helps us come to terms with the darker side of our lives and personalities, so that we can become more rounded human beings. We won''t lose our sense of humour or our ability to get through the day, but will find that laughing at our troubles dispels them rather than hides them. As a mood remedy, Agrimony helps anyone who is trying not to face a trouble and using jokes and false smiles to avoid a painful reality.
', N'../../Images/Flowers/agrimony.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (2, N'Aspen', N'Aspen is the remedy for any fear whose cause can''t be named. At one end of the spectrum the Aspen fear may be no more than a sense of foreboding, an uneasy anxiety that something unpleasant or frightening is going to happen. At the other it can be a real terror, with physical symptoms such as the hair standing on end.
Sometimes people think of Aspen as a night-time fear, related to dreams and night terrors. Aspen would certainly be the right remedy if you were lying awake in the dark scared of something but not knowing what it was. But in fact Dr Bach said that fear of the dark is a Mimulus fear, since the cause (the dark) can be named. And nameless Aspen fears are just as likely to occur in full sunlight as on a dark night.
', N'../../Images/Flowers/aspen.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (3, N'Beech', N'Beech was described by Dr Bach as the remedy for people who ''feel the need to see more good and beauty in all that surrounds them.''
People in a Beech state are intolerant of difference. They lack compassion and understanding of the circumstances and paths that other people are given, and fail to see that they too are working towards perfection in their own ways.
Sometimes Beech intolerance is manifested as outbursts of irritability: the remedy helps to encourage tolerance and understanding, and as this happens so the irritability also fades.
', N'../../Images/Flowers/beech.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (4, N'Centaury', N'Centaury is for people who find it difficult to say ''no'' to others. Centauries are kind, gentle souls and like to help. But sometimes other more ruthless people take advantage of this, and instead of being a willing servant the Centaury person ends up the slave of another''s wishes.
The Centaury remedy doesn''t harden us or make us callous. Instead it supports the development of courage and self-determination. We are better able to draw a line and make space where we can be ourselves, free of the desires and commands of others.
', N'../../Images/Flowers/centaury.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (5, N'Cerato', N'Cerato is for people who find it difficult to say ''no'' to others. Centauries are kind, gentle souls and like to help. But sometimes other more ruthless people take advantage of this, and instead of being a willing servant the Centaury person ends up the slave of another''s wishes.
The Centaury remedy doesn''t harden us or make us callous. Instead it supports the development of courage and self-determination. We are better able to draw a line and make space where we can be ourselves, free of the desires and commands of others.
', N'../../Images/Flowers/cerato.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (6, N'Cherry Plum', N'Cherry Plum is one of the remedies that Dr Bach grouped together under the heading Fear. The Cherry Plum fear is very specific: it is the fear that one is going to lose control of oneself and do something dreadful, such as injuring others or harming oneself. Fears of going mad and of acting irrationally are Cherry Plum states.
Cherry Plum is also the remedy for a loss of control that has already taken place, because of the frantic fear and dread associated with such situations. Think of the fear a small child feels in the grip of a screaming, irrational tantrum: this too is a Cherry Plum state.
Cherry Plum is one of the ingredients in Dr Bach''s original crisis formula, which he put together for emergency use.
', N'../../Images/Flowers/cherrypl.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (7, N'Chestnut Bud', N'Chestnut Bud is for people who fail to learn the lessons of life. They may repeat the same mistakes over and over, such as taking a succession of identical jobs and being surprised to find each one unfulfilling. They may also see others making a mistake and fail to apply the lesson to their own lives. They go right ahead and make the same mistake themselves.
It''s good to move on and leave the past behind, but in a Chestnut Bud state we are almost too ready to do this. We give so little thought to the past that we fail to learn and are doomed to repeat our failures. Chestnut Bud helps us learn and move on to genuinely new experiences.
', N'../../Images/Flowers/chestbud.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (8, N'Chicory', N'Chicory people are full of love and care for their families and friends. But they expect to receive love and attention in return, with interest, and feel slighted and unnecessarily hurt if they don''t get all they expect. Their great love can lead them to hold onto their loved ones and try to keep them dependent and close to hand. This may stifle the development of other personalities, or simply drive people away.
When we fall into this state the remedy helps bring out the positive side of Chicory: love given unconditionally and in freedom.
', N'../../Images/Flowers/chicory.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (9, N'Clematis', N'Clematis is for people whose minds drift away from the present into fantasies of the future, or into alternative versions of the present. Often they dream of future success, creative endeavour and achievement. The danger is that they are not sufficiently anchored in reality to make their dreams happen.
The remedy helps bring us back to earth and back to ourselves so that we can act to build a better life, instead of living in daydreams.
Sometimes people confuse the Clematis state withHoneysuckle, but the two are quite different. In the Honeysuckle state we live in nostalgic fantasies of the past or relive old regrets; as Clematis people our thoughts drift away to imagined futures.
Clematis is one of the ingredients in Dr Bach''s original crisis formula, where it is used to help the fuzzy, faint, light-headed feelings that may come in emergencies.
', N'../../Images/Flowers/clematis.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (10, N'Crab Apple', N'Crab Apple is known as the cleansing remedy, and as such is the added ''sixth ingredient'' in the cream version of Dr Bach''s original crisis formula. Its main use is to help people who dislike some aspect of their appearance or personality, or feel that they have something unclean or poisonous about them.
Sometimes in a Crab Apple state we disregard genuine problems and concentrate obsessively on one thing that we have fixed on - sometimes a quite minor aspect of the whole. We might take Crab Apple to cleanse obsessive, repetitive behaviour such as hand-washing, re-checking that appliances are unplugged, and so on.
', N'../../Images/Flowers/crabappl.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (11, N'Elm', N'Elm is the remedy for people suffering a temporary loss of confidence due to the overwhelming amount of responsibility they have taken on. Genuine Elm types are people who are successful and carrying out work they believe in, but at times the burden brings them down and they feel will not be able to cope.
The remedy helps to dispel these feelings so that we can resume our lives without thought of failure.
The Elm state can be usefully contrasted with that of Larch. People in the former take up challenges willingly and only occasionally doubt their abilities; it''s the scale of a task, rather than the difficulty of doing something well, that causes the crisis. Larch people are convinced they are going to fail right from the start, and so tend not to try in the first place.
', N'../../Images/Flowers/elm.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (12, N'Gentian', N'Gentian is for that relatively mild downheartedness we sometimes feel when things go wrong. We miss a bus; fail an exam; miss out on an opportunity: it knocks us back. Often the feeling lifts by itself, but the remedy can be used to lift it sooner so that we are able to make things go right instead of just hoping they will.
Gentian is often confused with Gorse, which is also a remedy for feeling down when things go wrong. The difference is largely one of degree. People in a Gorse state have decided to give up. They refuse to be encouraged, and even if they seek a solution they will do so grudgingly, assuring everyone that there is no use trying. People in a Gentian state are less pessimistic and more prepared to try again.
', N'../../Images/Flowers/gentian.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (13, N'Gorse', N'Gorse is the remedy for people who have given up belief and hope. Gorse represents a stronger kind of downheartedness than the Gentian state, because Gorse people wilfully refuse to be encouraged, so certain are they that their case is hopeless. If ill, they may think themselves incurable, and that nothing can be done.
Nevertheless, Dr Bach classified Gorse as a remedy for uncertainty, and not as a remedy for despairalongside Sweet Chestnut. This demonstrates that the main problem with Gorse people is a loss of faith: if we can be persuaded to see things in a different light there is usually a way forward. This is what the Gorse remedy helps to achieve.
', N'../../Images/Flowers/gorse.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (14, N'Heather', N'Heather is for people who are obsessed with themselves but do not like to be alone. Dr Bach called them ''buttonholers'' because they latch onto people, all the time talking at exhaustive length about their problems, great and small, until people begin actively to avoid them. Thus the thing Heather people fear - loneliness - is brought about because of their behaviour.
The remedy helps us see our own concerns in the context of other people''s. Having suffered ourselves from the need to talk, we become good listeners. As a result people seek us out for our compassion rather than avoiding us because of our self-centredness.
', N'../../Images/Flowers/heather.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (15, N'Holly', N'Holly is often thought of as the remedy for anger - but this isn''t necessarily the case. In the Bach system anger is a secondary emotion and we need to look more closely at the cause. Anger based onimpatience needs another remedy, for example, as do those angers based on feelings of personal unfairness or impersonal injustice, or where there is a simple loss of control.
Holly is actually the remedy for very negative, aggressive feelings directed at others - feelings such as hatred, suspicion, envy, spite. The basic problem is an absence of love, and the remedy works to encourage our generosity of spirit and an openness towards others
', N'../../Images/Flowers/holly.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (16, N'Honeysuckle', N'Honeysuckle is for people who live in the past instead of the present. They feel that their best days are behind them and that there is little to look forward to, and as a consequence they prefer to dwell on past happinesses (or past misfortunes). In a more minor key, homesickness and nostalgia are also Honeysuckle states.
The remedy helps us to learn from and recall the past without needing to relive it, so that we can progress into the present and take joy from today and tomorrow.
', N'../../Images/Flowers/honeysuc.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (17, N'Hornbeam', N'Hornbeam is used against feelings of exhaustion and tiredness that come before an effort has been made.
The person in this state feels weary when he looks forward at the demands of the day. It''s easier to stay in bed or put off making a start, or find other things to do - but if an effort can be made to get started the weariness will fade, a sign that unlike the Olivestate this tiredness is wholly ''in the mind'' and can''t be traced to actual events in the real world.
', N'../../Images/Flowers/hornbeam.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (18, N'Impatients', N'Impatients is, as its name suggests, the remedy for impatience and the frustration and irritability that often go with it. Anyone can get into this state of mind, but there are also genuine Impatiens types, who live life at a rush and hate being held back by more methodical people. To avoid this irritation they prefer to work alone: the Impatiens boss is the one who sends staff home early so she can get the job finished quicker.
The remedy helps us be less hasty and more relaxed with others. It is also an ingredient in Dr Bach''s original crisis formula, where it helps calm agitated thoughts and feelings.
', N'../../Images/Flowers/impatien.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (19, N'Larch', N'Larch is the remedy for people who feel that they are not as competent as others. They lack confidence in their ability to do things well, assume they will fail, and often don''t bother to try.
We can contrast this with people in an Elm state, where it is a willingness to take on too much that causes a crisis.
The remedy helps us to move ahead regardless of thoughts of success and failure. More prepared to take risks and get involved, we get more out of living.
', N'../../Images/Flowers/larch.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (20, N'Mimulus', N'Mimulus is the remedy for known fears. Whenever you are frightened or anxious about something, and you can say what that ''something'' is, then Mimulus is the remedy to take.
Mimulus fears are those of every day: fear of public speaking, of the dark, of aggressive dogs, of illness and pain. Phobias can also be Mimulus fears if the cause of the fear - whether spiders, birds or open spaces - can be named. Rock Rose might be preferred where the phobia causes real terror. Where the fear is vague and there is general anxiety and apprehension without a specific named cause, there Aspen might be a better choice.
Mimulus is used as a type or personality remedy for those of us who tend generally to be nervous, timid and shy. We might blush easily or stammer, and will usually avoid social occasions and any event where we will be in the limelight.
Mimulus brings out the quiet courage and strength that lies hidden in all of us, so that we can face the everyday trials of life without fear.
', N'../../Images/Flowers/mimulus.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (21, N'Mustard', N'Mustard is the remedy for deep gloom and depression that descends for no apparent reason out of a clear blue sky.
People in this state often list all the reasons they have to feel happy and contented, but still everything looks black and hopeless to them.
The remedy helps to dispel the clouds so that we can once again appreciate the joy and peace in our lives.
', N'../../Images/Flowers/mustard.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (22, N'Oak', N'Oak is the remedy for strong, steady people who never give up under adversity. They plough on with determination, and never consider resting until they are past the point of exhaustion.
Oaks often have many people relying on them, and their sense of duty is strong. They may feel frustrated and unhappy if illness or exhaustion mean they are forced to do less than they wanted.
So much is positive about the Oak person, but the negative side is the stubborn refusal to rest or sit back when the need for rest is obvious. The remedy is used to help us remain strong in adversity, while at the same time we learn it is better sometimes to let go rather than crack under the strain.
', N'../../Images/Flowers/oak.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (23, N'Olive', N'Olive is the remedy for tiredness and exhaustion after an effort of some kind, such as hard physical or mental labour, or the long struggle against illness.
Olive can be usefully contrasted with Hornbeam, which is the remedy for tiredness felt before an effort has been made.
The remedy gives us what we need to restore our strength and the faith we need to continue an effort. We may feel energised; or we may at last be able to rest properly.
', N'../../Images/Flowers/olive.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (24, N'Pine', N'Pine helps when we blame ourselves for things done or undone.
In a Pine state we may feel guilty even when events outside our control have caused a problem, or we may assume responsibility for mistakes made by others. We suffer needlessly.
We sometimes feel so guilty in a Pine state that we end up saying ''sorry'' all the time.
The positive aspect of Pine is seen when we acknowledge our faults without dwelling on them, and put right where we can the things we did wrong. But at the same time we know when we are blameless or have done our best, and are content.
', N'../../Images/Flowers/pine.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (25, N'Red Chestnut', N'Red Chestnut is for people who feel fear for the well-being of others: the husband afraid when his wife goes out alone after dark; the mother fretting over what may happen to her child at school.
Red Chestnut fears are natural, normal concerns magnified to the point where they have a negative effect on the people who are the object of concern, undermining their confidence and self-belief.
When we are in this state the remedy helps us send out calm, unworried thoughts to our loved ones, so that instead of making everyone anxious we are rocks on whom others lean.
', N'../../Images/Flowers/redchest.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (26, N'Rock Rose', N'Rock Rose is the remedy against terror, and as such is an important ingredient in Dr Bach''s traditional crisis combination.
The Rock Rose state may start out as a more everyday Mimulus or Red Chestnut state, but it is further along the path from these, being a panicky, terrorstruck fear that makes conscious thought and decision next to impossible.
The remedy provides calm and courage. We are able to forget fear as our courage is renewed.
', N'../../Images/Flowers/rockrose.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (27, N'Rock Water', N'Rock Water is the remedy for people who take self-repression and self-denial to extremes.
People in this state seek to perfect themselves in some way. They set themselves rules and targets and are strict and harsh with themselves when they feel they are falling short.
If they seek to influence others it is by example only. They tend not to criticise out loud, as a Beechperson would, nor do they persuade (Vervain) or command (Vine).
The Rock Water remedy doesn''t stop us from having high ideals or from trying to meet them. It simply allows us to unbend. We are kinder to ourselves and not so dismissive of life''s softer pleasures.
', N'../../Images/Flowers/rockwate.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (28, N'Sclerantus', N'Sclerantus helps when we find it difficult to make up our minds. Sometimes there are two options, sometimes more.
Scleranthus uncertainty affects both small and not-so-small decisions. ''Should I marry Joe or Peter?'' and ''should I buy a red notebook or a blue one?'' may both be Scleranthus states.
But we should consider Wild Oat instead if indecisiveness is to do with our deeper ambitions for our lives: ''I want to do something worthwhile - will marriage and a family bring me fulfilment?''
Sometimes Scleranthus indecisiveness manifests itself in other ways. Some people who suffer mood swings and motion sickness turn out to be suffering from Scleranthus indecision. But neither symptom by itself is a Scleranthus indication - the emotional state is always key.
Taking the remedy helps us know what we want. We reconnect with our intuition and are able to choose simply and decisively.
', N'../../Images/Flowers/sclerant.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (29, N'Star of Bethlem', N'Star of Bethlem is one of the remedies in the traditional crisis formula. It is the remedy for the after-effects of shock, such as is caused by unexpected bad news or any unexpected and unwelcome event.
It can be used just as well for the effects of a shock received many years ago, even very early in childhood.
This is also the remedy for that sense of emptiness and loss that sometimes occurs when a loved one dies or moves away. Star of Bethlehem is a comforting remedy to take in such circumstances.
', N'../../Images/Flowers/starbeth.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (30, N'Sweet Chestnut', N'Sweet Chestnut is the remedy for people who have reached the limits of endurance. They have explored all avenues and see no way out of their difficulties. They feel there is nothing left for them but annihilation and emptiness.
Whereas people in a Gorse state decide to give up when there are possible solutions untried, the person in a Sweet Chestnut state is genuinely at the end of the line: theirs is appalling, final despair.
In this extreme state, the remedy helps us remain masters of our lives, and renews our hope and strength. Sometimes a way ahead may open even when we expect it least.
', N'../../Images/Flowers/swchest.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (31, N'Vervain', N'Vervain''s people are perfectionists with a keen sense of justice. They are blessed with extreme mental energy that they willingly throw into the causes they believe in.
The Vervain enthusiasm can be infectious, and they feel a strong need to persuade others to their own point of view. But at an extreme they are in danger of becoming fanatics, unable to listen to alternative points of view, and they may put themselves under a great deal of stress because they find it so hard to switch off and relax.
When we are in this state the remedy helps us regain our balance so that body and mind and be restored. It encourages the wisdom to enjoy life and the passage of time instead of always feeling the need to be active.
', N'../../Images/Flowers/vervain.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (32, N'Vine', N'Vine is for people who know their own minds and think they know what is best for others. They are strong and enjoy the exercise of power, but in their negative states this can lead them to dominate others by force alone.
Tyrannical fathers and overbearing bosses are typical negative Vines, in that they expect absolute obedience from others and will not be overly concerned with winning hearts and minds as long as their orders are followed. In this respect Vine is very different from Vervain. Vervains attempt to convert others to their way of thinking; Vines are content with the simple imposition of discipline.
In their positive aspect Vine people make wise, gentle and loving guides who can inspire and lead others without resorting to force. When we fall into issuing orders the remedy is given to encourage us to show this positive side.
', N'../../Images/Flowers/vine.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (33, N'Walnut', N'Walnut is the remedy to help protect us against outside influences in general, and against the effects of change in particular.
Walnut people are fulfilling their purpose in life but sometimes doubt their path when they hear the opinions, theories or beliefs of others. Unlike Ceratopeople, those in a Walnut state don''t actively seek out the opinions of others. But opinions are offered anyway: they may be affected almost despite themselves.
As a remedy against the effects of change, Walnut is useful at all the transition points in life, from birth to teething to going to school to puberty to marriage to childbearing to retirement and beyond. It helps break links with the past so that we can move forward more easily.
', N'../../Images/Flowers/walnut.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (34, N'Water Violet', N'Water Violet s the remedy for those talented, capable people whose independence and self-reliance can make them seem proud and disdainful.
True Water Violet people tend to be upright, quiet and dignified. They prefer their own company or that of a few close friends.
We need the remedy when our natural reserve has built a barrier between us and others, leaving us lonely and unable to make contact with those around. Water Violet helps bring us back into balance so that we can be more involved with humanity.
', N'../../Images/Flowers/watervio.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (35, N'White Chestnut', N'White Chestnut is the remedy for unwanted thoughts and mental arguments that intrude into the mind and stop us concentrating.
White Chestnut thoughts are often described as ''worrying'' - but they are not necessarily anxious or fearful, more repetitive. They worry at us like a dog worries a bone. White Chestnut thoughts go nowhere. They circle round and round in the head like a looped recording.
The remedy helps us think straight. We can deal calmly and rationally with any underlying problems that might be causing the trouble.
', N'../../Images/Flowers/whiteche.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (36, N'Wild Oat', N'Wild Oat is the remedy for people who feel they want to do something worthwhile with their lives but don''t know which direction to go. They tend to drift from one thing to another without finding a true path. They become frustrated and downcast as a result.
We can compare the Wild Oat state with that ofScleranthus. In the latter the goal itself isn''t in doubt, but we need to decide how to get there. For example, you might know that marriage is for you. But which partner to choose? - that would be a Scleranthus problem, one of choosing between a limited number of options.
In a Wild Oat state the goal itself is less defined. For example, you know you want a fulfilling life. But does that mean getting married or staying single? Finding a career? Changing religion? It''s much more difficult in a Wild Oat state to define the options as our goal is not clear.
When we are in this state of frustrated and vague ambition, Wild Oat helps us find our true path. It puts us back in touch with our sense of purpose so that the way ahead seems clearer.
', N'../../Images/Flowers/wildoat.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (37, N'Wild Rose', N'Wild Rose is for people who have accepted all that life throws at them and have given up the struggle for fulfilment.
In this state we resign ourselves to the way things are, to the extent where we don''t complain or seem particularly unhappy. Instead we shrug our shoulders - there''s no point trying to change things - and just drift along.
The remedy helps reawaken our interest in life. In a positive Wild Rose state we are happy-go-lucky. Instead of apathy we feel a sense of purpose that brings increased happiness and enjoyment.
', N'../../Images/Flowers/wildrose.jpg', N'Silver')
INSERT [dbo].[Flowers] ([Id], [Name], [Description], [ImagePath], [FlowerColor]) VALUES (38, N'Willow', N'Willow is for people who feel resentful and bitter about the way their lives have gone.
In a Willow state we begrudge others their success and happiness, and are reluctant to admit when our own lives go well. We prefer to grumble, and are prone to resentment and self-pity.
The remedy encourages the rebirth of optimism and faith. It helps us feel more generous towards others and more aware that negative thinking can attract the very ill-fortune of which we complain.
', N'../../Images/Flowers/willow.jpg', N'Silver')
SET IDENTITY_INSERT [dbo].[Flowers] OFF
USE [master]
GO
ALTER DATABASE [Test.Models.DataLayer] SET  READ_WRITE 
GO
