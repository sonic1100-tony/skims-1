--
-- Table structure for table `lse_mv_cm_trm_info`
--

DROP TABLE IF EXISTS `lse_mv_cm_trm_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mv_cm_trm_info` (
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `rcp_crr_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '접수이력순번',
  `trm_srvno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '단말기서비스번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `hndph_tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화지역번호',
  `hndph_tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화국번',
  `hndph_tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰전화일련번호',
  `srv_isrdt` date DEFAULT NULL COMMENT '서비스가입일자',
  `trm_knd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단말기종류구분코드',
  `trm_sno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단말기일련번호',
  `trm_mfg_prc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '단말기출고가격',
  `brkpr_amt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '위약금액',
  `srv_cnldt` date DEFAULT NULL COMMENT '서비스해지일자',
  `trm_colnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단말기색상명',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rcp_yymm`,`rcp_nv_seqno`,`rcp_crr_seqno`,`trm_srvno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='이동통신단말기정보';
