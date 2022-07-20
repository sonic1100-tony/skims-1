--
-- Table structure for table `ins_rins_xc_requ`
--

DROP TABLE IF EXISTS `ins_rins_xc_requ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_rins_xc_requ` (
  `xc_rqno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '정산의뢰번호',
  `xcpl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '정산처구분코드',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `xc_rqudt` date NOT NULL COMMENT '정산의뢰일자',
  `rincd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재보험자코드',
  `bdl_requ_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄의뢰구분코드',
  `xc_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산업무구분코드',
  `xc_amt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산금액구분코드',
  `xc_spc` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정산내역',
  `rm_perdt` date DEFAULT NULL COMMENT '송금기한일자',
  `rm_bknm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금은행명',
  `rm_bk_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금은행계좌번호',
  `rm_dt` date DEFAULT NULL COMMENT '송금일자',
  `rm_nots_mtt` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '송금적요사항',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재상태코드',
  `prv_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재직원번호',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prv_xmn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재검토내용',
  `nxt_stm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다음결제직원번호',
  `lq_asmt_no` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '청산지정번호',
  `lq_rqudt` date DEFAULT NULL COMMENT '청산의뢰일자',
  `offs_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OFFSET여부',
  `offs_gpno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OFFSET그룹번호',
  `doc_snd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공문발송여부',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`xc_rqno`),
  KEY `idx_ins_rins_xc_requ_10` (`lq_asmt_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='재보험정산의뢰';
