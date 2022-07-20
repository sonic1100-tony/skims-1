--
-- Table structure for table `ins_ntp_cs_lbtrs`
--

DROP TABLE IF EXISTS `ins_ntp_cs_lbtrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ntp_cs_lbtrs` (
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `chg_dt` date DEFAULT NULL COMMENT '교체일자',
  `stadt` date DEFAULT NULL COMMENT '상태일자',
  `tir_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어상태코드',
  `ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객명',
  `ctm_brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객생년월일',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `mktg_colus_utagr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마케팅수집이용활용동의여부',
  `tir_ptn_no` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어패턴번호',
  `tir_size_vl` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어크기값',
  `tir_chg_qant` decimal(3,0) DEFAULT NULL COMMENT '타이어교체수량',
  `tir_chg_pstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어교체위치코드',
  `bf_left_tir_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전좌타이어일련번호',
  `bf_left_tdn` decimal(4,0) DEFAULT NULL COMMENT '전좌타이어도트번호',
  `bf_rght_tir_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전우타이어일련번호',
  `bf_rght_tdn` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전우타이어도트번호',
  `af_left_tir_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후좌타이어일련번호',
  `af_left_tdn` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후좌타이어도트번호',
  `af_rght_tir_sno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후우타이어일련번호',
  `af_rght_tdn` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후우타이어도트번호',
  `pur_amt` decimal(15,0) DEFAULT NULL COMMENT '구입금액',
  `hndph_no` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '핸드폰번호',
  `carnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명',
  `carno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호',
  `trvl_dst` decimal(7,0) DEFAULT NULL COMMENT '주행거리',
  `tirp_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어프로지점코드',
  `tirp_brnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어프로지점명',
  `tirp_brma_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어프로지점장명',
  `tirp_br_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '타이어프로지점전화번호',
  `adm_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리내용',
  `af_tir_ptn_no` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '후타이어패턴번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`plyno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기업비용배상책임';
