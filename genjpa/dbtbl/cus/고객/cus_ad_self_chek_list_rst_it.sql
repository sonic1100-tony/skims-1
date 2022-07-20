--
-- Table structure for table `cus_ad_self_chek_list_rst_it`
--

DROP TABLE IF EXISTS `cus_ad_self_chek_list_rst_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ad_self_chek_list_rst_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcpno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '접수번호',
  `self_chek_itlvl_1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본인체크항목레벨1분류코드',
  `self_chek_itlvl_2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본인체크항목레벨2분류코드',
  `self_chek_itlvl_3_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '본인체크항목레벨3분류코드',
  `chek_it_rstvl` varchar(4000) COLLATE utf8mb4_bin NOT NULL COMMENT '체크항목결과값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_ad_self_chek_list_rst_it_00` (`rcpno`,`self_chek_itlvl_1_csfcd`,`self_chek_itlvl_2_csfcd`,`self_chek_itlvl_3_csfcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='광고본인체크리스트결과항목';
