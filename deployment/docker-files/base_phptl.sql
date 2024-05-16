-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: phptl
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctrine_migration_versions`
--

LOCK TABLES `doctrine_migration_versions` WRITE;
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` VALUES ('DoctrineMigrations\\Version20240514101623','2024-05-14 10:17:30',80),('DoctrineMigrations\\Version20240515075539','2024-05-15 07:55:51',24);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messenger_messages`
--

DROP TABLE IF EXISTS `messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messenger_messages`
--

LOCK TABLES `messenger_messages` WRITE;
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `asin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `moreinfo_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` longtext COLLATE utf8mb4_unicode_ci COMMENT '(DC2Type:array)',
  `price` int NOT NULL,
  `price_offer` int DEFAULT NULL,
  `free_shipping` tinyint(1) DEFAULT NULL,
  `price_offer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'B0CL6ZMTCG','ULTIMEA 2.2ch Barras de Sonido para TV, 2 en 1 Barra de Sonido Desmontable para TV, Bluetooth 5.3 TV Sound Bar, 3 Modos de Ecualización y Graves Ajustables Altavoces de TV, ARC/óptico/Aux, Apollo S40','https://www.amazon.es/dp/B0CL6ZMTCG?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/31vCubescXL._SL500_.jpg','ULTIMEA','ULTIMEA','a:5:{i:0;s:268:\"Forma Versátil y Ahorro de Espacio - El diseño desmontable de la barra de sonido le permite montarla en una variedad de estilos para adaptarse a la disposición y el ambiente de su habitación. El diseño dividido ahorra espacio sin dejar de mejorar el campo sonoro.\";i:1;s:327:\"Sonido Más Alto y Rico: con 2 tweeters y woofers integrados, esta barra de sonido de 2,2 canales para TV reproduce un sonido equilibrado para disfrutar de graves más ricos y agudos más nítidos. Además, cuenta con una interfaz de subwoofer adicional que permite conectar un subwoofer activo externo (subwoofer no incluido).\";i:2;s:387:\"Experiencia de Sonido Personalizada: eleve su audio con 3 modos de ecualizador diseñados para música, películas y juegos. La exclusiva tecnología BassMX de Ultimea enriquece las frecuencias bajas, permitiendo ajustar los graves para conseguir unos graves retumbantes y con pulso. Todos estos modos son fácilmente accesibles con sólo pulsar un botón en los ajustes del ecualizador.\";i:3;s:207:\"Sonido Más Completo y Claro: la barra de sonido utiliza un chip DSP mejorado para reducir la estática de audio. Esto garantiza que cada palabra y cada sonido se escuchen exactamente como fueron concebidos.\";i:4;s:290:\"Conectividad Perfecta: la barra de sonido cuenta con opciones de conexión dual por cable e inalámbrica, incluidos los puertos ARC, óptico, AUX y USB (todos los cables incluidos). La tecnología Bluetooth 5.3 garantiza velocidades más rápidas y un alcance de cobertura de hasta 49 pies.\";}',7998,2998,1,'38%'),(2,'B07YV31M5P','MAJORITY Bowfell Bluetooth Sound Bar for TV | 50 Watts Powerful 2.1 Stereo Soundbar | EQ Control, Bluetooth, Optical & RCA Connection with USB & AUX Playback | Remote Controlled','https://www.amazon.es/dp/B07YV31M5P?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/41i9Re6dvGL._SL500_.jpg','MAJORITY','Majority','a:5:{i:0;s:481:\"Calidad de sonido nítida La barra de sonido Bluetooth Bowfell fue diseñada aquí en el Reino Unido por nuestro grupo de expertos en audio. Majority Bowfell es una potente barra de sonido para TV con lo último en tecnología de audio, compatible con una amplia gama de artículos para el hogar como teléfono, TV, PC, computadora portátil, proyector, monitor, reproductor de Blu-ray o DVD. Nuestra calidad de sonido digital mejorada está diseñada y perfeccionada en Cambridge.\";i:1;s:451:\"POTENTES ALTAVOCES COMPACTOS: El Bowfell con subwoofer incorporado ofrece una experiencia de sonido cinematográfica excepcional. Los potentes altavoces de TV de 50 vatios pueden satisfacer a cualquier jugador ávido o simplemente mejorar su experiencia visual con un audio limpio y claro. Música, radio, juegos, películas, deportes en vivo: escuche el audio de la forma en que debe escucharse. Sistema de sonido para TV y barra de sonido Bluetooth.\";i:2;s:511:\"LLENO DE CARACTERÍSTICAS: Nuestra barra de sonido Majority está diseñada pensando en la facilidad de uso: simplemente conéctela y juegue a través de la amplia gama de conexiones. Conéctese a su televisor en un instante a través de la entrada óptica, escuche sus listas de reproducción directamente desde su teléfono a través de la última tecnología Bluetooth, conecte su reproductor de MP3 a la entrada AUX o simplemente conecte su dispositivo USB directamente al Bowfell. Ideal para música, cine.\";i:3;s:486:\"COMPACTO PERO PODEROSO: Bowfell es un dispositivo de barra de sonido de audio compacto y delgado que cabe en escritorios y se coloca cómodamente debajo de su televisor. Use los botones en el costado de la barra de sonido o el control remoto incluido para volverse verdaderamente inalámbrico y ajustar el volumen, la configuración del ecualizador, la fuente y más. Una barra de sonido ideal para TV o PC, llena tu espacio y sumérgete en el sonido cinematográfico en tu propia casa.\";i:4;s:499:\"AUDIO DE CONFIANZA: Majority es una marca de audio para el hogar con sede en Cambridge con un departamento de servicio al cliente experimentado y amigable. Estamos orgullosos de ofrecer una garantía extendida de 3 años en todos nuestros productos (se requiere registro) y una política de devolución sin complicaciones. Este paquete incluye 1 Bowfell, 1 control remoto, 1 cable RCA, 1 cable de alimentación, 1 cable AUX y un manual de usuario. Desarrollado y diseñado en Cambridge, Reino Unido.\";}',3995,2995,1,'20%'),(3,'B0CD1L5DJ1','ULTIMEA Dolby Atmos Barra De Sonido para TV, Potencia Máxima 190W, BassMAX, 3D Sonido Envolvente, 2.1 Barra Sonido con Subwoofer, Diseño Compacto Cine En Casa PC Soundbar, 5.3 Bluetooth, Nova S50','https://www.amazon.es/dp/B0CD1L5DJ1?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/41sneiU2JqL._SL500_.jpg','ULTIMEA','ULTIMEA','a:5:{i:0;s:332:\"Eleva tu Televisor a Dolby Atmos: Equipado con Dolby Atmos, una tecnología de audio de última generación, el Nova S50 lleva el sonido a nuevas dimensiones. Dolby Atmos ofrece una experiencia de sonido multidimensional, proporcionando una altura virtual y un elemento envolvente, llenando la habitación con un sonido fantástico.\";i:1;s:245:\"Disfruta de Películas 4K: Experimenta la máxima calidad de audio gracias a la conectividad HDMI-eARC y 4K TV, y consigue imágenes Ultra HD combinadas con una calidad de sonido inigualable para crear una experiencia de cine en casa envolvente.\";i:2;s:373:\"Supera Las Limitaciones de Tamaño, Consigue una Revolución del Sonido: La primera barra de sonido Dolby Atmos de 2.1 canales en un tamaño tan compacto, Ultimea utiliza tecnologías de arquitectura acústica propias para superar las limitaciones de tamaño y aumentar el rendimiento del sonido. Nova S50 ofrece la reproducción de sonido más precisa que se pueda sentir.\";i:3;s:385:\"Descodificación Dolby Atmos Avanzada: Compatible con Blu-ray, streaming (Netflix, Prime Video) en televisores y descodificadores. Admite decodificación/reproducción completa cuando el contenido es compatible con Dolby Atmos. La tecnología BassMX exclusiva de Ultimea enriquece las bajas frecuencias y permite ajustar los graves para conseguir unos graves retumbantes y palpitantes.\";i:4;s:350:\"El más Alto Nivel de Transmisión de Audio: HDMI-eARC ofrece un mayor ancho de banda y capacidades avanzadas de transmisión de audio y admite efectos de audio multicanal Dolby Atmos de alta resolución. Disfrute de una calidad de sonido sin pérdidas para una experiencia superior con el cable HDMI incluido. (NOTA: No es compatible con audio DTS).\";}',11199,8399,1,'20%'),(4,'B08HM31MQP','Creative Stage V2 Barra de Sonido 2.1, 80 W, con subwoofer con Clear Dialog y Surround de Sound Blaster para TV y monitores, Bluetooth 5.0, TV ARC, Óptico y Audio USB - Negro','https://www.amazon.es/dp/B08HM31MQP?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/312noz9w2XL._SL500_.jpg','CREATIVE','Redes de Soluciones Avanzadas New Business SL','a:2:{i:0;s:13:\"5390660194283\";i:1;s:13:\"51MF8375AA001\";}',8999,6998,1,'18%'),(5,'B079Z4HS7S','Sharp HT-SB140MT 2.0 Barra de sonido cine en casa, Bluetooth con HDMI ARC/CEC, Potencia máxima total de salida:150w, 95 cm, Color Negro Mate','https://www.amazon.es/dp/B079Z4HS7S?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/11wXCj8uZNL._SL500_.jpg','Sharp','Sharp','a:7:{i:0;s:186:\"Potente bluetooth soundbar-system: experiencia de entretenimiento para juegos o de cine en casa con su tv; ideal para televisores grandes con un tamaño de pantalla de 49\"-55\" o superior\";i:1;s:210:\"Perfecto para la sala de estar, la cocina, el comedor o incluso el dormitorio; se adapta a la pantalla de la mayoría de los televisores y monitores gracias a su perfil bajo y delgado (6 cm); función bluetooth\";i:2;s:224:\"Fácil manejo gracias al mando a distancia suministrado, pero tambien puede contralar la barra de sonido con el mando a distancia de la mayoria de las televisiones utilizando la conexión hdmi gracias a la tegnologia arc/cec\";i:3;s:176:\"Se puede conectar a cualquier tv con hdmi, audio óptico digital o salida auxiliar de 3,5mm; montaje en pared o de sobremesa; rendimiento potente gracias a la potencía de 150w\";i:4;s:42:\"Fuente de alimentación: Corriente alterna\";i:5;s:182:\"Dispositivos compatibles: All TVs with a Bluetooth, HDMI ARC/CEC, Digital Optical Audio (S/PDIF), 3.5mm Auxiliary (AUX) output, All Bluetooth-out smart devices (phones, tablets etc.)\";i:6;s:47:\"Tipo de conectividad: Inalámbrico y alámbrico\";}',6498,3507,1,'32%'),(6,'B07GYPCN7L','MAJORITY Snowdon II Barra de Sonido con Sonido Envolvente con Subwoofer Incorporado, Dispositivo Inalámbrico 5.0 Bluetooth 120W, Control Remoto, Admite Entrada Óptica, Cable RCA Incluido','https://www.amazon.es/dp/B07GYPCN7L?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/31Vsw19gwUL._SL500_.jpg','MAJORITY','Majority','a:5:{i:0;s:414:\"SONIDO VIRTUAL ENVOLVENTE: Un altavoz soundbar todo en uno que te brinda una experiencia imposible de obtener con tu televisor. La barra de sonido viene con un subwoofer incorporado y tiene una impresionante salida de 120 W para proporcionar un sonido envolvente de calidad de cine. Cuelga el televisor en la pared para obtener una experiencia de audio impresionante (admite televisores de entre 24 y 50 pulgadas).\";i:1;s:297:\"CONEXIÓN BLUETOOTH INALÁMBRICA: Conecta dispositivos Bluetooth – como tu smartphone o tablet – a la barra de sonido en solo 3 sencillos pasos. Comienza a reproducir lo que desees desde tus aplicaciones de música favoritas, incluidas Spotify y Apple Music, o desde tus aplicaciones de radio.\";i:2;s:384:\"CONECTIVIDAD: Conecta la barra de sonido a otros dispositivos que no disponen de Bluetooth a través de la conexión AUX de 3,5 mm. Usando el cable RCA suministrado, podrás configurar rápidamente la barra de sonido en tu televisor. También hay un puerto de entrada óptica en la barra de sonido para que puedas conectarla a tu televisor a través de un cable óptico (no incluido).\";i:3;s:278:\"GRANDE CONTROL REMOTO: Con el sencillo mando de control remoto, puedes cambiar los ajustes de agudos y graves con solo hacer clic en un botón, y también seleccionar un modo de audio que potencie la música, las películas o el diálogo para que se reproduzca lo mejor posible.\";i:4;s:228:\"GARANTÍA: La mayoría ofrece soporte técnico completo para cada artículo, además de incluir una garantía completa de 36 meses (se requiere registro). Dimensiones del producto: 81x8.3x8.3cm Peso del Producto: 1.2 kilogramos.\";}',5995,5695,1,'5%'),(7,'B09YRV4S14','LG S40Q - Barra de Sonido Inteligente, 2.1 Canales, Sonido Envolvente Dolby Digital con Bajos Potentes, Amplia Conectividad, HDMI, Bluetooth, USB, Entrada Óptica y App Android/iOS, Color Negro','https://www.amazon.es/dp/B09YRV4S14?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/11c0wYlgCdL._SL500_.jpg','LG','LG','a:5:{i:0;s:122:\"POTENCIA MULTIDIRECCIONAL DE 300W CON 2.1 CANALES. Inunda cualquier estancia con un sonido extraordinario lleno de matices\";i:1;s:122:\"SONIDO ENVOLVENTE CON DOLBY DIGITAL. El sonido te rodea creando una sensación inmersiva en cualquier estancia de tu hogar\";i:2;s:146:\"OPTIMIZA EL SONIDO CON INTELIGENCIA ARTIFICIAL AI. El sonido se adapta al contenido con AI Sound Pro y mantiene el volumen estable sin sobresaltos\";i:3;s:163:\"AMPLIA CONECTIVIDAD. Conéctalo a tu televisor o cualquier otro dispositivo con y sin cables. HDMI ARC, entrada óptica, Bluetooth 4.2 BLE, USB y App Android / iOS\";i:4;s:165:\"TECNOLOGÍA QUE CUIDA DEL PLANETA. Esta Barra de Sonido está fabricada con materiales reciclados y tiene certificados de baja emisión de carbono y consumo reducido\";}',13031,11162,1,'13%'),(8,'B0BC1TXTV8','NGS Subway - Barra de Sonido TV, Soundbar con Potencia de Salida 40w, Compatible con Tecnología Bluetooth 5.0, Entradas Óptica-AUX-USB, Mando a Distancia','https://www.amazon.es/dp/B0BC1TXTV8?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/31fpOpTUEGL._SL500_.jpg','NGS','Lurbe Grup, SA','a:5:{i:0;s:152:\"Barra de sonido compatible con la tecnología Bluetooth 5.0 para disfrutar de un sonido envolvente y de calidad en tu hogar con un dispositivo compacto.\";i:1;s:175:\"Dispone de entrada óptica para conectar el altavoz a la TV, así como de entrada Auxiliar y entrada USB para conectarlo a otros dispositivos y reproducir tu música favorita.\";i:2;s:214:\"Mando a distancia para regular el volumen, adelantar o retroceder pistas, encender o apagar el altavoz e incluso cambiar de modo de ecualización entre los modos disponibles (Música, película, noticias & normal).\";i:3;s:159:\"Sus 40W de potencia de salida (RMS 20W) y sus cuatro modos de ecualización conseguirán que tu salón se convierta en una auténtica sala de cine o discoteca.\";i:4;s:161:\"Diseño compacto y elegante que encaja en cualquier espacio, que incluso se puede colgar en la pared para mejor difusión del sonido (incluye tacos y tornillos).\";}',3699,2408,0,'26%'),(9,'B0CCRDYSNS','Hisense HS2100 - Barra de Sonido 2.1, 240W, Dolby Digital, DTS Virtual X, Bluetooth 5.3, HDMI ARC/Optical/AUX/USB, 6 Modos de Sonido','https://www.amazon.es/dp/B0CCRDYSNS?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/31uPUptT6AL._SL500_.jpg','Hisense','Hisense','a:5:{i:0;s:155:\"Wireless Streaming: Conéctate en cualquier lugar, La conexión inalámbrica te permitirá disfrutar de la música desde tu smartphone, tablet o portátil.\";i:1;s:94:\"Fácil conectividad: Disfruta de tu contenido favorito con tu barra de sonido con y sin cable.\";i:2;s:149:\"Experiencia cinematográfica: Experiencia cinematográfica realista certificada por Dolby Digital y DTSX que te sumerge en un sonido envolvente 360°\";i:3;s:96:\"Diseño elegante: Se ve bien, suena mejor.Se integra perfectamente en la decoración de tu casa.\";i:4;s:186:\"Ecualizador Quick Touch: Ajustado finamente para cada escena. Obtén el mejor audio de música, películas con un simple toque en el mando y con sus múltiples opciones de ecualización.\";}',12900,10900,1,'13%'),(10,'B0BV272MC5','CREATIVE Barra de Sonido para Colocar Debajo del Monitor Stage SE con Audio Digital USB y Bluetooth 5.3, Clear Dialog y Surround by Sound Blaster, con alimentación Mediante Adaptador','https://www.amazon.es/dp/B0BV272MC5?tag=widitrade06-21&linkCode=osi&th=1&psc=1','https://m.media-amazon.com/images/I/31aojw1en0L._SL500_.jpg','CREATIVE','Creative Labs','a:5:{i:0;s:211:\"DISFRUTE: SONIDO POTENTE CON AJUSTE DE TONO: Stage SE ofrece una potencia máxima de hasta 48 W con audio de alta calidad. También puede alternar entre audio más cálido o más brillante y ajustarlo a su gusto\";i:1;s:202:\"POTENCIADO POR POR SOUND BLASTER: lleve la experiencia cinematográfica a su escritorio con nuestra tecnología Surround. También podrá escuchar cada sílaba claramente con la tecnología Clear Dialog\";i:2;s:216:\"CONECTIVIDAD SIN LIOS: fácil de configurar y alimentado a través de un adaptador de corriente, puede disfrutar de su música mientras está conectado a su PC o cambiar a transmisión inalámbrica desde su teléfono\";i:3;s:228:\"DISEÑO ELEGANTE Y CONTROLES SENCILLOS: con un elegante diseño en negro, se adapta perfectamente a cualquier configuración de escritorio. También puede hacer ajustes de volumen sobre la marcha mediante la rueda multifuncional\";i:4;s:205:\"CONVENIENCIA ADICIONAL CON EL MANDO A DISTANCIA: obtenga un control total para los ajustes de volumen, el cambio de fuente, la selección de los modos Surround y Clear Dialog, así como los ajustes de tono\";}',4999,3999,1,'17%');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-16 17:47:21
