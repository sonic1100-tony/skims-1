--
-- Table structure for table `ins_cmpg_mng_mtt`
--

DROP TABLE IF EXISTS `ins_cmpg_mng_mtt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmpg_mng_mtt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vctr_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '벡터ID',
  `cell_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '셀ID',
  `bj_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대상ID',
  `extdt` date NOT NULL COMMENT '추출일자',
  `ad_info_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '부가정보ID',
  `qusnr_id` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '설문지ID',
  `qtit_no` decimal(3,0) NOT NULL COMMENT '문항번호',
  `qust_rst_ch_seqno` decimal(5,0) NOT NULL COMMENT '설문결과변경순번',
  `mng_mtt_ch_seqno` decimal(5,0) NOT NULL COMMENT '조치사항변경순번',
  `cmpg_mng_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인조치결과코드',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `mng_perd_ad_days` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '조치기한추가일수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cmpg_mng_mtt_00` (`vctr_id`,`cell_id`,`bj_id`,`extdt`,`ad_info_id`,`qusnr_id`,`qtit_no`,`qust_rst_ch_seqno`,`mng_mtt_ch_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='캠페인조치사항';
