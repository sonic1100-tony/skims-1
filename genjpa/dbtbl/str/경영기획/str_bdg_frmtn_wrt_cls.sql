--
-- Table structure for table `str_bdg_frmtn_wrt_cls`
--

DROP TABLE IF EXISTS `str_bdg_frmtn_wrt_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bdg_frmtn_wrt_cls` (
  `cy_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년도',
  `bdg_frmtn_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '예산편성구분코드',
  `bdg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '예산기관코드',
  `rqor_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '신청기관코드',
  `cls_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '마감여부',
  `clsdt` date DEFAULT NULL COMMENT '마감일자',
  `cls_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cy_yr`,`bdg_frmtn_flgcd`,`bdg_orgcd`,`rqor_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='예산편성작성마감';
