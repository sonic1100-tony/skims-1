--
-- Table structure for table `cmp_ad_scpt_chek`
--

DROP TABLE IF EXISTS `cmp_ad_scpt_chek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_ad_scpt_chek` (
  `scpt_rq_ty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '스크립트요청형태구분코드',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청기관코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `dt_seqno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '상세순번',
  `ad_scpt_chek_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '광고스크립트체크구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`scpt_rq_ty_flgcd`,`reqdt`,`rqog_cd`,`seqno`,`dt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='광고스크립트체크';
