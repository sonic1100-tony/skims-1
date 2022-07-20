--
-- Table structure for table `ins_rins_rt_st_info`
--

DROP TABLE IF EXISTS `ins_rins_rt_st_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_rt_st_info` (
  `rins_crano_id` decimal(5,0) NOT NULL COMMENT '재보험계약번호ID',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `rins_crano` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험계약번호',
  `rins_cr_ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '재보험계약배서번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `rert` decimal(12,6) DEFAULT NULL COMMENT '출재율',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`rins_crano_id`,`gdcd`,`rins_crano`,`rins_cr_ndsno`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보험재보험율기준정보';
