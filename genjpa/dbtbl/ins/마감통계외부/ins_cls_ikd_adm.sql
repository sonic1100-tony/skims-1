--
-- Table structure for table `ins_cls_ikd_adm`
--

DROP TABLE IF EXISTS `ins_cls_ikd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cls_ikd_adm` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cr_clm_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계약사고담보구분코드',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `gn_co_appr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일반공동인정구분코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `bz_avtb_larg_ikdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표대보종코드',
  `bz_avtb_ikd_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업실적표보종담보코드',
  `onl_gd_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '온라인상품여부',
  `out_seqno` decimal(5,0) NOT NULL COMMENT '출력순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`cr_clm_cvr_flgcd`,`cvrcd`,`gn_co_appr_flgcd`,`ap_strdt`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='마감보종관리';
