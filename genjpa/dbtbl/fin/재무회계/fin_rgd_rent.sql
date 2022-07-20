--
-- Table structure for table `fin_rgd_rent`
--

DROP TABLE IF EXISTS `fin_rgd_rent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_rgd_rent` (
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `cls_da_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '마감자료종류코드',
  `cr_seqno` decimal(7,0) NOT NULL COMMENT '발생순번',
  `dl_tp_o1_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형1차분류코드',
  `dl_tp_o2_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래유형2차분류코드',
  `dlplc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '거래처구분코드',
  `dlplc_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '거래처식별번호',
  `dlpnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '거래처명',
  `mvidt` date NOT NULL COMMENT '입주일자',
  `expu_dt` date DEFAULT NULL COMMENT '퇴거일자',
  `les_pst_info` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '임대위치정보',
  `les_are` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '임대면적',
  `les_guamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '임대보증금액',
  `mtamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월세금액',
  `mr_smamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월세합계금액',
  `mc` decimal(3,0) NOT NULL COMMENT '월수',
  `guamt_ntamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보증금이자금액',
  `guamt_ntrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '보증금이자율',
  `guamt_axamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '보증금부가세액',
  `bzwpl_bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업장사업자번호',
  `rpr_prdno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신고기수',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `dl_seqno` decimal(5,0) DEFAULT NULL COMMENT '처리순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`st_yymm`,`cls_da_kndcd`,`cr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='간주임대료';
