--
-- Table structure for table `ins_pl_relpc_adr_batch`
--

DROP TABLE IF EXISTS `ins_pl_relpc_adr_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_relpc_adr_batch` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `cgaf_ch_seqno` decimal(5,0) NOT NULL COMMENT '발행후변경순번',
  `relpc_seqno` decimal(10,0) NOT NULL COMMENT '관계자순번',
  `adr_usecd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '주소용도코드',
  `adr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '주소구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `adr_seqno` decimal(10,0) DEFAULT NULL COMMENT '주소순번',
  `nw_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신규주소구분코드',
  `ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고항목',
  `bk_br_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점우편번호',
  `bk_br_ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점기본주소',
  `bk_br_et_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점기타주소',
  `ltrm_nds_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장기배서처리구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_pl_relpc_adr_batch_00` (`plno`,`cgaf_ch_seqno`,`relpc_seqno`,`adr_usecd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계관계자주소_배치';
