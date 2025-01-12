--
-- Table structure for table `ins_dvpns_carmt`
--

DROP TABLE IF EXISTS `ins_dvpns_carmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_carmt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `wrk_dthms` datetime NOT NULL COMMENT '작업일시',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `inscd_1` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사코드1',
  `trdst_cnfdt_1` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주행거리확인일자1',
  `acm_trdst_1` decimal(7,0) DEFAULT NULL COMMENT '누적주행거리1',
  `inscd_2` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사코드2',
  `trdst_cnfdt_2` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주행거리확인일자2',
  `acm_trdst_2` decimal(7,0) DEFAULT NULL COMMENT '누적주행거리2',
  `owcr_rarct` decimal(2,0) DEFAULT NULL COMMENT '자차수리건수',
  `owcr_rpcrg_tsm` decimal(15,0) DEFAULT NULL COMMENT '자차수리비계',
  `prdm_rarct` decimal(2,0) DEFAULT NULL COMMENT '대물수리건수',
  `prdm_rpcrg_tsm` decimal(15,0) DEFAULT NULL COMMENT '대물수리비계',
  `ndscd_1` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서코드1',
  `nds_stdt_1` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서기준일자1',
  `nds_dldt_1` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서처리일자1',
  `ndscd_2` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서코드2',
  `nds_stdt_2` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서기준일자2',
  `nds_dldt_2` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서처리일자2',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드',
  `cr_tp` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량형식',
  `optn1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '옵션1',
  `optn2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '옵션2',
  `optn3` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '옵션3',
  `cr_tx_min` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량세분',
  `dspl` decimal(4,0) DEFAULT NULL COMMENT '배기량',
  `cr_rgst` decimal(15,0) DEFAULT NULL COMMENT '차량정원',
  `cr_grd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량등급',
  `cramt1` decimal(15,0) DEFAULT NULL COMMENT '차량가액1',
  `cramt2` decimal(15,0) DEFAULT NULL COMMENT '차량가액2',
  `cramt3` decimal(15,0) DEFAULT NULL COMMENT '차량가액3',
  `cramt4` decimal(15,0) DEFAULT NULL COMMENT '차량가액4',
  `cramt5` decimal(15,0) DEFAULT NULL COMMENT '차량가액5',
  `cramt6` decimal(15,0) DEFAULT NULL COMMENT '차량가액6',
  `cramt7` decimal(15,0) DEFAULT NULL COMMENT '차량가액7',
  `cramt8` decimal(15,0) DEFAULT NULL COMMENT '차량가액8',
  `cramt9` decimal(15,0) DEFAULT NULL COMMENT '차량가액9',
  `cramt10` decimal(15,0) DEFAULT NULL COMMENT '차량가액10',
  `cramt11` decimal(15,0) DEFAULT NULL COMMENT '차량가액11',
  `cramt12` decimal(15,0) DEFAULT NULL COMMENT '차량가액12',
  `cramt13` decimal(15,0) DEFAULT NULL COMMENT '차량가액13',
  `cramt14` decimal(15,0) DEFAULT NULL COMMENT '차량가액14',
  `cramt15` decimal(15,0) DEFAULT NULL COMMENT '차량가액15',
  `cramt16` decimal(15,0) DEFAULT NULL COMMENT '차량가액16',
  `eqp1` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치1',
  `eqp2` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치2',
  `eqp3` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치3',
  `eqp4` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치4',
  `eqp5` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치5',
  `eqp6` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치6',
  `eqp7` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치7',
  `eqp8` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치8',
  `eqp9` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치9',
  `eqp10` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치10',
  `eqp11` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치11',
  `eqp12` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치12',
  `eqp13` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치13',
  `eqp14` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치14',
  `eqp15` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치15',
  `eqp16` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치16',
  `eqp17` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치17',
  `eqp18` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치18',
  `eqp19` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장치19',
  `fr_rgtdt` date DEFAULT NULL COMMENT '최초등록일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_carmt_00` (`carno`,`wrk_dthms`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원차량가액';
