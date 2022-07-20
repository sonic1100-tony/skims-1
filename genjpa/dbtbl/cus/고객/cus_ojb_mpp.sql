--
-- Table structure for table `cus_ojb_mpp`
--

DROP TABLE IF EXISTS `cus_ojb_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ojb_mpp` (
  `jb_ch_seqno` decimal(5,0) NOT NULL COMMENT '직업변경순번',
  `jbcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직업코드',
  `ojb_ch_seqno` decimal(5,0) NOT NULL COMMENT '구직업변경순번',
  `ojbcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '구직업코드',
  `ojb_ap_strdt` date DEFAULT NULL COMMENT '구직업적용시작일자',
  `ojb_ap_nddt` date DEFAULT NULL COMMENT '구직업적용종료일자',
  `injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수코드',
  `injr_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해등급코드',
  `prio_rank` decimal(2,0) DEFAULT NULL COMMENT '우선순위',
  `ojb_prio_rank` decimal(2,0) DEFAULT NULL COMMENT '구직업우선순위',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`jb_ch_seqno`,`jbcd`,`ojb_ch_seqno`,`ojbcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구직업매핑';
