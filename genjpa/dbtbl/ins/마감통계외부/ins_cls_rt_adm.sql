--
-- Table structure for table `ins_cls_rt_adm`
--

DROP TABLE IF EXISTS `ins_cls_rt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cls_rt_adm` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cr_clm_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고담보구분코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `gn_co_appr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반공동인정구분코드',
  `cls_rt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감요율구분코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `rt` decimal(19,7) NOT NULL COMMENT '요율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`cr_clm_cvr_flgcd`,`cvrcd`,`gn_co_appr_flgcd`,`cls_rt_flgcd`,`ap_strdt`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감요율관리';
