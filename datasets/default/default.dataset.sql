BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Industry" VARCHAR(255), 
	"IsPersonAccount" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Creality','','False');
INSERT INTO "Account" VALUES(2,'Prusa Research','Manufacturing','False');
INSERT INTO "Account" VALUES(3,'E3D','','False');
INSERT INTO "Account" VALUES(5,'Printed Solid','Manufacturing','False');
INSERT INTO "Account" VALUES(6,'Polymaker','Manufacturing','False');
INSERT INTO "Account" VALUES(7,'Overture','Manufacturing','False');
INSERT INTO "Account" VALUES(8,'Amazon Basics','Manufacturing','False');
INSERT INTO "Account" VALUES(9,'Voxelab','Manufacturing','False');
INSERT INTO "Account" VALUES(11,'Anycubic','','False');
CREATE TABLE "psa_Filament__c" (
	id INTEGER NOT NULL, 
	"Available_Qty__c" VARCHAR(255), 
	"Bed_Temp_Range__c" VARCHAR(255), 
	"Bed_Type__c" VARCHAR(255), 
	"Color__c" VARCHAR(255), 
	"Material__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Notes__c" VARCHAR(255), 
	"Nozzle_Temp_Range__c" VARCHAR(255), 
	"Print_Speed__c" VARCHAR(255), 
	"Series__c" VARCHAR(255), 
	"Size__c" VARCHAR(255), 
	"Spool_Cost__c" VARCHAR(255), 
	"Spool_Weight_g__c" VARCHAR(255), 
	"Manufacturer__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "psa_Filament__c" VALUES(1,'640.0','90','Satin;Textured','Jet Black','PETG','Jet Black Prusament PETG','','240-250','','Prusament','1046.0','','194.0','2');
INSERT INTO "psa_Filament__c" VALUES(2,'964.0','70-90','Satin;Textured','Urban Grey','PETG','Urban Grey Prusament PETG','','240-260','','Prusament','1022.0','35.99','194.0','2');
INSERT INTO "psa_Filament__c" VALUES(3,'800.0','25-60','Textured','Black','FLEX','Black TPU FLEX','','210-230','20-40','TPU','1000.0','','176.0','7');
INSERT INTO "psa_Filament__c" VALUES(4,'22.0','25-60','Smooth;Satin;Textured','Burnt Titanium','PLA','Burnt Titanium Voxelab PLA','','190-220','','','1000.0','25.99','150.0','9');
INSERT INTO "psa_Filament__c" VALUES(5,'0.0','25-60','Smooth;Satin;Textured','Space Grey','PLA','Space Grey Overture PLA','','190-220','40-90','','1000.0','24.99','176.0','7');
INSERT INTO "psa_Filament__c" VALUES(6,'600.0','80-90','Satin;Textured','White','PETG','White Overture PETG','','230-250','','','1000.0','21.99','126.0','7');
INSERT INTO "psa_Filament__c" VALUES(7,'400.0','25-60','Smooth;Satin;Textured','Orange','PLA','Orange Overture PLA','Plastic Spool','190-220','','','1000.0','25.99','','7');
INSERT INTO "psa_Filament__c" VALUES(8,'518.0','60','Smooth;Satin;Textured','Black','PLA','Black Jessie PLA','','215','80','Jessie','1386.0','20.0','328.0','5');
INSERT INTO "psa_Filament__c" VALUES(9,'0.0','60','Smooth;Satin;Textured','Gunmetal Grey','PLA','Gunmetal Grey Jessie PLA','','215','80','Jessie','1386.0','20.0','328.0','5');
INSERT INTO "psa_Filament__c" VALUES(10,'16.0','60','Smooth;Satin;Textured','Bold Blue','PLA','Bold Blue Jessie PLA','','215','80','Jessie','1386.0','20.0','328.0','5');
INSERT INTO "psa_Filament__c" VALUES(11,'28.0','40-55','Smooth;Satin;Textured','Black','PLA','Black Amazon Basics PLA','','190-220','','','1000.0','','230.0','8');
INSERT INTO "psa_Filament__c" VALUES(12,'0.0','40-60','Smooth;Satin;Textured','Silver','PLA','Silver Prusa PLA','','205-220','','Filament for Prusa','1000.0','0.0','','2');
INSERT INTO "psa_Filament__c" VALUES(13,'200.0','70-90','Satin;Textured','Orange','PETG','Orange Prusament PETG','PPE spool - has a little more variance in diameter than retail PETG.','240-260','','Prusament','1000.0','29.99','194.0','2');
INSERT INTO "psa_Filament__c" VALUES(14,'1000.0','60','Smooth;Satin;Textured','Red Ice','PLA','Red Ice Jessie PLA','','200-235','','Jessie','1000.0','17.0','274.0','5');
INSERT INTO "psa_Filament__c" VALUES(15,'800.0','110','Satin;Textured','Black','PC-CF','Black Prusament PC-CF','Can be printed on smooth with a Gluestick','285','','Prusament','800.0','','','2');
INSERT INTO "psa_Filament__c" VALUES(16,'0.0','40-60','Smooth;Satin;Textured','Orange','PLA','Orange Prusament PLA','Spool is 193g','205-225','200 max','Prusament','1009.0','','190.0','2');
INSERT INTO "psa_Filament__c" VALUES(17,'284.0','70-80','Satin;Textured','Orange','PETG','Orange PolyLite PETG','Spool weight is 140g','230-240','30-50','PolyLite','1000.0','22.57','140.0','6');
INSERT INTO "psa_Filament__c" VALUES(18,'30.0','70-90','Satin;Textured','Black','PETG','Black Overture PETG','','240-260','','','1000.0','','176.0','7');
INSERT INTO "psa_Filament__c" VALUES(19,'220.0','40-55','Smooth;Satin;Textured','White','PLA','White Amazon Basics PLA','','190-220','','','1000.0','','230.0','8');
CREATE TABLE "psa_Material__c" (
	id INTEGER NOT NULL, 
	"Description__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Quantity__c" VARCHAR(255), 
	"Project__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
CREATE TABLE "psa_Print__c" (
	id INTEGER NOT NULL, 
	"Actual_Hours__c" VARCHAR(255), 
	"Actual_Minutes__c" VARCHAR(255), 
	"Brim__c" VARCHAR(255), 
	"Consumed_Filament__c" VARCHAR(255), 
	"Description__c" VARCHAR(255), 
	"Estimated_Filament__c" VARCHAR(255), 
	"Estimated_Hours__c" VARCHAR(255), 
	"Estimated_Minutes__c" VARCHAR(255), 
	"Infill__c" VARCHAR(255), 
	"Model_URL__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supports__c" VARCHAR(255), 
	"Filament__c" VARCHAR(255), 
	"Printer__c" VARCHAR(255), 
	"Project__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "psa_Print__c" VALUES(1,'','','False','','<p>Need tool holders for the following: </p><ul><li>Socket holder x12</li><li>Socket holder 1/4&quot; - x5</li><li>bitholder - x6</li></ul>','','','','15','','Tool Holders','Completed','','9','1','2');
INSERT INTO "psa_Print__c" VALUES(2,'','36.0','False','','<p>Case with 4mm screws</p>','','','','','','PiZero KVM Case','','','','4','9');
INSERT INTO "psa_Print__c" VALUES(3,'','','False','','<p>Build a nozzle holder for the Revo Nozzle Set</p><p>Needs to hold a .25, .4, .6, and .8 nozzle (1 of each)</p>','','','','15','','Revo Nozzle Holder','Ready','','','','20');
INSERT INTO "psa_Print__c" VALUES(4,'','','False','','<p>Parametric bottle holder for Skadis</p>','','','','15','','Bottle Holder','Ready','','','','20');
INSERT INTO "psa_Print__c" VALUES(5,'6.0','40.0','False','34.0','','41.0','6.0','32.0','15','','Pixel 6 Case','Completed','','3','2','11');
INSERT INTO "psa_Print__c" VALUES(6,'1.0','0.0','False','24.2','<p>Gridfinity baseplate 4x4 </p>','24.21','1.0','0.0','15','https://thangs.com/designer/ZackFreedman/3d-model/Gridfinity%20Baseplates-60925','4x4 Grid','Completed','','5','4','12');
INSERT INTO "psa_Print__c" VALUES(7,'','','False','','<p>Feet for Tingby stand</p>','','21.0','13.0','70','','4x Feet - MINI','Ready','','3','2','7');
INSERT INTO "psa_Print__c" VALUES(8,'12.0','','False','','<p>Dragon Paint Brush cup for Scotia</p>','210.0','20.0','21.0','15','https://www.thingiverse.com/thing:3285324/makes','Dragon Cup','Failed','','4','3','13');
INSERT INTO "psa_Print__c" VALUES(9,'5.0','12.0','False','34.0','Flexible Piggy Bank lid to cover iperespresso can','34.0','5.0','2.0','15','https://www.printables.com/model/335560-illy-coffee-can-bank','Iperespresso Bank','Completed','','3','2','14');
INSERT INTO "psa_Print__c" VALUES(10,'','','True','','Eiffel Tower gift for Meara','43.7','5.0','46.0','15','https://www.printables.com/model/110695-eiffel-tower','Eiffel Tower','Ready','','2','3','15');
INSERT INTO "psa_Print__c" VALUES(11,'19.0','56.0','False','120.0','Articulating Dragon to print as a gift for Scotia','120.0','20.0','20.0','20','https://www.printables.com/model/270339-articulated-spirit-dragon-fixedrugged','Articulating Dragon','Completed','','4','4','16');
INSERT INTO "psa_Print__c" VALUES(12,'1.0','0.0','False','24.2','<p>Gridfinity baseplate 4x4 </p>','24.21','1.0','0.0','15','https://thangs.com/designer/ZackFreedman/3d-model/Gridfinity%20Baseplates-60925','4x4 Grid','Completed','','5','4','12');
INSERT INTO "psa_Print__c" VALUES(13,'1.0','0.0','False','24.2','<p>Gridfinity baseplate 4x4 </p>','24.21','1.0','0.0','15','https://thangs.com/designer/ZackFreedman/3d-model/Gridfinity%20Baseplates-60925','4x4 Grid','Completed','','5','4','12');
INSERT INTO "psa_Print__c" VALUES(14,'1.0','0.0','False','24.2','<p>Gridfinity baseplate 4x4 </p>','24.21','1.0','0.0','15','https://thangs.com/designer/ZackFreedman/3d-model/Gridfinity%20Baseplates-60925','4x4 Grid','Completed','','5','4','12');
INSERT INTO "psa_Print__c" VALUES(15,'','','False','','<p>Assorted boxes for printing</p><p>2x 1x1x3 1 compartment</p><p>2x 1x1x3 2 compartment</p><p>2x 1x1x6 1 compartment</p><p>1x 1x1x6 2 compartment</p>','126.0','4.0','33.0','15','','Assortment of boxes','Ready','','5','4','12');
INSERT INTO "psa_Print__c" VALUES(16,'','35.0','False','','<p>Fan shrouds to improve part cooling on the Kobra Max</p>','','','35.0','15','','Fan Shrouds','Completed','','17','1','18');
INSERT INTO "psa_Print__c" VALUES(17,'','','False','','<p>Design and Print a simple 4-compartment tray to hold various tools in the tool drawer</p>','','','','15','','4 Compartment Tray','Blocked','','','1','2');
INSERT INTO "psa_Print__c" VALUES(18,'3.0','','False','','<p>8x9 Frame for tools</p>','','3.0','','15','','8x9 Frame','Completed','','10','1','2');
INSERT INTO "psa_Print__c" VALUES(19,'','','False','','<p>Design and print a holder for metric drill bits.</p>','','','','15','','Metric Drill Bit Holder','Ready','','','','2');
INSERT INTO "psa_Print__c" VALUES(20,'','','False','','<p>Boxes for heatsinks, spade terminals</p>','120.0','5.0','34.0','15','','Boxes','Ready','','7','4','12');
INSERT INTO "psa_Print__c" VALUES(21,'','','False','','','','1.0','','15','','X-Wing Card Fighter','Completed','','2','3','17');
INSERT INTO "psa_Print__c" VALUES(22,'','','False','','<p>Build and Print a Gridfinity Nozzle Holder (1x1)</p>','','','','15','','Volcano Nozzle Holder','Ready','','','1','20');
INSERT INTO "psa_Print__c" VALUES(23,'20.0','22.0','False','196.4','<p>Dragon Paint Brush cup for Scotia</p>','210.0','20.0','21.0','15','https://www.thingiverse.com/thing:3285324/makes','Dragon Cup try-2','Completed','','4','3','13');
INSERT INTO "psa_Print__c" VALUES(24,'','27.0','False','4.2','<p>Model Redesigned in Fusion 360</p>','4.2','','27.0','15','','Center Plug','Completed','Build Plate','18','3','21');
CREATE TABLE "psa_Printer__c" (
	id INTEGER NOT NULL, 
	"Additional_Features__c" VARCHAR(255), 
	"Connectivity__c" VARCHAR(255), 
	"Features__c" VARCHAR(255), 
	"Max_X__c" VARCHAR(255), 
	"Max_Y__c" VARCHAR(255), 
	"Max_Z__c" VARCHAR(255), 
	"Model__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Network_Name__c" VARCHAR(255), 
	"Outage_Reason__c" VARCHAR(255), 
	"Serial_Number__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Type__c" VARCHAR(255), 
	"Manufacturer__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "psa_Printer__c" VALUES(1,'Glass Bed','SD-Card','Bowden-Drive;Open Air;Auto Bed-leveling','400.0','400.0','450.0','Kobra Max','KobraMax','','Test failures','','Offline','FDM - Cartesian','11');
INSERT INTO "psa_Printer__c" VALUES(2,'','SD-Card','Direct-Drive;Open Air;Auto Bed-leveling','220.0','220.0','250.0','Ender 3 Pro','E3Pro','','','','Online','FDM - Cartesian','1');
INSERT INTO "psa_Printer__c" VALUES(3,'','Octoprint','Bowden-Drive;Enclosed;Air Filtration;Illuminated;Filament Spool Heater;Auto Bed-leveling','180.0','180.0','180.0','MINI+','MINI','octoprusa','','','Online','FDM - Cartesian','2');
INSERT INTO "psa_Printer__c" VALUES(4,'','Octoprint','Direct-Drive;Enclosed;Air Filtration;Illuminated;Filament Spool Heater;Auto Bed-leveling','250.0','210.0','210.0','MK3S+','MK3S','octomk3s','','','Online','FDM - Cartesian','2');
CREATE TABLE "psa_Project__c" (
	id INTEGER NOT NULL, 
	"Description__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "psa_Project__c" VALUES(1,'<p>Large case for prusa parts, no dividers needed, could probably use the default design</p>','Case - Prusa Parts','Ready');
INSERT INTO "psa_Project__c" VALUES(2,'<p>Store tools in the tool drawer - metric and various bits</p><ul><li>Husky 1/4&quot; Drive Metric tools</li><li>Lamptron tool kit</li><li>iFixIT Manta tool kit</li><li>Dremel Bits</li></ul>','Gridfinity - Tools Drawer','Building');
INSERT INTO "psa_Project__c" VALUES(3,'<p>Print flexible labels for network cables.</p>','Network Labels','Ready');
INSERT INTO "psa_Project__c" VALUES(4,'<p>Build a case using the parametric case design for a multimeter and probes</p>','Skadis - Multimeter','Ready');
INSERT INTO "psa_Project__c" VALUES(5,'<p>bins to hold dog grooming tools in stacked bins</p><p><br></p>','Stackable bins - bathroom','Ready');
INSERT INTO "psa_Project__c" VALUES(6,'','Dog and Santa Ornaments','Completed');
INSERT INTO "psa_Project__c" VALUES(7,'<p>Hockey puck type feet for Printer Enclosures.</p><p>Need one set for the Mini and MK3S</p>','Hockey Puck Feet','Designing');
INSERT INTO "psa_Project__c" VALUES(8,'<p>Print a sunglasses holder</p>','Sunglasses Holder','Blocked');
INSERT INTO "psa_Project__c" VALUES(9,'<p>Network KVM using a Raspberry Pi Zero and an HDMI input card. </p><p>Imaging instructions <a href="https://github.com/pikvm/pikvm#diy-getting-started" target="_blank">here</a></p>','PiKVM','Completed');
INSERT INTO "psa_Project__c" VALUES(10,'<p>Weighted baseplate with accessories needed.</p><ul><li>Helping hands </li><li>Soldering Iron Holder</li></ul>','Gridfinity Work Top','Ready');
INSERT INTO "psa_Project__c" VALUES(11,'<p>Case for a Pixel 6 Phone in TPU</p>','Pixel Case','Completed');
INSERT INTO "psa_Project__c" VALUES(12,'<p>Gridfinity grid and boxes for storing screws, heatshrink, etc. </p>','Gridfinity - Husky Drawer','Completed');
INSERT INTO "psa_Project__c" VALUES(13,'<p>Dragon cup for pencils for Scotia</p>','Dragon Pencil Cup','Completed');
INSERT INTO "psa_Project__c" VALUES(14,'Flexible Piggy Bank lid to cover iperespresso can','Iperespresso Bank','Completed');
INSERT INTO "psa_Project__c" VALUES(15,'Eiffel Tower gift for Meara','Eiffel Tower','Completed');
INSERT INTO "psa_Project__c" VALUES(16,'Articulating Dragon to print as a gift for Scotia','Articulating Dragon','Completed');
INSERT INTO "psa_Project__c" VALUES(17,'<p>Print some Star Wars card kits and the BB8 for him</p>','Chase X-Mas','Completed');
INSERT INTO "psa_Project__c" VALUES(18,'<p>Print parts to improve performance and utility of the Kobra Max</p>','Kobra Max Mods','Ready');
INSERT INTO "psa_Project__c" VALUES(19,'<p>Mount a hook to hold the trash can to my desk - test fit with some magnets</p>','Trash Can Hook','Completed');
INSERT INTO "psa_Project__c" VALUES(20,'<p>Build gridfinity and skadis tool holders for 3D Printing</p>','Gridfinity Skadis Tools','Designing');
INSERT INTO "psa_Project__c" VALUES(21,'<p>Threaded PTFE tube feeder for filament into the Prusa Original Enclosure</p>','Prusa Enclosure PTFE Feeder','Completed');
CREATE TABLE "psa_Upgrade__c" (
	id INTEGER NOT NULL, 
	"Cost__c" VARCHAR(255), 
	"Description__c" VARCHAR(255), 
	"Model__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type__c" VARCHAR(255), 
	"Manufacturer__c" VARCHAR(255), 
	"Printer__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "psa_Upgrade__c" VALUES(1,'','<p>Hotend and nozzles with integrated heatbreak.</p><p><br></p>','Revo V6','Revo V6','performance','3','4');
INSERT INTO "psa_Upgrade__c" VALUES(2,'','<p>Steel frame enclosure with Acrylic Panels</p><p>Added LED and Filtration system</p>','Original Enclosure','Prusa Original Enclosure','efficiency','2','4');
COMMIT;
