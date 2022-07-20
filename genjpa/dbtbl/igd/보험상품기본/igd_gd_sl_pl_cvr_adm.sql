--
-- Table structure for table `igd_gd_sl_pl_cvr_adm`
--

DROP TABLE IF EXISTS `igd_gd_sl_pl_cvr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_sl_pl_cvr_adm` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `plcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '플랜코드',
  `sl_cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '판매담보코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `isamt` decimal(17,2) NOT NULL COMMENT '가입금액',
  `cvr_is_slc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담보가입선택구분코드',
  `isamt_inp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '가입금액입력구분코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`plcd`,`sl_cvrcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품판매플랜담보관리';
