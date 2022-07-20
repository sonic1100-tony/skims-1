--
-- Table structure for table `ins_pl_attf_rq_batch`
--

DROP TABLE IF EXISTS `ins_pl_attf_rq_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_attf_rq_batch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '발행후변경순번',
  `auto_tf_cg_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자동이체요금종류코드',
  `olcrr_seqno` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '구이력순번',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `bk_or_crd_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행/카드회사코드',
  `actno_or_crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계좌번호/카드번호',
  `tf_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체유형코드',
  `bk_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점코드',
  `bk_brnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점명',
  `crd_vald_trm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카드유효기간',
  `tf_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체신청구분코드',
  `dpsr_or_crd_owrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주/카드소유자명',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `crt_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자관계코드',
  `nt_tf_hpdy_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이자이체희망일코드',
  `tf_dl_metcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체처리방식코드',
  `auto_tf_rq_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동이체신청경로코드',
  `ptcrd_ss_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '엽서발행여부',
  `rq_rqudt` date DEFAULT NULL COMMENT '신청의뢰일자',
  `tf_rq_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체신청처리상태코드',
  `tf_rq_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체신청오류코드',
  `rq_rst_rcpdt` date DEFAULT NULL COMMENT '신청결과접수일자',
  `bdl_tf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄이체여부',
  `bnc_rmact_synch_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '방카송금계좌동시변경여부',
  `ch_crdno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경카드번호',
  `ch_crd_vald_trm` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경카드유효기간',
  `at_mntct` decimal(3,0) DEFAULT NULL COMMENT '할부개월수',
  `tf_er_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체오류구분코드',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `cnldt` date DEFAULT NULL COMMENT '해지일자',
  `cn_rqudt` date DEFAULT NULL COMMENT '해지의뢰일자',
  `tf_cn_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이체해지처리상태코드',
  `ln_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대출증권번호',
  `dpsr_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주전화번호',
  `dh_cmpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT 'N03' COMMENT '취급회사코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_pl_attf_rq_batch_00` (`plno`,`cgaf_ch_seqno`,`auto_tf_cg_kndcd`,`olcrr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계자동이체신청_배치';
