# Fastly::Snippet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name for the snippet. | [optional] |
| **dynamic** | **Integer** | Sets the snippet version. | [optional] |
| **type** | **String** | The location in generated VCL where the snippet should be placed. | [optional] |
| **content** | **String** | The VCL code that specifies exactly what the snippet does. | [optional] |
| **priority** | **Integer** | Priority determines execution order. Lower numbers execute first. | [optional][default to 100] |

[[Back to API list]](../../README.md#endpoints) [[Back to README]](../../README.md)

