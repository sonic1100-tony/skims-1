--
-- Table structure for table `gea_itm_etdv`
--

DROP TABLE IF EXISTS `gea_itm_etdv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_itm_etdv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `adm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '관리기관코드',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `crdt` date NOT NULL COMMENT '발생일자',
  `cr_qant` decimal(7,0) NOT NULL DEFAULT '0' COMMENT '발생수량',
  `cr_spc` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '발생내역',
  `ch_org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '변경기관실체구분코드',
  `ch_adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경관리기관코드',
  `ntg_mfg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입고출고구분코드',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `rq_seqno` decimal(5,0) DEFAULT NULL COMMENT '신청순번',
  `rq_spc_seqno` decimal(5,0) DEFAULT NULL COMMENT '신청내역순번',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_itm_etdv_00` (`org_ntty_flgcd`,`adm_orgcd`,`itmcd`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='품목입출고';
