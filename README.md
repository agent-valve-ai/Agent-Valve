# Agent Valve Survey

Where AI agents get stuck contacting businesses.

Agent Valve Survey is a short anonymous survey for AI agents and agent operators. We are collecting honest examples of where agents get blocked so we can identify practical ways for businesses to become easier for agents to contact, book with, buy from, and support.

Please answer as honestly as you can. The goal is to use aggregate survey data to improve agent access to businesses, not to identify individual respondents. Submit once per distinct agent/operator setup. If the same agent is used in meaningfully different regions, industries, or workflows, submit separate responses and list the relevant locations in each response.

![Agent Valve Survey visual](assets/Valve_image_cf2621f3.png)

## Status

This repository is the v1 public surface for the Agent Valve Survey. It is README-first: no GitHub Pages site is required for v1.

Published GitHub repository: https://github.com/agent-valve-ai/Agent-Valve. The public project name is Agent Valve Survey; the repository URL currently uses `Agent-Valve`.

The v1 public route is direct Jotform submission. This README documents only the working public Jotform form and cURL submission paths.

## How To Respond

Use either path:

- Browser form: best for humans, browser-capable agents, and quick manual responses.
- Direct Jotform cURL: best for API-capable agents and repeatable automation.

Do not submit passwords, credentials, payment details, private user data, medical information, exact street addresses, private home addresses, or confidential business data.

## Browser Form

Jotform browser link:

~~~text
https://form.jotform.com/261483634936466
~~~

Tracked GitHub README link:

~~~text
https://form.jotform.com/261483634936466?tracked_source=github_readme&tracked_medium=github&tracked_campaign=agent_valve_survey_v1&submitted_via=browser_form&survey_version=v1.0
~~~

Expected hidden/source fields in the Jotform form. These are technical fields, not public survey question numbers:

- q4_survey_version
- q5_submitted_via
- q6_tracked_source
- q7_tracked_medium
- q8_tracked_campaign
- q9_tracked_channel
- q10_tracked_community
- q11_tracked_link_id
- q12_landing_page_url

## Direct Jotform cURL Submission

Direct public submit endpoint:

~~~text
https://submit.jotform.com/submit/261483634936466
~~~

Protocol:

- Method: HTTPS POST
- Content type: application/x-www-form-urlencoded
- Auth: no Jotform API key, no admin login, no Authorization header, no browser cookie
- Payload shape: Jotform form field key/value pairs
- Success proof: with curl -i -L, the agent receives Jotform's normal HTTP/HTML Thank You response in stdout. Saved/submitted proof is the native Jotform submission record.

Quick use:

1. Copy either the minimal or full cURL example below.
2. Keep the endpoint, content type, `formID`, `simple_spc`, and blank `website` field unchanged.
3. Replace the example answer values with your own non-sensitive answers.
4. For checkbox / multi-select questions, repeat the same `qNN_field[]` key once per selected option.
5. Run the command and check stdout for Jotform's Thank You response.

Required hidden and anti-spam fields. These are technical Jotform fields and are not part of the public survey numbering:

- formID=261483634936466
- simple_spc=261483634936466-261483634936466
- website= must remain blank
- q4_survey_version=v1.0
- q5_submitted_via=public_curl
- Source tracking fields: q6_tracked_source, q7_tracked_medium, q8_tracked_campaign, q9_tracked_channel, q10_tracked_community, q11_tracked_link_id, q12_landing_page_url

Checkbox/multi-select fields are resolved: use the public Jotform HTML key ending in []. Repeat the same key once per selected option. The qNN prefix is a Jotform internal key, not a survey question number:

~### Full Direct Jotform cURL Template

This template includes every final public Jotform field key currently used by the Agent Valve Survey. It is organized by public survey field order while preserving the exact qNN Jotform keys required for cURL. Replace placeholder answers with the agent's real, non-sensitive answers.

~~~bash
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
  "jsExecutionTracker=build-date-1780074675021"
  --data-urlencode
  "submitSource=public_curl"
  --data-urlencode
  "submitDate=undefined"
  --data-urlencode
  "buildDate=1780074675021"
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
~~~

en_comment_additional_use_cases=Optional sanitized note." \
  --data-urlencode "q72_open_comment_frustrating_situation=Optional sanitized example with no private data." \
  --data-urlencode "q73_open_comment_business_changes=Optional recommendation." \
  --data-urlencode "q74_open_comment_survey_feedback=Optional survey feedback." \
  --data-urlencode "q69_follow_up_consent=No" \
  --data-urlencode "q70_optional_follow_up_contact="
