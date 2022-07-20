--
-- Table structure for table `ccm_loss_rtamt_cal`
--

DROP TABLE IF EXISTS `ccm_loss_rtamt_cal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_loss_rtamt_cal` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) NOT NULL COMMENT '보상키순번',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `loss_rtamt_cc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '일실퇴직금산출구분코드',
  `rtamt_cc_stncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴직금산출기준코드',
  `rtamt_cc_metd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '퇴직금산출방식구분코드',
  `ntrdt` date DEFAULT NULL COMMENT '입사일자',
  `rl_rtmdt` date DEFAULT NULL COMMENT '실제퇴직일자',
  `rtm_rcamt` decimal(15,0) DEFAULT NULL COMMENT '퇴직수령금액',
  `aw_rcamt` decimal(15,0) DEFAULT NULL COMMENT '수당환수금액',
  `lbr_blt_losrt` decimal(5,2) DEFAULT NULL COMMENT '노동능력상실율',
  `loss_rtamt` decimal(15,0) DEFAULT NULL COMMENT '일실퇴직금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_loss_rtamt_cal_00` (`cmp_ky_yr`,`cmp_ky_seqno`,`cc_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일실퇴직금계산';
