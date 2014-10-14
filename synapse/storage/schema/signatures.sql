/* Copyright 2014 OpenMarket Ltd
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

CREATE TABLE IF NOT EXISTS pdu_hashes (
  pdu_id TEXT,
  origin TEXT,
  algorithm TEXT,
  hash BLOB,
  CONSTRAINT uniqueness UNIQUE (pdu_id, origin, algorithm)
);

CREATE INDEX IF NOT EXISTS pdu_hashes_id ON pdu_hashes (pdu_id, origin);

CREATE TABLE IF NOT EXISTS pdu_origin_signatures (
  pdu_id TEXT,
  origin TEXT,
  key_id TEXT,
  signature BLOB,
  CONSTRAINT uniqueness UNIQUE (pdu_id, origin, algorithm)
);

CREATE INDEX IF NOT EXISTS pdu_origin_signatures_id ON pdu_origin_signatures (
    pdu_id, origin,
);