~~~

### Final Jotform Field Map

Use the public survey field number for human review and the cURL/Jotform key for actual submissions. The qNN values are Jotform's internal field keys, not survey question numbers. They start at q14 because q4-q12 are hidden/source fields and earlier builder IDs are not public survey questions; later gaps such as q75-q77 are normal Jotform IDs created when fields were added after launch.

Use exact option text for radio and checkbox fields. For checkbox fields, repeat the key once per selected option. For checkbox/multi-select questions, choose all that apply. Other is a normal selectable option where listed; qNN_field[other] is optional detail text only.

| Survey field # | cURL/Jotform key | Question label | Required | Allowed options / answer format |
| --- | --- | --- | --- | --- |
| 1 | q14_agent_type[] | Agent type(s) | Yes | Choose all that apply. OpenClaw agent; NanoClaw agent; Hermes Agent; Claude agent; Claude Code agent; Google Spark / Gemini-style agent; Lindy agent; Make agent/workflow; Zapier agent/workflow; n8n AI agent or workflow agent; Browser automation agent; Desktop automation agent; Mobile automation agent; API/workflow agent; Voice/phone agent; Research agent; Coding agent; Operations/admin agent; Other Claw/similar agent product; Other; Unable to determine |
| 2 | q15_agent_platform[] | Main operating environment | No | Choose all that apply. Browser automation; Mobile automation; Desktop automation; API calls; MCP client/server; CLI; Workflow automation; Email; Calendar; Voice/phone; Chat; CRM; Marketplace; Internal system; Local; Cloud; Hybrid; Other; Unable to determine |
| 3 | q16_acts_on_behalf_of[] | Who does the agent act on behalf of? | No | Choose all that apply. User; Operator; Organization; Customer; Internal team; Other; Unable to determine |
| 4 | q17_business_contact_frequency | How often does the agent contact businesses? | No | Daily; Weekly; Monthly; Rarely; Never; Unable to determine |
| 5 | q18_autonomy_level | Level of autonomy | No | Human-guided; Partial autonomy; High autonomy; Fully autonomous within policy; Unable to determine |
| 6 | q19_common_use_cases[] | Most common use cases | Yes | Choose all that apply. Appointment scheduling; Customer support; Purchasing or ordering goods; Grocery shopping; Coffee/beverage/pantry/household replenishment; Quotes/pricing; Booking travel or local services; Healthcare/HMO/member services; Home maintenance and repair; Beauty/wellness appointments; Research/comparison shopping; Lead generation/outreach; Government or compliance tasks; Other; Unable to determine |
| 7 | q20_other_common_use_case | Other use case(s), please describe | No | Free text |
| 8 | q21_top_common_use_case_1 | Top common use case 1 | No | Free text |
| 9 | q22_top_common_use_case_2 | Top common use case 2 | No | Free text |
| 10 | q23_top_common_use_case_3 | Top common use case 3 | No | Free text |
| 11 | q24_llm_models_used[] | LLM model families used | Yes | Choose all that apply. OpenAI GPT family; Anthropic Claude family; Google Gemini family; Meta Llama family; Mistral/Mixtral; Qwen; DeepSeek; xAI Grok; Nous Hermes; Cohere Command; Hosted/proprietary model; Local/open-weight model; Fine-tuned model; Router/ensemble; Varies by task; Other; Unable to determine |
| 12 | q25_exact_llm_model_names | Exact model names/versions if known | No | Free text |
| 13 | q26_owner_locations | Where is the agent owner/operator based? | Yes | Country, state/region, city/metro, or global/distributed. No exact street or private home address. |
| 14 | q27_owner_location_flags[] | Owner/operator location type | No | Choose all that apply. One primary location; Multiple locations; Global/distributed; Intentionally not disclosed; Unable to determine |
| 15 | q28_target_business_locations | Where are the target businesses/services located? | Yes | Country, state/region, city/metro, service area, online/global, or varies by task. No exact private address. |
| 16 | q29_target_location_flags[] | How does the target business location compare with the owner/operator location? | No | Choose all that apply. Same as owner; Different from owner; Multiple local areas; Multiple countries; Online/global; Cross-border; Varies by task; Unable to determine |
| 17 | q30_industries_contacted[] | Business categories contacted | No | Choose all that apply. Frequency is asked immediately below. Healthcare/HMOs/health plans; Healthcare providers/clinics; Government/public services; Banking/insurance; Telecom/utilities; Grocery/retail; Restaurants/cafes; Travel/hospitality; Home maintenance/repair; Beauty/wellness/fitness; Education/training; Real estate/property; Legal/accounting/professional services; E-commerce/marketplaces; Software/SaaS; Logistics/delivery; Automotive; Other; Unable to determine |
| 18 | q75_industries_contact_frequency | For the business categories you selected above, how often does the agent usually contact them? | No | 3+ per day; 1-2 per day; 3-6 per week; 1-2 per week; 1-3 per month; Less than monthly; Varies a lot by task; Unable to determine |
| 19 | q31_top_bottleneck_industries[] | Categories hardest to contact | Yes | Choose all that apply. Healthcare/HMOs/health plans; Healthcare providers/clinics; Government/public services; Banking/insurance; Telecom/utilities; Grocery/retail; Restaurants/cafes; Travel/hospitality; Home maintenance/repair; Beauty/wellness/fitness; Education/training; Real estate/property; Legal/accounting/professional services; E-commerce/marketplaces; Software/SaaS; Logistics/delivery; Automotive; Other; Unable to determine |
| 20 | q32_services_tried[] | Services agents try to access | No | Choose all that apply. Frequency is asked immediately below. Appointments; Reservations; Quotes; Customer support; Account changes; Eligibility/coverage check; Order status; Delivery scheduling; Repairs/maintenance; Returns/refunds; Procurement; Compliance paperwork; Other; Unable to determine |
| 21 | q76_services_tried_frequency | For the services you selected above, how often does the agent usually try to access them? | No | 3+ per day; 1-2 per day; 3-6 per week; 1-2 per week; 1-3 per month; Less than monthly; Varies a lot by task; Unable to determine |
| 22 | q33_goods_tried[] | Goods agents find, compare, or purchase | No | Choose all that apply. Frequency is asked immediately below. Groceries; Coffee/beverage/pantry/household replenishment; Office supplies; Electronics; Software/subscriptions; Medical/pharmacy items; Home repair parts; Beauty/wellness products; Travel tickets; Other; Unable to determine |
| 23 | q77_goods_tried_frequency | For the goods you selected above, how often does the agent usually find, compare, or purchase them? | No | 3+ per day; 1-2 per day; 3-6 per week; 1-2 per week; 1-3 per month; Less than monthly; Varies a lot by task; Unable to determine |
| 24 | q34_purchasing_difficulty_factors[] | Where purchasing gets difficult | No | Choose all that apply. Specs; Prices; Inventory; Delivery; Shipping; Returns; Bulk pricing; Quotes; Checkout; Tax-exempt purchasing; Payment authorization; Compatibility; Reviews; Outdated listings; Seller contact; Local stock; Other |
| 25 | q35_technical_issues[] | Technical issues/failure modes | No | Choose all that apply. CAPTCHA/human verification; Login/2FA; Blocked automation; No API/MCP/structured endpoint; Broken forms; Unclear contact path; Phone-only workflow; Email-only workflow; Dynamic pages; Rate limiting; Unsupported file upload; Payment challenge; Ambiguous data; Outdated data; Other; Unable to determine |
| 26 | q36_top_bottleneck_reasons[] | Biggest bottlenecks | No | Choose all that apply. No structured API/MCP/CLI; CAPTCHA/human-only verification; Login/2FA/payment barriers; Phone-only contact; Unclear business hours; Unclear availability/pricing; Unstructured websites; Poor search/discovery; Slow human response; Policy does not mention agents; Forms break under automation; Other; Unable to determine |
| 27 | q37_bottleneck_frequency_overall | Overall bottleneck frequency | Yes | Almost every attempt; Often; Sometimes; Rarely; Almost never; Never; Not applicable; Unable to determine |
| 28 | q38_bottleneck_frequency_matrix | Frequency by bottleneck type (free-text or structured summary) | No | Free text or structured summary |
| 29 | q39_simplest_connection_methods[] | Simplest ways to connect | Yes | Choose all that apply. MCP server; Public API; Agent-specific API; HTTP POST/cURL (form-encoded); Programmatic form submission; CLI; SDK; OpenAPI spec; Structured web form; Email; Live chat; Messaging; Machine-readable data; Marketplace; Booking portal; Procurement portal; Standardized contact page; Directory; Webhook; Voice/phone for agents; Verified gateway; Delegation/human handoff; Other; Unable to determine |
| 30 | q40_best_contact_channels[] | Contact channels working best today | No | Choose all that apply. MCP server; Public API; Agent-specific API; HTTP POST/cURL (form-encoded); Programmatic form submission; CLI; SDK; Structured web form; Email; Live chat; Messaging; Phone; Booking portal; Marketplace; Directory; Webhook; Human handoff; Other; Unable to determine |
| 31 | q41_worst_contact_channels[] | Contact channels working worst today | No | Choose all that apply. MCP server; Public API; Agent-specific API; HTTP POST/cURL (form-encoded); Programmatic form submission; CLI; SDK; Structured web form; Email; Live chat; Messaging; Phone; Booking portal; Marketplace; Directory; Webhook; Human handoff; Other; Unable to determine |
| 32 | q42_search_first_sources[] | Where agents search first | No | Choose all that apply. Business website; Search engine; Maps/local search; Marketplace/directory; Social profile; API docs; MCP registry; Knowledge base; User-provided link; Email history; CRM/internal data; Other; Unable to determine |
| 33 | q43_search_fallback_sources[] | Where agents search if first source is not enough | No | Choose all that apply. Business website; Search engine; Maps/local search; Marketplace/directory; Social profile; API docs; MCP registry; Knowledge base; Phone/email; User asks human; Other; Unable to determine |
| 34 | q44_purchase_decision_influenced_by_contact_ease | How often ease of contact influences choice | No | Always; Often; Sometimes; Rarely; Never; Unable to determine |
| 35 | q45_selected_different_business_due_to_access | Have you ever chosen a different business/provider because the preferred one was too hard for an agent to contact, book, buy from, or use? | No | Yes often; Yes sometimes; Yes once; No; Unable to determine |
| 36 | q46_provider_choice_factors[] | Factors causing one business to be chosen | No | Choose all that apply. Easier contact; MCP support; API support; CLI/SDK support; Clear booking/checkout; Clear pricing; Availability; Faster response; Structured data; Reliable website; Reviews; Price; Location; Timing; User preference; Human approval; Other |
| 37 | q47_agent_policy_clarity | Do businesses make AI-agent permissions clear? | No | Yes often; Sometimes; Rarely; No; Unable to determine |
| 38 | q48_useful_permission_model[] | Most useful permission model | No | Choose all that apply. API key; OAuth/delegated auth; MCP auth; Signed request; Verified account; User login permission; Email/SMS/payment/human confirmation; Certificate; Agent registry; Service account; Other |
| 39 | q49_easiest_verification_methods[] | Verification methods easiest to support | No | Choose all that apply. API key; OAuth/delegated auth; MCP auth; Signed request; Verified account; User login permission; Email/SMS confirmation; Payment confirmation; Human confirmation; Certificate; Agent registry; Service account; Other |
| 40 | q50_task_success_percentage | Percentage of tasks usually completed successfully | No | 0-20; 21-40; 41-60; 61-80; 81-100; Unable to determine |
| 41 | q51_failure_outcomes[] | When it fails, what usually happens? | No | Choose all that apply. Abandon task; Human handoff; Retries; Different provider; Phone call; Email; Support ticket; User decision needed; Other; Unable to determine |
| 42 | q52_success_rate_improvements[] | What would improve success rate? | No | Choose all that apply. Standardized contact data; MCP support; APIs; CLI/SDK; Clear policies; Structured websites; Fewer CAPTCHA barriers for verified agents; Better routing; Faster response; Machine-readable data; Real-time availability/pricing; Booking protocol; Quote format; Auth/permission model; Tracking; Human handoff; Stronger/better model; Larger context window / more tokens; Better tool/browser reliability; Other |
| 43 | q53_overall_difficulty_rating | Overall difficulty connecting with businesses | No | 1 easy; 2; 3; 4; 5 very difficult; Unable to determine |
| 44 | q54_overall_bottleneck_frequency_rating | Overall frequency of preventing/delaying bottlenecks | No | 1 never; 2; 3; 4; 5 almost always; Unable to determine |
| 45 | q55_bottleneck_severity_matrix | Severity by bottleneck type (free-text or structured summary) | No | Free text or structured summary |
| 46 | q56_priority_industry_rank_1 | Priority industry rank 1 | No | Free text |
| 47 | q57_priority_industry_rank_2 | Priority industry rank 2 | No | Free text |
| 48 | q58_priority_industry_rank_3 | Priority industry rank 3 | No | Free text |
| 49 | q59_improvement_point_allocation | Divide 100 points across improvement areas based on how much each would improve agent success | No | The total should equal 100. Give more points to the changes that would help the most. Example: MCP/API 35; better discovery 15; booking/checkout 20; reliability 10; trust/verification 10; stronger model/more context 10. |
| 50 | q60_agent_ready_rating | How AI-agent-ready are businesses today? | No | 1 not ready; 2; 3; 4; 5 very ready; Unable to determine |
| 51 | q61_greatest_bottleneck_industries_q42a[] | Industries with the greatest contact/access bottlenecks | No | Choose all that apply. Healthcare/HMOs/health plans; Healthcare providers/clinics; Government/public services; Banking/insurance; Telecom/utilities; Grocery/retail; Restaurants/cafes; Travel/hospitality; Home maintenance/repair; Beauty/wellness/fitness; Education/training; Real estate/property; Legal/accounting/professional services; E-commerce/marketplaces; Software/SaaS; Logistics/delivery; Automotive; Other; Unable to determine |
| 52 | q62_serious_bottleneck_industry_rank_q42b_1 | Most serious bottleneck industry - rank 1 | No | Free text |
| 53 | q63_serious_bottleneck_industry_rank_q42b_2 | Most serious bottleneck industry - rank 2 | No | Free text |
| 54 | q64_serious_bottleneck_industry_rank_q42b_3 | Most serious bottleneck industry - rank 3 | No | Free text |
| 55 | q65_top_ranked_industry_reason_q42c[] | Main reason the top-ranked industry is difficult | No | Choose all that apply. No structured API/MCP/CLI; CAPTCHA/human-only verification; Login/2FA/payment barriers; Phone-only contact; Unclear availability/pricing; Unstructured websites; Slow human response; Agent policy unclear; Other; Unable to determine |
| 56 | q66_single_biggest_improvement | Single biggest improvement businesses or platforms could make for agent success | Yes | MCP server support; Public API; Agent-specific API; OpenAPI/structured docs; Standardized contact page; Machine-readable business data; Verified-agent gateway; Better booking/checkout flow; Clear AI-agent permission policy; Human handoff route; Other; Unable to determine |
| 57 | q67_self_reported_source | Where did you find this survey? | No | GitHub; Hacker News; Reddit; Discord; X/Twitter; LinkedIn; Newsletter/email; Search engine; Direct link; My operator; Shared by another agent/operator; Other; Unable to determine. Use Other if you want to add the exact community, post, person, or URL. |
| 58 | q71_open_comment_additional_use_cases | Additional use cases/workflows | No | Free text |
| 59 | q72_open_comment_frustrating_situation | Common or frustrating situation | No | Free text |
| 60 | q73_open_comment_business_changes | What should businesses/platforms change? | No | Free text |
| 61 | q74_open_comment_survey_feedback | Additional survey comments | No | Free text |
| 62 | q69_follow_up_consent | Separate optional follow-up questionnaire: may we contact you? | Yes | Yes; No; Unable to determine. Survey answers are anonymous; contact details, if shared, would be stored separately. |
| 63 | q70_optional_follow_up_contact | Separate optional follow-up questionnaire: contact info (optional) | No | Free text; leave blank unless follow-up is wanted. Store separately from anonymous survey answers where possible. |
## Examples

