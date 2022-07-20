--
-- Table structure for table `ins_auto_tf_cms_bk_rcp`
--

DROP TABLE IF EXISTS `ins_auto_tf_cms_bk_rcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_auto_tf_cms_bk_rcp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stdt` date NOT NULL COMMENT '기준일자',
  `tf_dl_metcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '이체처리방식코드',
  `dh_cmpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '취급회사코드',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `rqdt` date NOT NULL COMMENT '신청일자',
  `cms_rq_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'CMS신청구분코드',
  `pyr_no` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '납부자번호',
  `bkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '은행코드',
  `bk_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행지점코드',
  `actno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '계좌번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `bk_dh_brcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '은행취급지점코드',
  `cms_fd_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CMS자금종류코드',
  `dpsr_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예금주전화번호',
  `cms_rcp_ptncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CMS접수경로코드',
  `cms_rq_rcp_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CMS신청접수채널코드',
  `nml_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '정상처리여부',
  `cms_ercd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'CMS오류코드',
  `dl_dthms` datetime DEFAULT NULL COMMENT '처리일시',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_auto_tf_cms_bk_rcp_00` (`stdt`,`tf_dl_metcd`,`dh_cmpcd`,`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동이체CMS은행접수';
