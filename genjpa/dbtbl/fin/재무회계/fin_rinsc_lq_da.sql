--
-- Table structure for table `fin_rinsc_lq_da`
--

DROP TABLE IF EXISTS `fin_rinsc_lq_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rinsc_lq_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rinsc_lq_dano` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '재보사청산자료번호',
  `rinsc_lq_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '재보사청산년월',
  `rinsc_lq_dgre` decimal(3,0) NOT NULL COMMENT '재보사청산차수',
  `lq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청산구분코드',
  `lq_dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청산상대처코드',
  `ikd_grp_inq_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군조회코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보험종목코드',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `fc_lqamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화청산금액',
  `woncr_lqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화청산금액',
  `lqdt` date DEFAULT NULL COMMENT '청산일자',
  `lq_asmt_seqno` decimal(5,0) DEFAULT NULL COMMENT '청산지정순번',
  `lq_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청산처리구분코드',
  `ap_reqno` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '승인요청번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_rinsc_lq_da_00` (`rinsc_lq_dano`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보사청산자료';
