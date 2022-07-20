--
-- Table structure for table `fin_intnl_dl_slp`
--

DROP TABLE IF EXISTS `fin_intnl_dl_slp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_intnl_dl_slp` (
  `slpdt` date NOT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전표번호',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `gn_spc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반특별구분코드',
  `cr_syscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생시스템코드',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `slp_prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표결재상태코드',
  `slp_prv_dthms` datetime DEFAULT NULL COMMENT '전표결재일시',
  `slp_prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표결재직원번호',
  `cr_dl_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생거래기관코드',
  `cr_deldt` date DEFAULT NULL COMMENT '발생거래일자',
  `cr_dlno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생거래번호',
  `slp_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '전표상태코드',
  `ers_dthms` datetime DEFAULT NULL COMMENT '삭제일시',
  `act_atrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '회계속성코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`slpdt`,`slpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='내부거래전표';
