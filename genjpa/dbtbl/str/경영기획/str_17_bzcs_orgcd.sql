--
-- Table structure for table `str_17_bzcs_orgcd`
--

DROP TABLE IF EXISTS `str_17_bzcs_orgcd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_17_bzcs_orgcd` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `bzcs_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비기관코드',
  `bzcs_orgnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '사업비기관명',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '사용여부',
  `org_grpcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관군코드',
  `org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '기관실체구분코드',
  `bzcs_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업비유형코드',
  `sl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매유형코드',
  `ordr_ordr` decimal(5,0) NOT NULL COMMENT '정렬순서',
  `org_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관구분코드',
  `org_spcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관특성코드',
  `org_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관유형코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`bzcs_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='IFRS17사업비기관코드';
