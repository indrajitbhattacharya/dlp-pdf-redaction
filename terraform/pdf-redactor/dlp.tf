# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

resource "google_data_loss_prevention_inspect_template" "dlp_pdf_template" {
  parent       = "projects/${var.project_id}/locations/global"
  description  = "PDF Redaction Inspect Template"
  display_name = "pdf_redaction_dlp_template"

  inspect_config {
    info_types {
      name = "EMAIL_ADDRESS"
    }
    info_types {
      name = "PERSON_NAME"
    }
    info_types {
      name = "LAST_NAME"
    }
    info_types {
      name = "PHONE_NUMBER"
    }
    info_types {
      name = "FIRST_NAME"
    }
    info_types {
      name = "STREET_ADDRESS"
    }
    info_types {
      name = "DATE_OF_BIRTH"
    }
    info_types {
      name = "DATE"
    }
    info_types {
      name = "TIME"
    }
    info_types {
      name = "US_TOLLFREE_PHONE_NUMBER"
    }
    info_types {
      name = "US_VEHICLE_IDENTIFICATION_NUMBER"
    }
    info_types {
      name = "IMEI_HARDWARE_ID"
    }
    info_types {
      name = "MAC_ADDRESS"
    }
    info_types {
      name = "MAC_ADDRESS_LOCAL"
    }
    info_types {
      name = "US_SOCIAL_SECURITY_NUMBER"
    }
    info_types {
      name = "URL"
    }
    info_types {
      name = "US_DRIVERS_LICENSE_NUMBER"
    }
    info_types {
      name = "PASSPORT"
    }
    info_types {
      name = "US_BANK_ROUTING_MICR"
    }
    info_types {
      name = "US_EMPLOYER_IDENTIFICATION_NUMBER"
    }
  }

  depends_on = [
    module.project_services,
  ]
}
