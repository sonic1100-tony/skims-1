--
-- Table structure for table `igd_ins_trm_pym_trm`
--

DROP TABLE IF EXISTS `igd_ins_trm_pym_trm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_ins_trm_pym_trm` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `nd` decimal(3,0) NOT NULL COMMENT '만기',
  `nd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '만기구분코드',
  `pym_trm` decimal(3,0) NOT NULL COMMENT '납입기간',
  `pym_trm_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '납입기간구분코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `is_av_str_age` decimal(3,0) NOT NULL COMMENT '가입가능시작연령',
  `str_age_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '시작연령산출기준구분코드',
  `is_av_nd_age` decimal(3,0) NOT NULL COMMENT '가입가능종료연령',
  `nd_age_ccst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '종료연령산출기준구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`sl_cvrcd`,`nd`,`nd_flgcd`,`pym_trm`,`pym_trm_flgcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품담보보험기간납입기간';