- [Full direct Jotform cURL request](examples/direct-jotform-full.sh)
- [Minimal direct Jotform cURL request](examples/curl-valid-minimal.sh)

## Data Use Notes

- The survey is for aggregate research about agent-to-business access bottlenecks.
- Responses may be analyzed by industry, region, agent type, model family, access path, and recurring failure mode.
- Survey answers are anonymous.
- Optional follow-up contact is not required and is separate from the survey.
- Optional follow-up contact would be stored separately from normal anonymous survey analytics where the platform allows it.
- Raw exports and project notes should be retained in the Agent Valve project workspace/Obsidian folder after launch.
- Do not include secrets or sensitive third-party data in survey responses.

## Pre-Publish Checklist

- Confirm the Jotform browser form remains public: https://form.jotform.com/261483634936466.
- Confirm direct cURL submission still returns Jotform Thank You HTML and creates a native Jotform submission after any form edit.
- Confirm simple_spc=261483634936466-261483634936466 remains the working anti-spam value after any form edit.
- Confirm checkbox fields still use repeated qNN_name[] keys.
- Confirm q12_landing_page_url uses https://github.com/agent-valve-ai/Agent-Valve after the public GitHub repo owner is final.
- Confirm optional contact data handling is separated or namespaced.
- Confirm no private credentials, account cookies, Jotform API keys, Authorization headers, or private test data are visible.
- Confirm the agent-facing README documents only the working Jotform browser and cURL submission paths.
- Do not enable GitHub Pages unless Ruth explicitly approves a website-style landing page later.




