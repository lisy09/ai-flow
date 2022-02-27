# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

DBG_MAKEFILE ?=
ifeq ($(DBG_MAKEFILE),1)
    $(warning ***** starting Makefile for goal(s) "$(MAKECMDGOALS)")
    $(warning ***** $(shell date))
else
    MAKEFLAGS += -s
endif

SHELL := /usr/bin/env bash

# Define variables so help command work
PRINT_HELP ?=

# Noticed that this has impact when some command call in makefile call so need to be not enabled
# MAKEFLAGS += --no-builtin-rules

ROOT_DIR=${PWD}
DEV_TOOLS_DIR=${ROOT_DIR}/dev-tools
MAKEFILE_DIR=${DEV_TOOLS_DIR}/mkfiles
SCRIPT_DIR=${DEV_TOOLS_DIR}/scripts

include ${MAKEFILE_DIR}/*.mk