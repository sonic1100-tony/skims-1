--
-- Table structure for table `str_rtprg_adm_cls`
--

DROP TABLE IF EXISTS `str_rtprg_adm_cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_rtprg_adm_cls` (
  `cy_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT 'CY년월',
  `week` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '요일',
  `bz_plcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획코드',
  `bz_pl_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획기관코드',
  `bz_pl_ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획보험종목코드',
  `as_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '배정기관코드',
  `cls_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '마감여부',
  `clsdt` date DEFAULT NULL COMMENT '마감일자',
  `cls_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cy_yymm`,`week`,`bz_plcd`,`bz_pl_orgcd`,`bz_pl_ins_imcd`,`as_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='진도관리마감';
