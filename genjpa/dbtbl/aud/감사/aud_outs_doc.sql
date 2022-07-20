--
-- Table structure for table `aud_outs_doc`
--

DROP TABLE IF EXISTS `aud_outs_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_outs_doc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dpc_orgnm` varchar(150) COLLATE utf8mb4_bin NOT NULL COMMENT '발신기관명',
  `dcuno` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '문서번호',
  `bj_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '대상기관코드',
  `rcpdt` date NOT NULL COMMENT '접수일자',
  `titl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제목',
  `dcu_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서내용',
  `adx_file_pth1` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로1',
  `adx_file_pth2` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로2',
  `adx_file_pth3` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로3',
  `adx_file_pth4` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로4',
  `adx_file_pth5` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로5',
  `adx_file_pth6` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로6',
  `adx_file_pth7` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로7',
  `adx_file_pth8` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로8',
  `adx_file_pth9` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로9',
  `adx_file_pth10` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로10',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_aud_outs_doc_01` (`dpc_orgnm`,`dcuno`,`bj_orgcd`,`rcpdt`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='외부공문';
