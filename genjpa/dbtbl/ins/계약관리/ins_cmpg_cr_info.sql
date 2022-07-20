--
-- Table structure for table `ins_cmpg_cr_info`
--

DROP TABLE IF EXISTS `ins_cmpg_cr_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmpg_cr_info` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `vctr_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '벡터ID',
  `cell_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '셀ID',
  `bj_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '대상ID',
  `extdt` date NOT NULL COMMENT '추출일자',
  `ad_info_id` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '부가정보ID',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `dh_br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급지점기관코드',
  `dh_bzp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급영업소기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `ad_info` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가정보',
  `cmpg_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인업무구분코드',
  `cmpg_bsns_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인업무세부구분코드',
  `cmpg_mng_perdt` date DEFAULT NULL COMMENT '캠페인조치기한일자',
  `cmpg_mng_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인조치결과코드',
  `cmpg_mng_cpldt` date DEFAULT NULL COMMENT '캠페인조치완료일자',
  `cmpg_mng_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인조치직원번호',
  `cmpg_ud_prg_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '캠페인심사진행상태코드',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `call_hp_strdt` date DEFAULT NULL COMMENT '콜희망시작일자',
  `call_hp_nddt` date DEFAULT NULL COMMENT '콜희망종료일자',
  `call_hp_str_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '콜희망시작시간',
  `call_hp_nd_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '콜희망종료시간',
  `fnl_mntr_ctm_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최종모니터링고객전화번호',
  `pect_sl_mntr_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '완전판매모니터링채널코드',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `ntc_msg_snd_dthms` datetime DEFAULT NULL COMMENT '안내메시지발송일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cmpg_cr_info_00` (`vctr_id`,`cell_id`,`bj_id`,`extdt`,`ad_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='캠페인계약정보';
