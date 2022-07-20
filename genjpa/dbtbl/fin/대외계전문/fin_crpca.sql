--
-- Table structure for table `fin_crpca`
--

DROP TABLE IF EXISTS `fin_crpca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_crpca` (
  `crdno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '카드번호',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `crd_pst_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드소속구분코드',
  `crd_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드회사코드',
  `vald_trm` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '유효기간',
  `lmamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '한도금액',
  `fr_isdt` date NOT NULL COMMENT '최초발급일자',
  `bkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행코드',
  `stm_actno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제계좌번호',
  `dpsr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주',
  `stmdy_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결제일코드',
  `dh_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급기관코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `crd_dl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '카드처리구분코드',
  `crd_dl_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드처리사유코드',
  `crpca_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법인카드상태코드',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `us_spc_inq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT '01' COMMENT '사용내역조회구분코드',
  `us_spc_inq_bjscd` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용내역조회대상자코드',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `crpca_binno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법인카드BIN번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`crdno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법인카드';
