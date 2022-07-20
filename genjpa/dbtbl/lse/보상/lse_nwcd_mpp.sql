--
-- Table structure for table `lse_nwcd_mpp`
--

DROP TABLE IF EXISTS `lse_nwcd_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_nwcd_mpp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분류코드',
  `lvl_1_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레벨1세부코드',
  `lvl_2_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레벨2세부코드',
  `lvl_3_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '레벨3세부코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `oldcd_appr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '구코드인정여부',
  `nwcd_appr_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '신코드인정여부',
  `nw_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신분류코드',
  `nw_lvl_1_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신레벨1세부코드',
  `nw_lvl_2_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신레벨2세부코드',
  `nw_lvl_3_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신레벨3세부코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `nw_lvl_4_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신레벨4세부코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_nwcd_mpp_00` (`csfcd`,`lvl_1_dtcd`,`lvl_2_dtcd`,`lvl_3_dtcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='신코드매핑';
