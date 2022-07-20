--
-- Table structure for table `fin_dlplc_act`
--

DROP TABLE IF EXISTS `fin_dlplc_act`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dlplc_act` (
  `dlplc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래처구분코드',
  `dlpno` varchar(64) COLLATE utf8mb4_bin NOT NULL COMMENT '거래처번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `dpsr` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '예금주',
  `lq_dltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산상대처코드',
  `us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용여부',
  `fnl_usdt` date DEFAULT NULL COMMENT '최종사용일자',
  `mntr_act_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주거래계좌여부',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재직원번호',
  `prv_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재기관코드',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `prv_reqdt` date DEFAULT NULL COMMENT '결재요청일자',
  `rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주민등록번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dlplc_flgcd`,`dlpno`,`bkcd`,`actno`),
  KEY `idx_fin_dlplc_act_10` (`lq_dltcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='거래처계좌';
