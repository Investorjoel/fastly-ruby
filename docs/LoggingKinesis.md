# Fastly::LoggingKinesis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name for the real-time logging configuration. | [optional] |
| **placement** | [**LoggingPlacement**](LoggingPlacement.md) |  | [optional] |
| **format_version** | [**LoggingFormatVersion**](LoggingFormatVersion.md) |  | [optional][default to LoggingFormatVersion::v2] |
| **format** | **String** | A Fastly [log format string](https://docs.fastly.com/en/guides/custom-log-formats). Must produce valid JSON that Kinesis can ingest. | [optional][default to &#39;{\&quot;timestamp\&quot;:\&quot;%{begin:%Y-%m-%dT%H:%M:%S}t\&quot;,\&quot;time_elapsed\&quot;:\&quot;%{time.elapsed.usec}V\&quot;,\&quot;is_tls\&quot;:\&quot;%{if(req.is_ssl, \\\&quot;true\\\&quot;, \\\&quot;false\\\&quot;)}V\&quot;,\&quot;client_ip\&quot;:\&quot;%{req.http.Fastly-Client-IP}V\&quot;,\&quot;geo_city\&quot;:\&quot;%{client.geo.city}V\&quot;,\&quot;geo_country_code\&quot;:\&quot;%{client.geo.country_code}V\&quot;,\&quot;request\&quot;:\&quot;%{req.request}V\&quot;,\&quot;host\&quot;:\&quot;%{req.http.Fastly-Orig-Host}V\&quot;,\&quot;url\&quot;:\&quot;%{json.escape(req.url)}V\&quot;,\&quot;request_referer\&quot;:\&quot;%{json.escape(req.http.Referer)}V\&quot;,\&quot;request_user_agent\&quot;:\&quot;%{json.escape(req.http.User-Agent)}V\&quot;,\&quot;request_accept_language\&quot;:\&quot;%{json.escape(req.http.Accept-Language)}V\&quot;,\&quot;request_accept_charset\&quot;:\&quot;%{json.escape(req.http.Accept-Charset)}V\&quot;,\&quot;cache_status\&quot;:\&quot;%{regsub(fastly_info.state, \\\&quot;^(HIT-(SYNTH)|(HITPASS|HIT|MISS|PASS|ERROR|PIPE)).*\\\&quot;, \\\&quot;\\\\2\\\\3\\\&quot;) }V\&quot;}&#39;] |
| **topic** | **String** | The Amazon Kinesis stream to send logs to. Required. | [optional] |
| **region** | [**AwsRegion**](AwsRegion.md) |  | [optional] |
| **secret_key** | **String** | The secret key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified. | [optional] |
| **access_key** | **String** | The access key associated with the target Amazon Kinesis stream. Not required if `iam_role` is specified. | [optional] |
| **iam_role** | **String** | The ARN for an IAM role granting Fastly access to the target Amazon Kinesis stream. Not required if `access_key` and `secret_key` are provided. | [optional] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

