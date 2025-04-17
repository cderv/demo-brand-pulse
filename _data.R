# Create a more varied fictional dataset with clean column names
pulse_data <- dplyr::tibble(
  month = c("January", "February", "March", "April", "May", "June"),
  signups_18_24 = c(145, 178, 210, 265, 232, 290),
  signups_25_30 = c(98, 120, 145, 172, 194, 165),
  popular_plan = c(
    "Flex",
    "Flex",
    "Unlimited",
    "Community",
    "Unlimited",
    "Community"
  ),
  event_participants = c(87, 105, 138, 210, 195, 270),
  event_count = c(3, 4, 5, 7, 6, 8),
  social_mentions = c(245, 310, 385, 520, 490, 610),
  satisfaction_score = c(4.2, 4.3, 4.5, 4.6, 4.4, 4.7)
)

# Calculate total signups and percentage by age group
pulse_data <- pulse_data |>
  dplyr::mutate(
    total_signups = signups_18_24 + signups_25_30,
    pct_18_24 = signups_18_24 / total_signups,
    pct_25_30 = signups_25_30 / total_signups,
    participants_per_event = event_participants / event_count
  )
