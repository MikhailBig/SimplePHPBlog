-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2019 at 11:25 AM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` text NOT NULL,
  `text` text NOT NULL,
  `date` int(11) UNSIGNED NOT NULL,
  `author` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `intro`, `text`, `date`, `author`) VALUES
(1, 'New blog article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet felis tortor. Aenean at dolor volutpat, laoreet magna sed, porttitor quam. Aliquam sed vehicula dui, eget tempor mi. Integer sodales, purus convallis maximus tempus, nibh ipsum ornare sem, id sodales sapien lacus id mauris. Suspendisse potenti. Cras ac mauris id tortor blandit faucibus. Curabitur lacinia lectus vel velit malesuada, eget bibendum odio dictum. Sed vel blandit diam. Vivamus luctus ante vitae tellus vestibulum ultrices. Vivamus gravida tincidunt tempor. Sed vestibulum ex id mi accumsan scelerisque. Morbi eget orci ante. Nullam vitae turpis neque. Sed bibendum nisi sit amet urna venenatis lobortis. Aenean a cursus ex, vitae aliquam libero. Nam tristique, urna sed lacinia egestas, metus purus tincidunt lacus, at venenatis odio arcu ac orci.', 'Nam ornare arcu ac orci hendrerit, in lobortis mauris commodo. Ut lobortis erat velit. Sed id ex sit amet purus tincidunt tincidunt at non turpis. Aliquam bibendum quam quis nisl maximus pellentesque. Praesent vel turpis arcu. Proin eu dolor dictum, dapibus leo vitae, mollis ante. Mauris mollis commodo diam, id euismod dui pretium in. Sed lacinia consectetur congue. Donec a pretium mauris. Pellentesque fermentum finibus dui at venenatis. Pellentesque elit felis, mattis at eros eget, eleifend ultricies mauris.\n\nNunc enim libero, luctus non augue sit amet, ullamcorper posuere odio. Maecenas quis odio augue. Quisque vitae lectus et libero facilisis imperdiet vitae vitae nibh. Quisque in lobortis turpis. Sed et eros tempus, scelerisque ex in, ultricies lacus. Suspendisse quis orci orci. Cras non dui elementum, lacinia diam sit amet, mollis sem. Pellentesque dignissim augue id dolor tempus, eu vulputate neque laoreet. Vestibulum in erat eu lacus dignissim feugiat. Suspendisse potenti. Vivamus gravida molestie ipsum ut vestibulum. Integer tincidunt porta est eget rhoncus.\n\nPellentesque ultrices libero id finibus tincidunt. Pellentesque fringilla bibendum mauris nec luctus. Pellentesque arcu eros, pretium ut dolor vitae, tristique molestie arcu. Nunc quis nisi vitae purus placerat scelerisque. Cras tempor purus sed est cursus, nec tempus ante aliquet. Suspendisse ac velit et mauris aliquam tincidunt eu sit amet ligula. Sed ac ultricies orci. Vestibulum aliquet fermentum tellus in rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce quis tincidunt sapien. Praesent a venenatis lorem.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam metus nunc, luctus in ultrices nec, auctor in mauris. Quisque a nisi ornare, imperdiet nunc at, hendrerit orci. Etiam porta quam in neque placerat, at ultrices nisl ullamcorper. Nam nec purus nec dolor congue mollis. Pellentesque eget magna at quam ultricies rhoncus. Sed justo massa, tincidunt at scelerisque vel, lobortis ac dui. Curabitur et ante tincidunt, consectetur quam vel, pretium nibh. Praesent in nibh dolor. Phasellus vestibulum lobortis elit, at dapibus justo aliquam non. Vivamus eu porttitor lectus. Aliquam consequat convallis malesuada. Praesent porttitor sagittis sem vitae sagittis. Donec et lectus in ex porttitor pulvinar ut id nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec imperdiet semper nibh, ac suscipit dui elementum sed.', 1557314605, 'newmail1@gmail.com'),
(2, 'New blog article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed imperdiet felis tortor. Aenean at dolor volutpat, laoreet magna sed, porttitor quam. Aliquam sed vehicula dui, eget tempor mi. Integer sodales, purus convallis maximus tempus, nibh ipsum ornare sem, id sodales sapien lacus id mauris. Suspendisse potenti. Cras ac mauris id tortor blandit faucibus. Curabitur lacinia lectus vel velit malesuada, eget bibendum odio dictum. Sed vel blandit diam. Vivamus luctus ante vitae tellus vestibulum ultrices. Vivamus gravida tincidunt tempor. Sed vestibulum ex id mi accumsan scelerisque. Morbi eget orci ante. Nullam vitae turpis neque. Sed bibendum nisi sit amet urna venenatis lobortis. Aenean a cursus ex, vitae aliquam libero. Nam tristique, urna sed lacinia egestas, metus purus tincidunt lacus, at venenatis odio arcu ac orci.', 'Nam ornare arcu ac orci hendrerit, in lobortis mauris commodo. Ut lobortis erat velit. Sed id ex sit amet purus tincidunt tincidunt at non turpis. Aliquam bibendum quam quis nisl maximus pellentesque. Praesent vel turpis arcu. Proin eu dolor dictum, dapibus leo vitae, mollis ante. Mauris mollis commodo diam, id euismod dui pretium in. Sed lacinia consectetur congue. Donec a pretium mauris. Pellentesque fermentum finibus dui at venenatis. Pellentesque elit felis, mattis at eros eget, eleifend ultricies mauris.\n\nNunc enim libero, luctus non augue sit amet, ullamcorper posuere odio. Maecenas quis odio augue. Quisque vitae lectus et libero facilisis imperdiet vitae vitae nibh. Quisque in lobortis turpis. Sed et eros tempus, scelerisque ex in, ultricies lacus. Suspendisse quis orci orci. Cras non dui elementum, lacinia diam sit amet, mollis sem. Pellentesque dignissim augue id dolor tempus, eu vulputate neque laoreet. Vestibulum in erat eu lacus dignissim feugiat. Suspendisse potenti. Vivamus gravida molestie ipsum ut vestibulum. Integer tincidunt porta est eget rhoncus.\n\nPellentesque ultrices libero id finibus tincidunt. Pellentesque fringilla bibendum mauris nec luctus. Pellentesque arcu eros, pretium ut dolor vitae, tristique molestie arcu. Nunc quis nisi vitae purus placerat scelerisque. Cras tempor purus sed est cursus, nec tempus ante aliquet. Suspendisse ac velit et mauris aliquam tincidunt eu sit amet ligula. Sed ac ultricies orci. Vestibulum aliquet fermentum tellus in rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce quis tincidunt sapien. Praesent a venenatis lorem.\n\nVestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam metus nunc, luctus in ultrices nec, auctor in mauris. Quisque a nisi ornare, imperdiet nunc at, hendrerit orci. Etiam porta quam in neque placerat, at ultrices nisl ullamcorper. Nam nec purus nec dolor congue mollis. Pellentesque eget magna at quam ultricies rhoncus. Sed justo massa, tincidunt at scelerisque vel, lobortis ac dui. Curabitur et ante tincidunt, consectetur quam vel, pretium nibh. Praesent in nibh dolor. Phasellus vestibulum lobortis elit, at dapibus justo aliquam non. Vivamus eu porttitor lectus. Aliquam consequat convallis malesuada. Praesent porttitor sagittis sem vitae sagittis. Donec et lectus in ex porttitor pulvinar ut id nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec imperdiet semper nibh, ac suscipit dui elementum sed.', 1557314773, 'newmail1@gmail.com'),
(3, 'Article 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget nulla sit amet sapien laoreet ultrices. Proin ut mattis eros, sit amet porta dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam in mollis est. In nec ante sollicitudin, dignissim mauris quis, fermentum lorem. Nulla ut ligula lectus. Aenean at felis mi. Duis nec mauris ut ante eleifend consequat id sit amet elit. Maecenas nec lobortis ex. Suspendisse et odio eu dui volutpat mollis. Aliquam fermentum orci ut dolor suscipit, in maximus nisl tempor. Donec fringilla vel lectus in imperdiet.', 'Sed id vulputate tortor, vel viverra sem. Proin ut velit nulla. Vestibulum et commodo nibh. Suspendisse congue orci non dictum viverra. Morbi nec efficitur metus. Quisque nec finibus augue, a faucibus urna. Nulla in pharetra lacus. Ut ultrices turpis vitae justo fringilla bibendum. Praesent in odio iaculis, aliquam felis eget, sodales dolor. Fusce a nibh mauris. Nam laoreet ipsum non justo aliquet tincidunt. Sed ut dui luctus, luctus nibh a, euismod justo. Curabitur sed feugiat odio.\n\nMorbi at blandit nibh. Praesent gravida, velit at vehicula facilisis, libero ante viverra quam, id vehicula tellus arcu vitae neque. Suspendisse vehicula nulla et accumsan convallis. Vivamus consectetur porttitor justo, id consequat sapien. Phasellus hendrerit justo nec commodo interdum. Donec at tincidunt risus, vel eleifend urna. Pellentesque egestas scelerisque interdum. Sed scelerisque auctor nulla, vel tincidunt risus lobortis id. In non massa nulla. Sed laoreet mi eget risus elementum vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce viverra finibus augue, viverra facilisis risus. Morbi molestie tortor at laoreet pharetra. Curabitur ut velit auctor enim elementum lobortis. Integer turpis magna, tristique et accumsan non, rutrum nec metus.\n\nAenean scelerisque dolor vitae elit rhoncus pharetra. Morbi dictum varius placerat. Proin vitae massa consequat, gravida est imperdiet, tristique justo. Pellentesque tempor consectetur libero, ultricies cursus nulla aliquam nec. Suspendisse vehicula, sapien nec tempus feugiat, quam justo gravida metus, quis cursus elit nunc ut nulla. Cras ut turpis augue. Mauris sit amet luctus nisl. Suspendisse faucibus magna at risus elementum sagittis et at risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis massa sed augue tempor porttitor. Duis convallis pellentesque pellentesque. Nunc ut lorem nec lorem ultrices vestibulum. Duis ut efficitur arcu. Ut porttitor varius eros eu lobortis.\n\nPhasellus rutrum velit vel risus scelerisque, sit amet iaculis mi placerat. Aliquam erat volutpat. Duis placerat magna ac felis pellentesque, nec laoreet enim mollis. Vivamus vel orci erat. Ut ac tellus in nunc dictum posuere sit amet et nibh. Integer at ex ac diam maximus semper et id dolor. Aliquam hendrerit, est vitae tristique ullamcorper, ligula nisl lobortis est, vel condimentum augue erat et lacus. Proin id libero sed felis pulvinar accumsan. Proin sed mattis neque, eu ultricies arcu. Suspendisse pulvinar vel leo eu sagittis.', 1557345734, 'newmail1@gmail.com'),
(4, 'Article 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget nulla sit amet sapien laoreet ultrices. Proin ut mattis eros, sit amet porta dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam in mollis est. In nec ante sollicitudin, dignissim mauris quis, fermentum lorem. Nulla ut ligula lectus. Aenean at felis mi. Duis nec mauris ut ante eleifend consequat id sit amet elit. Maecenas nec lobortis ex. Suspendisse et odio eu dui volutpat mollis. Aliquam fermentum orci ut dolor suscipit, in maximus nisl tempor. Donec fringilla vel lectus in imperdiet.', 'Sed id vulputate tortor, vel viverra sem. Proin ut velit nulla. Vestibulum et commodo nibh. Suspendisse congue orci non dictum viverra. Morbi nec efficitur metus. Quisque nec finibus augue, a faucibus urna. Nulla in pharetra lacus. Ut ultrices turpis vitae justo fringilla bibendum. Praesent in odio iaculis, aliquam felis eget, sodales dolor. Fusce a nibh mauris. Nam laoreet ipsum non justo aliquet tincidunt. Sed ut dui luctus, luctus nibh a, euismod justo. Curabitur sed feugiat odio.\n\nMorbi at blandit nibh. Praesent gravida, velit at vehicula facilisis, libero ante viverra quam, id vehicula tellus arcu vitae neque. Suspendisse vehicula nulla et accumsan convallis. Vivamus consectetur porttitor justo, id consequat sapien. Phasellus hendrerit justo nec commodo interdum. Donec at tincidunt risus, vel eleifend urna. Pellentesque egestas scelerisque interdum. Sed scelerisque auctor nulla, vel tincidunt risus lobortis id. In non massa nulla. Sed laoreet mi eget risus elementum vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce viverra finibus augue, viverra facilisis risus. Morbi molestie tortor at laoreet pharetra. Curabitur ut velit auctor enim elementum lobortis. Integer turpis magna, tristique et accumsan non, rutrum nec metus.\n\nAenean scelerisque dolor vitae elit rhoncus pharetra. Morbi dictum varius placerat. Proin vitae massa consequat, gravida est imperdiet, tristique justo. Pellentesque tempor consectetur libero, ultricies cursus nulla aliquam nec. Suspendisse vehicula, sapien nec tempus feugiat, quam justo gravida metus, quis cursus elit nunc ut nulla. Cras ut turpis augue. Mauris sit amet luctus nisl. Suspendisse faucibus magna at risus elementum sagittis et at risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis massa sed augue tempor porttitor. Duis convallis pellentesque pellentesque. Nunc ut lorem nec lorem ultrices vestibulum. Duis ut efficitur arcu. Ut porttitor varius eros eu lobortis.\n\nPhasellus rutrum velit vel risus scelerisque, sit amet iaculis mi placerat. Aliquam erat volutpat. Duis placerat magna ac felis pellentesque, nec laoreet enim mollis. Vivamus vel orci erat. Ut ac tellus in nunc dictum posuere sit amet et nibh. Integer at ex ac diam maximus semper et id dolor. Aliquam hendrerit, est vitae tristique ullamcorper, ligula nisl lobortis est, vel condimentum augue erat et lacus. Proin id libero sed felis pulvinar accumsan. Proin sed mattis neque, eu ultricies arcu. Suspendisse pulvinar vel leo eu sagittis.', 1557345738, 'newmail1@gmail.com'),
(5, 'Article 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget nulla sit amet sapien laoreet ultrices. Proin ut mattis eros, sit amet porta dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam in mollis est. In nec ante sollicitudin, dignissim mauris quis, fermentum lorem. Nulla ut ligula lectus. Aenean at felis mi. Duis nec mauris ut ante eleifend consequat id sit amet elit. Maecenas nec lobortis ex. Suspendisse et odio eu dui volutpat mollis. Aliquam fermentum orci ut dolor suscipit, in maximus nisl tempor. Donec fringilla vel lectus in imperdiet.', 'Sed id vulputate tortor, vel viverra sem. Proin ut velit nulla. Vestibulum et commodo nibh. Suspendisse congue orci non dictum viverra. Morbi nec efficitur metus. Quisque nec finibus augue, a faucibus urna. Nulla in pharetra lacus. Ut ultrices turpis vitae justo fringilla bibendum. Praesent in odio iaculis, aliquam felis eget, sodales dolor. Fusce a nibh mauris. Nam laoreet ipsum non justo aliquet tincidunt. Sed ut dui luctus, luctus nibh a, euismod justo. Curabitur sed feugiat odio.\n\nMorbi at blandit nibh. Praesent gravida, velit at vehicula facilisis, libero ante viverra quam, id vehicula tellus arcu vitae neque. Suspendisse vehicula nulla et accumsan convallis. Vivamus consectetur porttitor justo, id consequat sapien. Phasellus hendrerit justo nec commodo interdum. Donec at tincidunt risus, vel eleifend urna. Pellentesque egestas scelerisque interdum. Sed scelerisque auctor nulla, vel tincidunt risus lobortis id. In non massa nulla. Sed laoreet mi eget risus elementum vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce viverra finibus augue, viverra facilisis risus. Morbi molestie tortor at laoreet pharetra. Curabitur ut velit auctor enim elementum lobortis. Integer turpis magna, tristique et accumsan non, rutrum nec metus.\n\nAenean scelerisque dolor vitae elit rhoncus pharetra. Morbi dictum varius placerat. Proin vitae massa consequat, gravida est imperdiet, tristique justo. Pellentesque tempor consectetur libero, ultricies cursus nulla aliquam nec. Suspendisse vehicula, sapien nec tempus feugiat, quam justo gravida metus, quis cursus elit nunc ut nulla. Cras ut turpis augue. Mauris sit amet luctus nisl. Suspendisse faucibus magna at risus elementum sagittis et at risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis massa sed augue tempor porttitor. Duis convallis pellentesque pellentesque. Nunc ut lorem nec lorem ultrices vestibulum. Duis ut efficitur arcu. Ut porttitor varius eros eu lobortis.\n\nPhasellus rutrum velit vel risus scelerisque, sit amet iaculis mi placerat. Aliquam erat volutpat. Duis placerat magna ac felis pellentesque, nec laoreet enim mollis. Vivamus vel orci erat. Ut ac tellus in nunc dictum posuere sit amet et nibh. Integer at ex ac diam maximus semper et id dolor. Aliquam hendrerit, est vitae tristique ullamcorper, ligula nisl lobortis est, vel condimentum augue erat et lacus. Proin id libero sed felis pulvinar accumsan. Proin sed mattis neque, eu ultricies arcu. Suspendisse pulvinar vel leo eu sagittis.', 1557345739, 'newmail1@gmail.com'),
(6, 'Article 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget nulla sit amet sapien laoreet ultrices. Proin ut mattis eros, sit amet porta dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam in mollis est. In nec ante sollicitudin, dignissim mauris quis, fermentum lorem. Nulla ut ligula lectus. Aenean at felis mi. Duis nec mauris ut ante eleifend consequat id sit amet elit. Maecenas nec lobortis ex. Suspendisse et odio eu dui volutpat mollis. Aliquam fermentum orci ut dolor suscipit, in maximus nisl tempor. Donec fringilla vel lectus in imperdiet.', 'Sed id vulputate tortor, vel viverra sem. Proin ut velit nulla. Vestibulum et commodo nibh. Suspendisse congue orci non dictum viverra. Morbi nec efficitur metus. Quisque nec finibus augue, a faucibus urna. Nulla in pharetra lacus. Ut ultrices turpis vitae justo fringilla bibendum. Praesent in odio iaculis, aliquam felis eget, sodales dolor. Fusce a nibh mauris. Nam laoreet ipsum non justo aliquet tincidunt. Sed ut dui luctus, luctus nibh a, euismod justo. Curabitur sed feugiat odio.\n\nMorbi at blandit nibh. Praesent gravida, velit at vehicula facilisis, libero ante viverra quam, id vehicula tellus arcu vitae neque. Suspendisse vehicula nulla et accumsan convallis. Vivamus consectetur porttitor justo, id consequat sapien. Phasellus hendrerit justo nec commodo interdum. Donec at tincidunt risus, vel eleifend urna. Pellentesque egestas scelerisque interdum. Sed scelerisque auctor nulla, vel tincidunt risus lobortis id. In non massa nulla. Sed laoreet mi eget risus elementum vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce viverra finibus augue, viverra facilisis risus. Morbi molestie tortor at laoreet pharetra. Curabitur ut velit auctor enim elementum lobortis. Integer turpis magna, tristique et accumsan non, rutrum nec metus.\n\nAenean scelerisque dolor vitae elit rhoncus pharetra. Morbi dictum varius placerat. Proin vitae massa consequat, gravida est imperdiet, tristique justo. Pellentesque tempor consectetur libero, ultricies cursus nulla aliquam nec. Suspendisse vehicula, sapien nec tempus feugiat, quam justo gravida metus, quis cursus elit nunc ut nulla. Cras ut turpis augue. Mauris sit amet luctus nisl. Suspendisse faucibus magna at risus elementum sagittis et at risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis massa sed augue tempor porttitor. Duis convallis pellentesque pellentesque. Nunc ut lorem nec lorem ultrices vestibulum. Duis ut efficitur arcu. Ut porttitor varius eros eu lobortis.\n\nPhasellus rutrum velit vel risus scelerisque, sit amet iaculis mi placerat. Aliquam erat volutpat. Duis placerat magna ac felis pellentesque, nec laoreet enim mollis. Vivamus vel orci erat. Ut ac tellus in nunc dictum posuere sit amet et nibh. Integer at ex ac diam maximus semper et id dolor. Aliquam hendrerit, est vitae tristique ullamcorper, ligula nisl lobortis est, vel condimentum augue erat et lacus. Proin id libero sed felis pulvinar accumsan. Proin sed mattis neque, eu ultricies arcu. Suspendisse pulvinar vel leo eu sagittis.', 1557345742, 'newmail1@gmail.com'),
(7, 'Article 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut eget nulla sit amet sapien laoreet ultrices. Proin ut mattis eros, sit amet porta dui. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam in mollis est. In nec ante sollicitudin, dignissim mauris quis, fermentum lorem. Nulla ut ligula lectus. Aenean at felis mi. Duis nec mauris ut ante eleifend consequat id sit amet elit. Maecenas nec lobortis ex. Suspendisse et odio eu dui volutpat mollis. Aliquam fermentum orci ut dolor suscipit, in maximus nisl tempor. Donec fringilla vel lectus in imperdiet.', 'Sed id vulputate tortor, vel viverra sem. Proin ut velit nulla. Vestibulum et commodo nibh. Suspendisse congue orci non dictum viverra. Morbi nec efficitur metus. Quisque nec finibus augue, a faucibus urna. Nulla in pharetra lacus. Ut ultrices turpis vitae justo fringilla bibendum. Praesent in odio iaculis, aliquam felis eget, sodales dolor. Fusce a nibh mauris. Nam laoreet ipsum non justo aliquet tincidunt. Sed ut dui luctus, luctus nibh a, euismod justo. Curabitur sed feugiat odio.\n\nMorbi at blandit nibh. Praesent gravida, velit at vehicula facilisis, libero ante viverra quam, id vehicula tellus arcu vitae neque. Suspendisse vehicula nulla et accumsan convallis. Vivamus consectetur porttitor justo, id consequat sapien. Phasellus hendrerit justo nec commodo interdum. Donec at tincidunt risus, vel eleifend urna. Pellentesque egestas scelerisque interdum. Sed scelerisque auctor nulla, vel tincidunt risus lobortis id. In non massa nulla. Sed laoreet mi eget risus elementum vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce viverra finibus augue, viverra facilisis risus. Morbi molestie tortor at laoreet pharetra. Curabitur ut velit auctor enim elementum lobortis. Integer turpis magna, tristique et accumsan non, rutrum nec metus.\n\nAenean scelerisque dolor vitae elit rhoncus pharetra. Morbi dictum varius placerat. Proin vitae massa consequat, gravida est imperdiet, tristique justo. Pellentesque tempor consectetur libero, ultricies cursus nulla aliquam nec. Suspendisse vehicula, sapien nec tempus feugiat, quam justo gravida metus, quis cursus elit nunc ut nulla. Cras ut turpis augue. Mauris sit amet luctus nisl. Suspendisse faucibus magna at risus elementum sagittis et at risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis massa sed augue tempor porttitor. Duis convallis pellentesque pellentesque. Nunc ut lorem nec lorem ultrices vestibulum. Duis ut efficitur arcu. Ut porttitor varius eros eu lobortis.\n\nPhasellus rutrum velit vel risus scelerisque, sit amet iaculis mi placerat. Aliquam erat volutpat. Duis placerat magna ac felis pellentesque, nec laoreet enim mollis. Vivamus vel orci erat. Ut ac tellus in nunc dictum posuere sit amet et nibh. Integer at ex ac diam maximus semper et id dolor. Aliquam hendrerit, est vitae tristique ullamcorper, ligula nisl lobortis est, vel condimentum augue erat et lacus. Proin id libero sed felis pulvinar accumsan. Proin sed mattis neque, eu ultricies arcu. Suspendisse pulvinar vel leo eu sagittis.', 1557345744, 'newmail1@gmail.com'),
(8, 'Article 8', 'Sed id vulputate tortor, vel viverra sem. Proin ut velit nulla. Vestibulum et commodo nibh. Suspendisse congue orci non dictum viverra. Morbi nec efficitur metus. Quisque nec finibus augue, a faucibus urna. Nulla in pharetra lacus. Ut ultrices turpis vitae justo fringilla bibendum. Praesent in odio iaculis, aliquam felis eget, sodales dolor. Fusce a nibh mauris. Nam laoreet ipsum non justo aliquet tincidunt. Sed ut dui luctus, luctus nibh a, euismod justo. Curabitur sed feugiat odio.', 'Morbi at blandit nibh. Praesent gravida, velit at vehicula facilisis, libero ante viverra quam, id vehicula tellus arcu vitae neque. Suspendisse vehicula nulla et accumsan convallis. Vivamus consectetur porttitor justo, id consequat sapien. Phasellus hendrerit justo nec commodo interdum. Donec at tincidunt risus, vel eleifend urna. Pellentesque egestas scelerisque interdum. Sed scelerisque auctor nulla, vel tincidunt risus lobortis id. In non massa nulla. Sed laoreet mi eget risus elementum vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce viverra finibus augue, viverra facilisis risus. Morbi molestie tortor at laoreet pharetra. Curabitur ut velit auctor enim elementum lobortis. Integer turpis magna, tristique et accumsan non, rutrum nec metus.\n\nAenean scelerisque dolor vitae elit rhoncus pharetra. Morbi dictum varius placerat. Proin vitae massa consequat, gravida est imperdiet, tristique justo. Pellentesque tempor consectetur libero, ultricies cursus nulla aliquam nec. Suspendisse vehicula, sapien nec tempus feugiat, quam justo gravida metus, quis cursus elit nunc ut nulla. Cras ut turpis augue. Mauris sit amet luctus nisl. Suspendisse faucibus magna at risus elementum sagittis et at risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis massa sed augue tempor porttitor. Duis convallis pellentesque pellentesque. Nunc ut lorem nec lorem ultrices vestibulum. Duis ut efficitur arcu. Ut porttitor varius eros eu lobortis.\n\nPhasellus rutrum velit vel risus scelerisque, sit amet iaculis mi placerat. Aliquam erat volutpat. Duis placerat magna ac felis pellentesque, nec laoreet enim mollis. Vivamus vel orci erat. Ut ac tellus in nunc dictum posuere sit amet et nibh. Integer at ex ac diam maximus semper et id dolor. Aliquam hendrerit, est vitae tristique ullamcorper, ligula nisl lobortis est, vel condimentum augue erat et lacus. Proin id libero sed felis pulvinar accumsan. Proin sed mattis neque, eu ultricies arcu. Suspendisse pulvinar vel leo eu sagittis.', 1557346240, 'newmail1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `art_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `msg`, `art_id`) VALUES
(1, 'testuser', '123123', 8),
(2, 'testuser', '123123', 8),
(3, 'testuser', 'Here we go again', 8),
(4, 'Vasya', 'Good....', 7),
(5, 'testuser', 'not bad', 4),
(6, 'testuser', 'not bad', 4),
(7, 'testuser', 'not bad', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(4, '123123123', '1231231231@123123123', 'ce30d08c4ce452bb73a625d0daf64ef6'),
(2, 'Mike', 'test@gmail.com', 'ea8c29de6fca68ec4aaa9a7a56c660b7'),
(3, '123123123', '1231231231@123123123', 'ce30d08c4ce452bb73a625d0daf64ef6'),
(5, 'test1', 'newmail1@gmail.com', 'a6e73fa7767d044d0b22671e84a80334'),
(6, 'testuser', 'test@test.com', '75e175797424a55fc9f090e4a1c88d84'),
(7, '12345', '12345@12345.com', 'a6e73fa7767d044d0b22671e84a80334'),
(8, '12345', '12345@12345.com', 'a6e73fa7767d044d0b22671e84a80334'),
(9, '12345', '12345@12345.ru', 'a6e73fa7767d044d0b22671e84a80334'),
(10, 'test2', 'test2@test2.ru', 'a6e73fa7767d044d0b22671e84a80334'),
(11, 'test3', 'test3@test.ru', 'a6e73fa7767d044d0b22671e84a80334');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
