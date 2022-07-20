--
-- Table structure for table `gea_hot_it_ch_crr`
--

DROP TABLE IF EXISTS `gea_hot_it_ch_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_hot_it_ch_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `hot_rgtno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '임대차등록번호',
  `hot_adm_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '임대차관리항목코드',
  `ch_rq_dthms` datetime NOT NULL COMMENT '변경요청일시',
  `ch_dthms` datetime NOT NULL COMMENT '변경일시',
  `ap_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인여부',
  `ap_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인직원번호',
  `ap_dthms` datetime DEFAULT NULL COMMENT '승인일시',
  `les_rnt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '임대임차구분코드',
  `dlplc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래처구분코드',
  `hot_essn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임대차필수유무',
  `rnt_spr_ctmno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임차공급자고객번호',
  `rnt_sprr_ctmno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '임차공급받는자고객번호',
  `rntrt_py_cm_xpamt` decimal(15,0) DEFAULT NULL COMMENT '임차료지급당월예상금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_hot_it_ch_crr_00` (`hot_rgtno`,`hot_adm_itcd`,`ch_rq_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='임대차항목변경이력';
