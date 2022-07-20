--
-- Table structure for table `fin_lq_xc`
--

DROP TABLE IF EXISTS `fin_lq_xc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_lq_xc` (
  `lqdt` date NOT NULL COMMENT '청산일자',
  `lq_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '청산기관코드',
  `lq_xcno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '청산정산번호',
  `lq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청산구분코드',
  `lq_dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청산상대처코드',
  `dp_wdrc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '입금출금구분코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `woncr_lqamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '원화청산금액합계',
  `fc_lqamt_sm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '외화청산금액합계',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `py_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급방법코드',
  `pynct_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급금권유형코드',
  `pypl_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처고객번호',
  `pypl_bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처은행코드',
  `pypl_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급처계좌번호',
  `crno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발생번호',
  `py_xcno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급정산번호',
  `py_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급기관코드',
  `pydt` date DEFAULT NULL COMMENT '지급일자',
  `lq_asmt_seqno` decimal(5,0) DEFAULT NULL COMMENT '청산지정순번',
  `cvs_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '변환환율',
  `lq_xc_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '청산정산상태코드',
  `slpdt` date DEFAULT NULL COMMENT '전표일자',
  `slpno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전표번호',
  `lq_rst_tfdt` date DEFAULT NULL COMMENT '청산결과이체일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lqdt`,`lq_orgcd`,`lq_xcno`),
  KEY `idx_fin_lq_xc_10` (`crno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='청산정산';
