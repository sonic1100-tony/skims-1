--
-- Table structure for table `lse_dm_rde_adm_bj`
--

DROP TABLE IF EXISTS `lse_dm_rde_adm_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dm_rde_adm_bj` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `adm_bj_seqno` decimal(3,0) NOT NULL COMMENT '관리대상순번',
  `wr_adm_bjpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '불량관리대상코드',
  `ad_1_it` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '추가1항목',
  `ad_2_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '추가2항목',
  `rgt_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '등록유형코드',
  `nr_rgt_rs` varchar(2000) COLLATE utf8mb4_bin NOT NULL COMMENT '관심등록사유',
  `memo_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모발송여부',
  `sms_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SMS발송여부',
  `noty_1_rcvpt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림1수신자직원번호',
  `noty_2_rcvpt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림2수신자직원번호',
  `noty_3_rcvpt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림3수신자직원번호',
  `noty_4_rcvpt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림4수신자직원번호',
  `noty_5_rcvpt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '알림5수신자직원번호',
  `wr_adm_kyvl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '불량관리키값',
  `wr_adm_seqno` decimal(11,0) DEFAULT NULL COMMENT '불량관리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dm_rde_adm_bj_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`adm_bj_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감관리대상';
