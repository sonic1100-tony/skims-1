--
-- Table structure for table `fin_dcl_row_it_dt`
--

DROP TABLE IF EXISTS `fin_dcl_row_it_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dcl_row_it_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `dcl_da_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공시자료분류코드',
  `cy_fy_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'CYFY구분코드',
  `dcl_rowno` decimal(3,0) NOT NULL COMMENT '공시행번호',
  `dcl_1_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시1열내용',
  `dcl_2_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시2열내용',
  `dcl_3_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시3열내용',
  `dcl_4_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시4열내용',
  `dcl_5_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시5열내용',
  `dcl_6_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시6열내용',
  `dcl_7_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시7열내용',
  `dcl_8_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시8열내용',
  `dcl_9_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시9열내용',
  `dcl_10_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시10열내용',
  `dcl_11_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시11열내용',
  `dcl_12_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시12열내용',
  `dcl_13_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시13열내용',
  `dcl_14_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시14열내용',
  `dcl_15_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시15열내용',
  `dcl_16_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시16열내용',
  `dcl_17_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시17열내용',
  `dcl_18_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시18열내용',
  `dcl_19_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시19열내용',
  `dcl_20_col_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공시20열내용',
  `it_lvl` decimal(3,0) DEFAULT NULL COMMENT '항목레벨',
  `stot_gpno` decimal(3,0) DEFAULT NULL COMMENT '소계그룹번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공시행항목상세';
