--
-- Table structure for table `ins_vlamt_vlcd`
--

DROP TABLE IF EXISTS `ins_vlamt_vlcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_vlamt_vlcd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dat_crt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '데이터생성구분코드',
  `bn_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종대분류코드',
  `bn_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종중분류코드',
  `bn_smccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업종소분류코드',
  `rcp_yymd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월일',
  `bnnm` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업종명',
  `nwcon_unprc` decimal(15,0) DEFAULT NULL COMMENT '신축단가',
  `rdt_dprt` decimal(7,2) DEFAULT NULL COMMENT '감가상각율',
  `rvrt_cfc` decimal(7,2) DEFAULT NULL COMMENT '보정율계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_vlamt_vlcd_00` (`dat_crt_flgcd`,`bn_lclcd`,`bn_mdccd`,`bn_smccd`,`rcp_yymd`)
) ENGINE=InnoDB AUTO_INCREMENT=1264 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='가액평가코드';
