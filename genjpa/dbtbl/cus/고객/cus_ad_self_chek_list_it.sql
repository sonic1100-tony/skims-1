--
-- Table structure for table `cus_ad_self_chek_list_it`
--

DROP TABLE IF EXISTS `cus_ad_self_chek_list_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ad_self_chek_list_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `self_chek_itlvl_1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본인체크항목레벨1분류코드',
  `self_chek_itlvl_2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본인체크항목레벨2분류코드',
  `self_chek_itlvl_3_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본인체크항목레벨3분류코드',
  `ap_nddt` date DEFAULT NULL COMMENT '적용종료일자',
  `ap_strdt` date DEFAULT NULL COMMENT '적용시작일자',
  `self_chek_itlvl_1_note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본인체크항목레벨1비고',
  `self_chek_itlvl_2_note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본인체크항목레벨2비고',
  `self_chek_itlvl_3_note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본인체크항목레벨3비고',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `ltrm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ad_self_chek_list_it_00` (`self_chek_itlvl_1_csfcd`,`self_chek_itlvl_2_csfcd`,`self_chek_itlvl_3_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='광고본인체크리스트항목';
