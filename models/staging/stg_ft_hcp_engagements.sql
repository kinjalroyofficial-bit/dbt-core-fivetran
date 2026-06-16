select
    engagement_id,
    npi_number,
    hcp_first_name,
    hcp_last_name,
    hcp_specialty,
    hcp_city,
    hcp_state,
    organization_name,
    engagement_date,
    engagement_channel,
    engagement_type,
    product_name,
    engagement_score,
    duration_minutes,
    follow_up_required,
    created_at,
    _fivetran_synced,
    _fivetran_deleted
from `xyz-healthcare.public.hcp_engagements`
where coalesce(_fivetran_deleted, false) = false
