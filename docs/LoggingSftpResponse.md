# Fastly::LoggingSftpResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | **String** | Where in the generated VCL the logging call should be placed. If not set, endpoints with `format_version` of 2 are placed in `vcl_log` and those with `format_version` of 1 are placed in `vcl_deliver`.  | [optional] |
| **format_version** | **Integer** | The version of the custom logging format used for the configured endpoint. The logging call gets placed by default in `vcl_log` if `format_version` is set to `2` and in `vcl_deliver` if `format_version` is set to `1`.  | [optional][default to FORMAT_VERSION::v2] |
| **response_condition** | **String** | The name of an existing condition in the configured endpoint, or leave blank to always execute. | [optional] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). | [optional][default to &#39;%h %l %u %t \&quot;%r\&quot; %&amp;gt;s %b&#39;] |
| **message_type** | **String** | How the message should be formatted. | [optional][default to &#39;classic&#39;] |
| **timestamp_format** | **String** | A timestamp format | [optional][readonly] |
| **period** | **Integer** | How frequently log files are finalized so they can be available for reading (in seconds). | [optional][default to 3600] |
| **gzip_level** | **Integer** | The level of gzip encoding when sending logs (default `0`, no compression). Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional][default to 0] |
| **compression_codec** | **String** | The codec used for compressing your logs. Valid values are `zstd`, `snappy`, and `gzip`. Specifying both `compression_codec` and `gzip_level` in the same API request will result in an error. | [optional] |
| **address** | **String** | A hostname or IPv4 address. | [optional] |
| **port** | **Integer** | The port number. | [optional][default to 22] |
| **password** | **String** | The password for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional] |
| **path** | **String** | The path to upload logs to. | [optional][default to &#39;null&#39;] |
| **public_key** | **String** | A PGP public key that Fastly will use to encrypt your log files before writing them to disk. | [optional][default to &#39;null&#39;] |
| **secret_key** | **String** | The SSH private key for the server. If both `password` and `secret_key` are passed, `secret_key` will be used in preference. | [optional][default to &#39;null&#39;] |
| **ssh_known_hosts** | **String** | A list of host keys for all hosts we can connect to over SFTP. | [optional] |
| **user** | **String** | The username for the server. | [optional] |
| **created_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **deleted_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **updated_at** | **Time** | Date and time in ISO 8601 format. | [optional][readonly] |
| **service_id** | **String** |  | [optional][readonly] |
| **version** | **Integer** |  | [optional][readonly] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

