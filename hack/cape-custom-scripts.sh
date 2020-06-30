#!/bin/bash
set -eu
docker run -v $(pwd)/_output:/opt/_output --rm --entrypoint cp velero/velero-plugin-for-aws:master /plugins/velero-plugin-for-aws /opt/_output/velero-plugin-for-aws
docker run -v $(pwd)/_output:/opt/_output --rm --entrypoint cp velero/velero-plugin-for-gcp:master /plugins/velero-plugin-for-gcp /opt/_output/velero-plugin-for-gcp
docker run -v $(pwd)/_output:/opt/_output --rm --entrypoint cp velero/velero-plugin-for-microsoft-azure:master /plugins/velero-plugin-for-microsoft-azure /opt/_output/velero-plugin-for-microsoft-azure
docker run -v $(pwd)/_output:/opt/_output --rm --entrypoint cp biqmind/velero-plugin-for-cape /plugins/cape /opt/_output/cape
docker run --user 1001 -v $(pwd)/_output:/opt/_output --rm --entrypoint cp registry.cn-hangzhou.aliyuncs.com/acs/velero-plugin-alibabacloud:v1.2-991b590 /plugins/velero-plugin-for-alibabacloud /opt/_output/velero-plugin-for-alibabacloud
