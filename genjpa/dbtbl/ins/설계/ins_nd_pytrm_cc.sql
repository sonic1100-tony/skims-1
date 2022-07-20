--
-- Table structure for table `ins_nd_pytrm_cc`
--

DROP TABLE IF EXISTS `ins_nd_pytrm_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_nd_pytrm_cc` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `cc_cnd_gpno` decimal(5,0) NOT NULL COMMENT '산출조건그룹번호',
  `cc_gp_crr_seqno` decimal(5,0) NOT NULL COMMENT '산출그룹이력순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `us_av_strdt` date NOT NULL COMMENT '사용가능시작일자',
  `us_av_nddt` date NOT NULL COMMENT '사용가능종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`cc_cnd_gpno`,`cc_gp_crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='만기납입기간산출';
