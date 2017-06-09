/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 * Author:  cuilin
 * Created: 2017-6-7
 */

//导入洞道干燥数据后
//ALTER TABLE `serialdata`.`datasession` RENAME TO `serialdata`.`datasession_tunnel`;
//ALTER TABLE `serialdata`.`sensordata` RENAME TO `serialdata`.`sensordata_tunnel`;
//ALTER TABLE `serialdata`.`status` RENAME TO `serialdata`.`status_tunnel`;
insert ignore into sensordata_tunnel select * from sensordata;
insert ignore into datasession_tunnel select * from datasession;
insert ignore into status_tunnel select * from `status`;

drop table sensordata;
drop table datasession;
drop table `status`;

//导入红外干燥数据后
//ALTER TABLE `serialdata`.`datasession` RENAME TO `serialdata`.`datasession_infr`;
//ALTER TABLE `serialdata`.`sensordata` RENAME TO `serialdata`.`sensordata_infr`;
//ALTER TABLE `serialdata`.`status` RENAME TO `serialdata`.`status_infr`;
insert ignore into sensordata_infr select * from sensordata;
insert ignore into datasession_infr select * from datasession;
insert ignore into status_infr select * from `status`;


//导入流化干燥数据后
ALTER TABLE `serialdata`.`datasession` RENAME TO `serialdata`.`datasession_fbed`;
ALTER TABLE `serialdata`.`sensordata` RENAME TO `serialdata`.`sensordata_fbed`;
ALTER TABLE `serialdata`.`statustb` RENAME TO `serialdata`.`status_fbed`;

insert ignore into sensordata_fbed select * from sensordata;
insert ignore into datasession_fbed select * from datasession;
insert ignore into status_fbed select * from statustb;