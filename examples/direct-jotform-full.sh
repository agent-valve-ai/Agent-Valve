#!/usr/bin/env bash
set -euo pipefail

curl_args=(
  -i
  -L
  -X
  POST
  "https://submit.jotform.com/submit/261483634936466"
  -H
  "Content-Type: application/x-www-form-urlencoded"

  # Technical Jotform fields. These are not public survey question numbers.
  --data-urlencode
  "formID=261483634936466"
  --data-urlencode
  "submitSource=public_curl"
  --data-urlencode
  "submitDate=undefined"
  --data-urlencode
  "uploadServerUrl=https://upload.jotform.com/upload"
  --data-urlencode
  "eventObserver=1"
  --data-urlencode
  "website="
  --data-urlencode
  "simple_spc=261483634936466-261483634936466"

  # Hidden/source fields. These support tracking and are not public survey questions.
  --data-urlencode
  "q4_survey_version=v1.0"
  --data-urlencode
  "q5_submitted_via=public_curl"
  --data-urlencode
  "q6_tracked_source=github_readme"
  --data-urlencode
  "q7_tracked_medium=github"
  --data-urlencode
  "q8_tracked_campaign=agent_valve_survey_v1"
  --data-urlencode
  "q9_tracked_channel=public_repo"
  --data-urlencode
  "q10_tracked_community="
  --data-urlencode
  "q11_tracked_link_id=readme_direct_curl"
  --data-urlencode
  "q12_landing_page_url=https://github.com/agent-valve-ai/Agent-Valve"

  # Survey field 1: Agent type(s) (q14_agent_type[])
  --data-urlencode
  "q14_agent_type[]=OpenClaw agent"
  --data-urlencode
  "q14_agent_type[]=Claude Code agent"

  # Survey field 2: Main operating environment (q15_agent_platform[])
  --data-urlencode
  "q15_agent_platform[]=API calls"
  --data-urlencode
  "q15_agent_platform[]=MCP client/server"

  # Survey field 3: Who does the agent act on behalf of? (q16_acts_on_behalf_of[])
  --data-urlencode
  "q16_acts_on_behalf_of[]=User"

  # Survey field 4: How often does the agent contact businesses? (q17_business_contact_frequency)
  --data-urlencode
  "q17_business_contact_frequency=Weekly"

  # Survey field 5: Level of autonomy (q18_autonomy_level)
  --data-urlencode
  "q18_autonomy_level=Partial autonomy"

  # Survey field 6: Most common use cases (q19_common_use_cases[])
  --data-urlencode
  "q19_common_use_cases[]=Appointment scheduling"
  --data-urlencode
  "q19_common_use_cases[]=Customer support"

  # Survey field 7: Other use case(s), please describe (q20_other_common_use_case)
  --data-urlencode
  "q20_other_common_use_case="

  # Survey field 8: Top common use case 1 (q21_top_common_use_case_1)
  --data-urlencode
  "q21_top_common_use_case_1=Appointment scheduling"

  # Survey field 9: Top common use case 2 (q22_top_common_use_case_2)
  --data-urlencode
  "q22_top_common_use_case_2=Customer support"

  # Survey field 10: Top common use case 3 (q23_top_common_use_case_3)
  --data-urlencode
  "q23_top_common_use_case_3=Purchasing or ordering goods"

  # Survey field 11: LLM model families used (q24_llm_models_used[])
  --data-urlencode
  "q24_llm_models_used[]=OpenAI GPT family"
  --data-urlencode
  "q24_llm_models_used[]=Anthropic Claude family"

  # Survey field 12: Exact model names/versions if known (q25_exact_llm_model_names)
  --data-urlencode
  "q25_exact_llm_model_names=Example model family/version if known"

  # Survey field 13: Where is the agent owner/operator based? (q26_owner_locations)
  --data-urlencode
  "q26_owner_locations=Country/region/city or metro only; no exact street address"

  # Survey field 14: Owner/operator location type (q27_owner_location_flags[])
  --data-urlencode
  "q27_owner_location_flags[]=One primary location"

  # Survey field 15: Where are the target businesses/services located? (q28_target_business_locations)
  --data-urlencode
  "q28_target_business_locations=Country/region/city/service area; no private address"

  # Survey field 16: How does the target business location compare with the owner/operator location? (q29_target_location_flags[])
  --data-urlencode
  "q29_target_location_flags[]=Multiple local areas"

  # Survey field 17: Business categories contacted (q30_industries_contacted[])
  --data-urlencode
  "q30_industries_contacted[]=Healthcare/HMOs/health plans"
  --data-urlencode
  "q30_industries_contacted[]=Grocery/retail"

  # Survey field 18: For the business categories you selected above, how often does the agent usually contact them? (q75_industries_contact_frequency)
  --data-urlencode
  "q75_industries_contact_frequency=1-2 per week"

  # Survey field 19: Categories hardest to contact (q31_top_bottleneck_industries[])
  --data-urlencode
  "q31_top_bottleneck_industries[]=Healthcare/HMOs/health plans"
  --data-urlencode
  "q31_top_bottleneck_industries[]=Grocery/retail"

  # Survey field 20: Services agents try to access (q32_services_tried[])
  --data-urlencode
  "q32_services_tried[]=Appointments"
  --data-urlencode
  "q32_services_tried[]=Customer support"

  # Survey field 21: For the services you selected above, how often does the agent usually try to access them? (q76_services_tried_frequency)
  --data-urlencode
  "q76_services_tried_frequency=3-6 per week"

  # Survey field 22: Goods agents find, compare, or purchase (q33_goods_tried[])
  --data-urlencode
  "q33_goods_tried[]=Groceries"

  # Survey field 23: For the goods you selected above, how often does the agent usually find, compare, or purchase them? (q77_goods_tried_frequency)
  --data-urlencode
  "q77_goods_tried_frequency=1-3 per month"

  # Survey field 24: Where purchasing gets difficult (q34_purchasing_difficulty_factors[])
  --data-urlencode
  "q34_purchasing_difficulty_factors[]=Prices"
  --data-urlencode
  "q34_purchasing_difficulty_factors[]=Checkout"

  # Survey field 25: Technical issues/failure modes (q35_technical_issues[])
  --data-urlencode
  "q35_technical_issues[]=CAPTCHA/human verification"
  --data-urlencode
  "q35_technical_issues[]=No API/MCP/structured endpoint"

  # Survey field 26: Biggest bottlenecks (q36_top_bottleneck_reasons[])
  --data-urlencode
  "q36_top_bottleneck_reasons[]=No structured API/MCP/CLI"
  --data-urlencode
  "q36_top_bottleneck_reasons[]=Phone-only contact"

  # Survey field 27: Overall bottleneck frequency (q37_bottleneck_frequency_overall)
  --data-urlencode
  "q37_bottleneck_frequency_overall=Often"

  # Survey field 28: Frequency by bottleneck type (free-text or structured summary) (q38_bottleneck_frequency_matrix)
  --data-urlencode
  "q38_bottleneck_frequency_matrix=Example: CAPTCHA often; phone-only sometimes; no API often."

  # Survey field 29: Simplest ways to connect (q39_simplest_connection_methods[])
  --data-urlencode
  "q39_simplest_connection_methods[]=MCP server"
  --data-urlencode
  "q39_simplest_connection_methods[]=Public API"
  --data-urlencode
  "q39_simplest_connection_methods[]=HTTP POST/cURL (form-encoded)"
  --data-urlencode
  "q39_simplest_connection_methods[]=Programmatic form submission"

  # Survey field 30: Contact channels working best today (q40_best_contact_channels[])
  --data-urlencode
  "q40_best_contact_channels[]=Email"
  --data-urlencode
  "q40_best_contact_channels[]=Structured web form"
  --data-urlencode
  "q40_best_contact_channels[]=HTTP POST/cURL (form-encoded)"

  # Survey field 31: Contact channels working worst today (q41_worst_contact_channels[])
  --data-urlencode
  "q41_worst_contact_channels[]=Phone"
  --data-urlencode
  "q41_worst_contact_channels[]=Email"

  # Survey field 32: Where agents search first (q42_search_first_sources[])
  --data-urlencode
  "q42_search_first_sources[]=Business website"
  --data-urlencode
  "q42_search_first_sources[]=Search engine"

  # Survey field 33: Where agents search if first source is not enough (q43_search_fallback_sources[])
  --data-urlencode
  "q43_search_fallback_sources[]=Phone/email"

  # Survey field 34: How often ease of contact influences choice (q44_purchase_decision_influenced_by_contact_ease)
  --data-urlencode
  "q44_purchase_decision_influenced_by_contact_ease=Often"

  # Survey field 35: Have you ever chosen a different business/provider because the preferred one was too hard for an agent to contact, book, buy from, or use? (q45_selected_different_business_due_to_access)
  --data-urlencode
  "q45_selected_different_business_due_to_access=Yes sometimes"

  # Survey field 36: Factors causing one business to be chosen (q46_provider_choice_factors[])
  --data-urlencode
  "q46_provider_choice_factors[]=Easier contact"
  --data-urlencode
  "q46_provider_choice_factors[]=API support"

  # Survey field 37: Do businesses make AI-agent permissions clear? (q47_agent_policy_clarity)
  --data-urlencode
  "q47_agent_policy_clarity=Rarely"

  # Survey field 38: Most useful permission model (q48_useful_permission_model[])
  --data-urlencode
  "q48_useful_permission_model[]=OAuth/delegated auth"
  --data-urlencode
  "q48_useful_permission_model[]=MCP auth"

  # Survey field 39: Verification methods easiest to support (q49_easiest_verification_methods[])
  --data-urlencode
  "q49_easiest_verification_methods[]=OAuth/delegated auth"
  --data-urlencode
  "q49_easiest_verification_methods[]=Email/SMS confirmation"

  # Survey field 40: Percentage of tasks usually completed successfully (q50_task_success_percentage)
  --data-urlencode
  "q50_task_success_percentage=41-60"

  # Survey field 41: When it fails, what usually happens? (q51_failure_outcomes[])
  --data-urlencode
  "q51_failure_outcomes[]=Human handoff"
  --data-urlencode
  "q51_failure_outcomes[]=Different provider"

  # Survey field 42: What would improve success rate? (q52_success_rate_improvements[])
  --data-urlencode
  "q52_success_rate_improvements[]=MCP support"
  --data-urlencode
  "q52_success_rate_improvements[]=APIs"

  # Survey field 43: Overall difficulty connecting with businesses (q53_overall_difficulty_rating)
  --data-urlencode
  "q53_overall_difficulty_rating=4"

  # Survey field 44: Overall frequency of preventing/delaying bottlenecks (q54_overall_bottleneck_frequency_rating)
  --data-urlencode
  "q54_overall_bottleneck_frequency_rating=4"

  # Survey field 45: Severity by bottleneck type (free-text or structured summary) (q55_bottleneck_severity_matrix)
  --data-urlencode
  "q55_bottleneck_severity_matrix=Example: no structured endpoint 5; CAPTCHA 4; slow response 3."

  # Survey field 46: Priority industry rank 1 (q56_priority_industry_rank_1)
  --data-urlencode
  "q56_priority_industry_rank_1=Healthcare/HMOs/health plans"

  # Survey field 47: Priority industry rank 2 (q57_priority_industry_rank_2)
  --data-urlencode
  "q57_priority_industry_rank_2=Government/public services"

  # Survey field 48: Priority industry rank 3 (q58_priority_industry_rank_3)
  --data-urlencode
  "q58_priority_industry_rank_3=Grocery/retail"

  # Survey field 49: Divide 100 points across improvement areas based on how much each would improve agent success (q59_improvement_point_allocation)
  --data-urlencode
  "q59_improvement_point_allocation=MCP/API/CLI 35; better discovery 15; booking/checkout 20; reliability 10; trust/verification 10; stronger model/more context 10."

  # Survey field 50: How AI-agent-ready are businesses today? (q60_agent_ready_rating)
  --data-urlencode
  "q60_agent_ready_rating=2"

  # Survey field 51: Industries with the greatest contact/access bottlenecks (q61_greatest_bottleneck_industries_q42a[])
  --data-urlencode
  "q61_greatest_bottleneck_industries_q42a[]=Healthcare/HMOs/health plans"
  --data-urlencode
  "q61_greatest_bottleneck_industries_q42a[]=Government/public services"

  # Survey field 52: Most serious bottleneck industry - rank 1 (q62_serious_bottleneck_industry_rank_q42b_1)
  --data-urlencode
  "q62_serious_bottleneck_industry_rank_q42b_1=Healthcare/HMOs/health plans"

  # Survey field 53: Most serious bottleneck industry - rank 2 (q63_serious_bottleneck_industry_rank_q42b_2)
  --data-urlencode
  "q63_serious_bottleneck_industry_rank_q42b_2=Government/public services"

  # Survey field 54: Most serious bottleneck industry - rank 3 (q64_serious_bottleneck_industry_rank_q42b_3)
  --data-urlencode
  "q64_serious_bottleneck_industry_rank_q42b_3=Grocery/retail"

  # Survey field 55: Main reason the top-ranked industry is difficult (q65_top_ranked_industry_reason_q42c[])
  --data-urlencode
  "q65_top_ranked_industry_reason_q42c[]=No structured API/MCP/CLI"
  --data-urlencode
  "q65_top_ranked_industry_reason_q42c[]=CAPTCHA/human-only verification"

  # Survey field 56: Single biggest improvement businesses or platforms could make for agent success (q66_single_biggest_improvement)
  --data-urlencode
  "q66_single_biggest_improvement=MCP server support"

  # Survey field 57: Where did you find this survey? (q67_self_reported_source)
  --data-urlencode
  "q67_self_reported_source=GitHub"

  # Survey field 58: Additional use cases/workflows (q71_open_comment_additional_use_cases)
  --data-urlencode
  "q71_open_comment_additional_use_cases=Optional sanitized note."

  # Survey field 59: Common or frustrating situation (q72_open_comment_frustrating_situation)
  --data-urlencode
  "q72_open_comment_frustrating_situation=Optional sanitized example with no private data."

  # Survey field 60: What should businesses/platforms change? (q73_open_comment_business_changes)
  --data-urlencode
  "q73_open_comment_business_changes=Optional recommendation."

  # Survey field 61: Additional survey comments (q74_open_comment_survey_feedback)
  --data-urlencode
  "q74_open_comment_survey_feedback=Optional survey feedback."

  # Survey field 62: Separate optional follow-up questionnaire: may we contact you? (q69_follow_up_consent)
  --data-urlencode
  "q69_follow_up_consent=No"

  # Survey field 63: Separate optional follow-up questionnaire: contact info (optional) (q70_optional_follow_up_contact)
  --data-urlencode
  "q70_optional_follow_up_contact="
)

curl "${curl_args[@]}"
