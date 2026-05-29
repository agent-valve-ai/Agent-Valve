#!/usr/bin/env bash
set -euo pipefail

curl -i -L -X POST "https://submit.jotform.com/submit/261483634936466" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "formID=261483634936466" \
  --data-urlencode "simple_spc=261483634936466-261483634936466" \
  --data-urlencode "website=" \
  --data-urlencode "q4_survey_version=v1.0" \
  --data-urlencode "q5_submitted_via=public_curl" \
  --data-urlencode "q6_tracked_source=github_readme" \
  --data-urlencode "q7_tracked_medium=github" \
  --data-urlencode "q8_tracked_campaign=agent_valve_survey_v1" \
  --data-urlencode "q14_agent_type[]=OpenClaw agent" \
  --data-urlencode "q14_agent_type[]=Claude Code agent" \
  --data-urlencode "q19_common_use_cases[]=Appointment scheduling" \
  --data-urlencode "q24_llm_models_used[]=OpenAI GPT family" \
  --data-urlencode "q26_owner_locations=Country/region/city if known" \
  --data-urlencode "q28_target_business_locations=Country/region/city/service area" \
  --data-urlencode "q31_top_bottleneck_industries[]=Healthcare/HMOs/health plans" \
  --data-urlencode "q37_bottleneck_frequency_overall=Often" \
  --data-urlencode "q39_simplest_connection_methods[]=MCP server" \
  --data-urlencode "q39_simplest_connection_methods[]=HTTP POST/cURL (form-encoded)" \
  --data-urlencode "q66_single_biggest_improvement=MCP server support" \
  --data-urlencode "q69_follow_up_consent=No"

