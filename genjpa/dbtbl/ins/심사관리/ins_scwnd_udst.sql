--
-- Table structure for table `ins_scwnd_udst`
--

DROP TABLE IF EXISTS `ins_scwnd_udst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_scwnd_udst` (
  `scwnd_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상병코드',
  `scwnd_cl_snro_no` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '상병별시나리오번호',
  `ap_ordr` decimal(5,0) NOT NULL COMMENT '적용순서',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `qust_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '질문ID',
  `rpl_id` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '답변ID',
  `nxt_qust_id` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다음질문ID',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`scwnd_cd`,`scwnd_cl_snro_no`,`ap_ordr`,`ap_strdt`),
  KEY `idx_ins_scwnd_udst_10` (`scwnd_cd`,`qust_id`,`rpl_id`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상병인수기준';
