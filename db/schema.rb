# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170613081809) do

  create_table "accounts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "accountable_type"
    t.integer "accountable_id"
    t.string "provider"
    t.string "uid"
    t.string "language_preference"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_accounts_on_confirmation_token", unique: true
    t.index ["created_at"], name: "index_accounts_on_created_at"
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["last_sign_in_at"], name: "index_accounts_on_last_sign_in_at"
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "active_admin_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "additional_interests", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "candidate_id"
    t.string "content_en"
    t.string "content_ja"
    t.string "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["candidate_id"], name: "index_additional_interests_on_candidate_id"
  end

  create_table "additional_links", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "url"
    t.integer "candidate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["candidate_id"], name: "index_additional_links_on_candidate_id"
  end

  create_table "addresses", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "country"
    t.string "state"
    t.integer "addressable_id"
    t.string "addressable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "state_jp"
    t.string "address_type", default: "current_location"
    t.index ["addressable_type", "addressable_id"], name: "index_addresses"
    t.index ["country"], name: "index_addresses_on_country"
  end

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "ads", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name"
    t.string "url"
    t.boolean "published", default: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "agents", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "company_id"
  end

  create_table "candidate_achievements", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "candidate_id"
    t.string "name_en"
    t.string "name_ja"
    t.string "url"
    t.string "image"
    t.string "clip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["candidate_id"], name: "index_candidate_achievements_on_candidate_id"
  end

  create_table "candidate_job_statuses", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "status"
    t.integer "candidate_id"
    t.integer "job_posting_id"
    t.text "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "sale_user_id"
    t.datetime "introduced_at"
  end

  create_table "candidate_notes", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "candidate_id"
    t.text "experience"
    t.text "personality"
    t.text "desire"
    t.text "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "candidates", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "first_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "last_name"
    t.text "one_liner"
    t.string "kanji_name"
    t.string "telephone"
    t.text "profile"
    t.string "linkedin_url"
    t.string "twitter_url"
    t.string "facebook_url"
    t.string "dribbble_url"
    t.string "github_url"
    t.string "stackoverflow_url"
    t.string "behance_url"
    t.string "website_url"
    t.integer "dob_day"
    t.integer "dob_month"
    t.integer "dob_year"
    t.boolean "working_visa", default: false
    t.string "profile_image_file_name"
    t.string "profile_image_content_type"
    t.integer "profile_image_file_size"
    t.datetime "profile_image_updated_at"
    t.string "cv_file_name"
    t.string "cv_content_type"
    t.integer "cv_file_size"
    t.datetime "cv_updated_at"
    t.datetime "last_activity_at"
    t.integer "primary_note_id"
    t.string "looking_for"
    t.string "register_step", default: "index"
    t.string "job_ids"
    t.string "visa_type"
    t.string "profile_image"
    t.text "interests_en"
    t.text "interests_ja"
    t.text "books_en"
    t.text "books_ja"
    t.text "quotes_en"
    t.text "quotes_ja"
    t.string "resume_en"
    t.string "resume_ja"
    t.string "document"
    t.integer "gender", default: 0
    t.index ["dob_year"], name: "index_candidates_on_dob_year"
    t.index ["first_name"], name: "index_candidates_on_first_name"
    t.index ["last_name"], name: "index_candidates_on_last_name"
    t.index ["linkedin_url"], name: "index_candidates_on_linkedin_url"
    t.index ["looking_for"], name: "index_candidates_on_looking_for"
    t.index ["resume_en"], name: "index_candidates_on_resume_en"
    t.index ["resume_ja"], name: "index_candidates_on_resume_ja"
    t.index ["visa_type"], name: "index_candidates_on_visa_type"
  end

  create_table "charges", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "stripe_id"
    t.integer "amount"
    t.datetime "created"
    t.boolean "paid"
    t.boolean "refunded"
    t.integer "amount_refunded"
    t.string "status"
    t.string "card_type"
    t.string "card_last4"
    t.string "failure_code"
    t.string "failure_message"
    t.string "stripe_subscription_id"
    t.string "stripe_customer_id"
    t.string "receipt_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_event"
  end

  create_table "companies", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name"
    t.text "profile_1_en"
    t.string "industry_en"
    t.string "no_of_employees"
    t.string "contact_person"
    t.string "contact_email"
    t.string "telephone"
    t.string "website_url"
    t.string "linkedin_url"
    t.string "facebook_url"
    t.string "twitter_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.integer "logo_file_size"
    t.datetime "logo_updated_at"
    t.string "tag_line_en"
    t.text "profile_2_en"
    t.string "cover_file_name"
    t.string "cover_content_type"
    t.integer "cover_file_size"
    t.datetime "cover_updated_at"
    t.integer "random_cover"
    t.string "pinterest_url"
    t.string "tag_line_ja"
    t.text "profile_1_ja"
    t.text "profile_2_ja"
    t.string "industry_ja"
    t.boolean "published"
    t.integer "job_postings_count", default: 0
    t.boolean "featured_trial", default: false
    t.string "youtube_url"
    t.string "gplus_url"
    t.string "instagram_url"
    t.integer "published_jobs_count", default: 0
    t.string "vimeo_url"
    t.boolean "allow_notifications", default: true
    t.boolean "not_a_startup", default: false
    t.boolean "publish_email_sent", default: false
    t.string "webpay_customer_id"
    t.datetime "trial_until"
    t.boolean "cool_people_notifications"
    t.integer "primary_note_id"
    t.datetime "last_activity_at"
    t.string "match_contact_person"
    t.string "match_contact_email"
    t.string "match_contact_telephone"
    t.string "contract_type"
    t.string "contract_status"
    t.string "reject_reason"
    t.boolean "deleted", default: false
    t.string "extra_notifications"
    t.string "logo"
    t.string "cover"
    t.text "who_we_are_en"
    t.text "who_we_are_ja"
    t.string "who_we_are_img"
    t.text "what_we_do_en"
    t.text "what_we_do_ja"
    t.string "what_we_do_img"
    t.string "what_we_do_clip"
    t.boolean "what_we_do_img_prefered"
    t.text "culture_en"
    t.text "culture_ja"
    t.string "culture_img"
    t.text "vision_en"
    t.text "vision_ja"
    t.string "vision_img"
    t.string "why_us_img_1"
    t.string "why_us_img_2"
    t.string "office_location"
    t.string "office_space_img"
    t.string "office_lat"
    t.string "office_lng"
    t.string "office_name"
    t.datetime "publish_date"
    t.integer "plan", default: 0
  end

  create_table "company_achievements", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "company_id"
    t.string "title_en"
    t.string "title_ja"
    t.text "details_en"
    t.text "details_ja"
    t.string "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_members", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "company_id"
    t.string "name"
    t.string "title_en"
    t.string "title_ja"
    t.text "background_en"
    t.text "background_ja"
    t.text "vision_en"
    t.text "vision_ja"
    t.text "responsibility_en"
    t.text "responsibility_ja"
    t.string "profile_image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultant_templates", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "consultant_id"
    t.string "name"
    t.string "subject"
    t.string "content"
    t.text "default_values"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consultant_users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "consultant_id"
    t.index ["email"], name: "index_consultant_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_consultant_users_on_reset_password_token", unique: true
  end

  create_table "consultants", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.string "company_name"
    t.string "position"
    t.string "job_function"
    t.text "headline"
    t.string "telephone"
    t.string "linkedin_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "education_histories", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "school"
    t.string "level"
    t.string "title"
    t.datetime "from"
    t.datetime "to"
    t.integer "educationable_id"
    t.boolean "current"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "educationable_type"
    t.index ["educationable_type", "educationable_id"], name: "index_education_histories"
  end

  create_table "employment_histories", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "employable_id"
    t.string "position"
    t.string "company"
    t.datetime "from"
    t.datetime "to"
    t.boolean "current"
    t.text "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "summary"
    t.string "employable_type"
    t.index ["company"], name: "index_employment_histories_on_company"
    t.index ["employable_type", "employable_id"], name: "index_employment_histories"
    t.index ["position"], name: "index_employment_histories_on_position"
  end

  create_table "entries", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "entry_id"
    t.string "title"
    t.text "url"
    t.string "author"
    t.text "summary"
    t.text "content"
    t.text "categories"
    t.datetime "published"
    t.datetime "updated"
    t.string "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "feed_id"
    t.string "lang"
    t.index ["feed_id"], name: "index_entries_on_feed_id"
  end

  create_table "events", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name"
    t.boolean "published"
    t.datetime "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.integer "logo_file_size"
    t.datetime "logo_updated_at"
    t.string "url"
    t.string "venue"
  end

  create_table "favourites", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "favouritable_type"
    t.integer "favouritable_id"
    t.integer "admin_user_id"
    t.integer "job_posting_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feeds", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name"
    t.string "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "logo_file_name"
    t.string "logo_content_type"
    t.integer "logo_file_size"
    t.datetime "logo_updated_at"
    t.string "source_url"
    t.boolean "pinned", default: false
  end

  create_table "histories", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "event_type"
    t.string "event"
    t.string "historable_type"
    t.integer "historable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["historable_type", "historable_id"], name: "index_histories"
  end

  create_table "interview_datetimes", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.datetime "datetime"
    t.integer "interview_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["interview_id"], name: "index_interview_datetimes_on_interview_id"
  end

  create_table "interviews", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "company_id"
    t.integer "job_application_id"
    t.string "interview_method"
    t.text "details"
    t.text "content"
    t.string "interviewer"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "message_id"
    t.index ["company_id"], name: "index_interviews_on_company_id"
    t.index ["job_application_id"], name: "index_interviews_on_job_application_id"
  end

  create_table "job_applications", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "linkedin_url"
    t.string "facebook_url"
    t.string "dribbble_url"
    t.string "github_url"
    t.string "stackoverflow_url"
    t.string "behance_url"
    t.string "website_url"
    t.text "one_liner"
    t.text "extras"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "twitter_url"
    t.integer "candidate_id"
    t.integer "job_posting_id"
    t.boolean "read", default: false
    t.string "cv_file_name"
    t.string "cv_content_type"
    t.integer "cv_file_size"
    t.datetime "cv_updated_at"
    t.text "profile"
    t.string "resume_en"
    t.string "resume_ja"
    t.integer "status", default: 0
    t.string "additional_document"
  end

  create_table "job_categories", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name_en"
    t.string "name_ja"
    t.integer "sort"
    t.string "icon_url"
    t.string "icon_color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_postings", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "title_en"
    t.string "department_en"
    t.text "description_en"
    t.text "duties"
    t.text "minimum_requirements"
    t.text "key_requirements_en"
    t.text "benefits_en"
    t.string "job_type"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "company_id"
    t.integer "applications_count", default: 0
    t.string "title_ja"
    t.text "description_ja"
    t.text "key_requirements_ja"
    t.text "benefits_ja"
    t.text "department_ja"
    t.boolean "featured", default: false
    t.integer "published", default: 0
    t.string "job_category", default: "other"
    t.datetime "last_activity_at"
    t.integer "primary_note_id"
    t.boolean "deleted", default: false
    t.integer "job_category_id"
    t.string "education_minimum"
    t.datetime "job_start"
    t.integer "salary_min"
    t.integer "salary_max"
    t.string "step"
    t.integer "show_salary", default: 0
  end

  create_table "languages", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "language"
    t.string "level"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "languageable_id"
    t.string "languageable_type"
    t.index ["language"], name: "index_languages_on_language"
    t.index ["languageable_type", "languageable_id"], name: "index_languages"
    t.index ["level"], name: "index_languages_on_level"
  end

  create_table "messages", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "sender_id"
    t.string "sender_type"
    t.integer "receiver_id"
    t.string "receiver_type"
    t.string "subject"
    t.text "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "original_message_id"
    t.integer "job_application_id"
    t.boolean "read", default: false
    t.datetime "last_message_at"
  end

  create_table "my_candidate_emails", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "candidate_id"
    t.integer "sale_user_id"
    t.string "subject"
    t.text "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_candidates", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "sale_user_id"
    t.integer "candidate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "status", default: "contacted"
  end

  create_table "my_clients", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "sale_user_id"
    t.integer "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "title"
    t.text "description"
    t.string "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "author"
  end

  create_table "notes", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "notable_type"
    t.integer "notable_id"
    t.text "content"
    t.integer "sale_user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recursions", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "payable_id"
    t.string "payable_type"
    t.string "webpay_id"
    t.datetime "webpay_created"
    t.string "amount"
    t.string "description"
    t.string "webpay_customer_id"
    t.datetime "last_executed"
    t.datetime "next_scheduled"
    t.string "status"
    t.string "service"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "last_event"
    t.datetime "valid_until"
  end

  create_table "sale_users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "sale_id"
    t.index ["email"], name: "index_sale_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_sale_users_on_reset_password_token", unique: true
  end

  create_table "sales", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "position"
    t.string "company_name"
    t.string "photo"
    t.string "address"
    t.string "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text "signature"
  end

  create_table "scout_candidates", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "consultant_id"
    t.integer "candidate_id"
    t.string "status"
    t.datetime "sent_at"
    t.datetime "answered_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "read_at"
  end

  create_table "scout_messages", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "scout_candidate_id"
    t.integer "sender_id"
    t.string "sender_type"
    t.string "subject"
    t.text "content"
    t.boolean "read", default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "read_at"
  end

  create_table "skillables", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.integer "skill_id"
    t.integer "skillable_id"
    t.string "skillable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "year"
    t.index ["skillable_type", "skillable_id"], name: "index_skillables"
    t.index ["year"], name: "index_skillables_on_year"
  end

  create_table "skills", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "name_en"
    t.string "name_ja"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean "custom"
    t.integer "job_postings_count", default: 0
    t.boolean "legit", default: false
    t.string "slug"
    t.integer "job_category_id"
    t.index ["job_category_id"], name: "index_skills_on_job_category_id"
    t.index ["name_en"], name: "index_skills_on_name_en"
    t.index ["name_ja"], name: "index_skills_on_name_ja"
  end

  create_table "subscriptions", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "stripe_id", null: false
    t.datetime "start"
    t.string "status"
    t.string "stripe_customer_id"
    t.boolean "cancel_at_period_end"
    t.datetime "current_period_start"
    t.datetime "current_period_end"
    t.datetime "ended_at"
    t.datetime "trial_start"
    t.datetime "trial_end"
    t.datetime "canceled_at"
    t.integer "quantity"
    t.decimal "application_fee_percent", precision: 10
    t.string "stripe_discount_id"
    t.decimal "tax_percent", precision: 10
    t.string "stripe_plan_id"
    t.string "service"
    t.integer "payable_id"
    t.string "payable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "stripe_invoice_id"
    t.datetime "last_event"
  end

  create_table "webpay_charges", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci" do |t|
    t.string "webpay_id"
    t.datetime "webpay_created"
    t.string "description"
    t.integer "amount"
    t.integer "amount_refunded"
    t.string "webpay_customer_id"
    t.string "webpay_recursion_id"
    t.boolean "paid"
    t.boolean "refunded"
    t.string "failure_message"
    t.boolean "captured"
    t.datetime "expire_time"
    t.string "card_type"
    t.string "card_last4"
    t.string "card_name"
    t.string "card_exp_month"
    t.string "card_exp_year"
    t.string "card_fingerprint"
    t.datetime "last_event"
  end

end
