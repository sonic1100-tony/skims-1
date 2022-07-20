--
-- Table structure for table `str_inr_summ_cls_form`
--

DROP TABLE IF EXISTS `str_inr_summ_cls_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_inr_summ_cls_form` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `cls_form_frmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감장표양식코드',
  `inr_cls_form_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '통합마감장표항목코드',
  `m1_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1월실적금액',
  `m2_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '2월실적금액',
  `m3_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '3월실적금액',
  `m4_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '4월실적금액',
  `m5_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '5월실적금액',
  `m6_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '6월실적금액',
  `m7_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '7월실적금액',
  `m8_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '8월실적금액',
  `m9_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '9월실적금액',
  `m10_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '10월실적금액',
  `m11_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '11월실적금액',
  `m12_avamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '12월실적금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_str_inr_summ_cls_form_00` (`st_yr`,`cls_form_frmcd`,`inr_cls_form_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='통합요약마감장표';
