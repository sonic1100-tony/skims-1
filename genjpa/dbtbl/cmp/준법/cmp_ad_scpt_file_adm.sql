--
-- Table structure for table `cmp_ad_scpt_file_adm`
--

DROP TABLE IF EXISTS `cmp_ad_scpt_file_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_ad_scpt_file_adm` (
  `scpt_rq_ty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '스크립트요청형태구분코드',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청기관코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `dt_seqno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '상세순번',
  `adx_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로',
  `ad_scpt_retn_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '광고스크립트반려구분코드',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당직원번호',
  `finm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파일명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`scpt_rq_ty_flgcd`,`reqdt`,`rqog_cd`,`seqno`,`dt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='광고스크립트파일관리';
