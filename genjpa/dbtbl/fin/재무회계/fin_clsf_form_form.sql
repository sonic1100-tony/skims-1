--
-- Table structure for table `fin_clsf_form_form`
--

DROP TABLE IF EXISTS `fin_clsf_form_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_clsf_form_form` (
  `cls_form_frmcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감장표양식코드',
  `form_seq` decimal(3,0) NOT NULL COMMENT '양식회차',
  `ap_nd_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL DEFAULT '999912' COMMENT '적용종료년월',
  `ap_str_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '적용시작년월',
  `us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '사용여부',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_form_frmcd`,`form_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감장표양식';
