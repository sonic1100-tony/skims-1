--
-- Table structure for table `fin_dcl_itnm_adm`
--

DROP TABLE IF EXISTS `fin_dcl_itnm_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dcl_itnm_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `dcl_da_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공시자료분류코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `dcl_1_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시1열항목명',
  `dcl_2_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시2열항목명',
  `dcl_3_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시3열항목명',
  `dcl_4_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시4열항목명',
  `dcl_5_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시5열항목명',
  `dcl_6_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시6열항목명',
  `dcl_7_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시7열항목명',
  `dcl_8_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시8열항목명',
  `dcl_9_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시9열항목명',
  `dcl_10_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시10열항목명',
  `dcl_11_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시11열항목명',
  `dcl_12_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시12열항목명',
  `dcl_13_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시13열항목명',
  `dcl_14_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시14열항목명',
  `dcl_15_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시15열항목명',
  `dcl_16_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시16열항목명',
  `dcl_17_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시17열항목명',
  `dcl_18_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시18열항목명',
  `dcl_19_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시19열항목명',
  `dcl_20_col_itnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시20열항목명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공시항목명관리';
