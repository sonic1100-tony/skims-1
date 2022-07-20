--
-- Table structure for table `ins_cvrcl_net_av`
--

DROP TABLE IF EXISTS `ins_cvrcl_net_av`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cvrcl_net_av` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `cvrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보명',
  `coobj_dv_rnprm` decimal(17,2) DEFAULT NULL COMMENT '공동물건배분원수보험료',
  `coobj_dv_inprm` decimal(17,2) DEFAULT NULL COMMENT '공동물건배분수입보험료',
  `coobj_dv_ptrm_nrnpr` decimal(17,2) DEFAULT NULL COMMENT '공동물건배분전기미경과보험료',
  `coobj_dv_lltm_nrnpr` decimal(17,2) DEFAULT NULL COMMENT '공동물건배분후기미경과보험료',
  `coobj_dv_pibam` decimal(17,2) DEFAULT NULL COMMENT '공동물건배분지급보험금',
  `coobj_dv_ptrm_osamt` decimal(17,2) DEFAULT NULL COMMENT '공동물건배분전기OS금액',
  `coobj_dv_lltm_osamt` decimal(17,2) DEFAULT NULL COMMENT '공동물건배분후기OS금액',
  `coobj_dv_dmamt` decimal(17,2) DEFAULT NULL COMMENT '공동물건배분손해액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='담보별정미실적';
