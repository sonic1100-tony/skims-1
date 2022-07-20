--
-- Table structure for table `ins_basts_rk`
--

DROP TABLE IF EXISTS `ins_basts_rk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_basts_rk` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `cvr_seqno` decimal(5,0) NOT NULL COMMENT '담보순번',
  `rkrt_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '위험율코드',
  `rkrt` decimal(12,6) DEFAULT NULL COMMENT '위험률',
  `isamt` decimal(17,2) DEFAULT NULL COMMENT '가입금액',
  `rmimc_flgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실손의료비구분코드',
  `cvr_spcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보특성코드',
  `gn_cncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보장내용코드',
  `cmpx_cvr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '복합담보구분코드',
  `rnd_crct` decimal(9,0) DEFAULT NULL COMMENT '경과계약건수',
  `rnd_rk_prm` decimal(17,2) DEFAULT NULL COMMENT '경과위험보험료',
  `imu_trm_days` decimal(5,0) DEFAULT NULL COMMENT '면책기간일수',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`plyno`,`ctmno`,`cvrcd`,`cvr_seqno`,`rkrt_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기초통계위험';
