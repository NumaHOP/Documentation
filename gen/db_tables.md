## app_lock

| Field       | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|-------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier  | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| class       | varchar(191) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| locked_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| locked_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## aud_del_delivery

| Field           | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|-----------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| identifier      | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| rev             | int(11)      |                    | NO   | PRI |         |       | select,insert,update |         |
| revtype         | tinyint(4)   |                    | YES  |     |         |       | select,insert,update |         |
| delivery_status | int(11)      |                    | YES  |     |         |       | select,insert,update |         |

## aud_doc_unit

| Field      | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| identifier | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| rev        | int(11)      |                    | NO   | PRI |         |       | select,insert,update |         |
| revtype    | tinyint(4)   |                    | YES  |     |         |       | select,insert,update |         |
| lot        | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## aud_exc_mapping

| Field           | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|-----------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| identifier      | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| rev             | int(11)      |                    | NO   | PRI |         |       | select,insert,update |         |
| revtype         | tinyint(4)   |                    | YES  |     |         |       | select,insert,update |         |
| label           | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| library         | varchar(191) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| type            | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| join_expression | text         | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## aud_exc_mapping_rule

| Field            | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|------------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| identifier       | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| rev              | int(11)      |                    | NO   | PRI |         |       | select,insert,update |         |
| revtype          | tinyint(4)   |                    | YES  |     |         |       | select,insert,update |         |
| doc_unit_field   | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| bib_record_field | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| property         | varchar(191) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| expression       | text         | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| expression_conf  | text         | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| apply_if         | text         | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| apply_if_conf    | text         | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| mapping          | varchar(191) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| position         | int(11)      |                    | YES  |     |         |       | select,insert,update |         |
| default_rule     | bit(1)       |                    | YES  |     |         |       | select,insert,update |         |

## aud_lot_lot

| Field      | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| identifier | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| rev        | int(11)      |                    | NO   | PRI |         |       | select,insert,update |         |
| revtype    | tinyint(4)   |                    | YES  |     |         |       | select,insert,update |         |
| status     | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## aud_proj_project

| Field      | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| identifier | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| rev        | int(11)      |                    | NO   | PRI |         |       | select,insert,update |         |
| revtype    | tinyint(4)   |                    | YES  |     |         |       | select,insert,update |         |
| status     | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## aud_proj_project

| Field      | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| identifier | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| rev        | int(11)      |                    | NO   | PRI |         |       | select,insert,update |         |
| revtype    | tinyint(4)   |                    | YES  |     |         |       | select,insert,update |         |
| status     | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## aud_revision

| Field     | Type         | Collation          | Null | Key | Default | Extra          | Privileges           | Comment |
|-----------|--------------|--------------------|------|-----|---------|----------------|----------------------|---------|
| id        | int(11)      |                    | NO   | PRI |         | auto_increment | select,insert,update |         |
| timestamp | bigint(20)   |                    | YES  |     |         |                | select,insert,update |         |
| username  | varchar(255) | utf8mb4_general_ci | YES  |     |         |                | select,insert,update |         |

## aud_train_train

| Field      | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| identifier | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| rev        | int(11)      |                    | NO   | PRI |         |       | select,insert,update |         |
| revtype    | tinyint(4)   |                    | YES  |     |         |       | select,insert,update |         |
| status     | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## check_automatic_result

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| message            | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| result             | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| check_type         | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| digital_document   | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| doc_unit           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| page               | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| delivery           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| physical_document  | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |

## check_automatic_type

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| type               | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | NO   |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| configurable       | bit(1)       |                    | YES  |     | b'1'                |       | select,insert,update |         |
| order              | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |

## check_slip

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| lot_label          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| deposit_date       | date         |                    | YES  |     |                     |       | select,insert,update |         |
| uncompleted        | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## check_slip_line

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| pgcn_id            | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| title              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| status             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| doc_errors         | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| nb_pages           | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| nb_pages_to_bill   | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| check_slip         | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## com_language_code

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| all_names_french   | varchar(500) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| all_names_english  | varchar(500) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| iso_639_2_t        | varchar(3)   | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| iso_639_2_b        | varchar(3)   | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| iso_639_1          | varchar(2)   | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_activated_ocr_lang

| Field                  | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|------------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier             | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| ocr_lang_configuration | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| ocr_language           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version                | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by             | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by       | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date           | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date     | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_automatic_check_rule

| Field               | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|---------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier          | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| active              | bit(1)       |                    | NO   |     |                     |       | select,insert,update |         |
| blocking            | bit(1)       |                    | NO   |     |                     |       | select,insert,update |         |
| check_configuration | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| check_type          | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version             | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by          | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by    | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date        | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date  | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_cines_lang_code

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | NO   |     | b'1'                |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| langDC             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## conf_classement_pac

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name               | varchar(191) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| conf_pac           | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_collection_ia

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name               | varchar(191) | utf8mb4_general_ci | NO   | UNI |                     |       | select,insert,update |         |
| conf_ia            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_configuration_check

| Field                 | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|-----------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier            | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label                 | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| major_error_rate      | double       |                    | YES  |     |                     |       | select,insert,update |         |
| minor_error_rate      | double       |                    | YES  |     |                     |       | select,insert,update |         |
| sample_rate           | double       |                    | YES  |     |                     |       | select,insert,update |         |
| library               | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version               | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by            | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by      | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date          | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date    | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| definition_error_rate | double       |                    | YES  |     |                     |       | select,insert,update |         |
| separators            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| sample_mode           | varchar(191) | utf8mb4_general_ci | YES  |     | NO_SAMPLE           |       | select,insert,update |         |

## conf_configuration_ftp

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| address            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| login              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| password           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| delivery_folder    | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## conf_delivery_folder

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name               | varchar(191) | utf8mb4_general_ci | NO   | UNI |                     |       | select,insert,update |         |
| conf_export_ftp    | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_digital_library

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| address            | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| port               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| login              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| password           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| delivery_folder    | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| mail               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | YES  |     | b'1'                |       | select,insert,update |         |
| export_view        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_print       | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| export_thumb       | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_aip_sip     | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_mets        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_pdf         | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_alto        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| default_value      | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| sftp               | bit(1)       |                    | NO   |     |                     |       | select,insert,update |         |

## conf_email

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| username           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| password           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| host               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| port               | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| inbox              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | NO   |     | b'1'                |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_email_prop

| Field   | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|---------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| conf_id | varchar(191) | utf8mb4_general_ci | YES  | MUL |         |       | select,insert,update |         |
| name    | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| value   | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## conf_export_ftp

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| address            | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| login              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| password           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| export_view        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_master      | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_thumb       | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_aip_sip     | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_mets        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_pdf         | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| active             | bit(1)       |                    | YES  |     | b'1'                |       | select,insert,update |         |
| storage_server     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| port               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| export_alto        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |

## conf_files_gestion

| Field                             | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|-----------------------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier                        | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| trigger_type                      | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| delay                             | int(11)      |                    | NO   |     |                     |       | select,insert,update |         |
| destination_dir                   | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| delete_master                     | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| delete_print                      | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| delete_view                       | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| delete_thumb                      | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| save_master                       | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| save_print                        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| save_view                         | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| save_thumb                        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| library                           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version                           | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by                        | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by                  | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date                      | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date                | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| delete_pdf                        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| save_pdf                          | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| save_aip_sip                      | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| export_ftp                        | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| active_export_ftp_delivery_folder | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_export_ftp_conf            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |

## conf_internet_archive

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| access_key         | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| secret_key         | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | NO   |     | b'1'                |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_language_ocr

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| code               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_lists_omeka

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name               | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| conf_omeka         | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| list_type          | varchar(191) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_ocr_lang

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| description        | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_omeka

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| storage_server     | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | NO   |     | b'1'                |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| address            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| login              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| password           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| export_mets        | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| export_master      | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| export_view        | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| export_thumb       | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| export_pdf         | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| port               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| access_url         | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| mail_csv           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| omekas             | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| sftp               | bit(1)       |                    | YES  |     | b'1'                |       | select,insert,update |         |

## conf_sftp

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| username           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| password           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| host               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| port               | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| target_dir         | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | NO   |     | b'1'                |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_transliteration

| Field | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|-------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| type  | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| code  | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| value | varchar(255) | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## conf_views_format_configuration

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| thumb_height       | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| thumb_width        | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| view_height        | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| view_width         | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| print_height       | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| print_width        | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | NO   |     | b'1'                |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## conf_z3950_server

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name               | varchar(191) | utf8mb4_general_ci | NO   | UNI |                     |       | select,insert,update |         |
| host               | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| port               | int(11)      |                    | NO   |     |                     |       | select,insert,update |         |
| dbname             | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| user_id            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| password           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | NO   |     |                     |       | select,insert,update |         |
| data_format        | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| data_encoding      | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| record_type        | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## del_delivered_document

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| delivery           | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| digital_document   | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| status             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| delivery_date      | date         |                    | YES  |     |                     |       | select,insert,update |         |
| nb_pages           | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| total_length       | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| check_slip         | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |

## del_delivery

| Field                     | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|---------------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier                | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label                     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| document_count            | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| description               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| delivery_payment          | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| delivery_status           | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| delivery_method           | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| reception_date            | date         |                    | YES  |     |                     |       | select,insert,update |         |
| deposit_date              | date         |                    | YES  |     |                     |       | select,insert,update |         |
| folder_path               | varchar(191) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| image_format              | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| digitizing_notes          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| file_format_ok            | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| number_of_files_ok        | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| number_of_files_matching  | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| mire_present              | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| mire_ok                   | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| table_of_contents_present | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| table_of_contents_ok      | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| alto_present              | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| control_notes             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version                   | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by                | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by          | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date              | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date        | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| lot_identifier            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| sequential_numbers        | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| file_integrity_ok         | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| multi_lots_delivery       | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| compression_type_ok       | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| compression_rate_ok       | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| resolution_ok             | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| colorspace_ok             | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| pdf_multi_present         | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| pdf_multi_ok              | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| file_bib_prefix_ok        | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| file_case_ok              | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| file_radical_ok           | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| file_image_metadata_ok    | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| file_definition_ok        | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |

## del_multi_lots_delivery

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| description        | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| delivery_payment   | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| delivery_status    | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| delivery_method    | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| reception_date     | date         |                    | NO   |     |                     |       | select,insert,update |         |
| folder_path        | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| digitizing_notes   | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| control_notes      | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| train_id           | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| selected_by_train  | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |

## del_slip

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| delivery           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## del_slip_config

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| pgcn_id            | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| lot                | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| train              | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| radical            | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| title              | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| nb_pages           | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| date               | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| separator          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| encoding           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## del_slip_line

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| slip               | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| pgcn_id            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| lot                | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| train              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| radical            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| title              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| nb_pages           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| date               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_archive_collection

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| item               | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_archive_contributor

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| item               | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_archive_coverage

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| item               | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_archive_creator

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| item               | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_archive_header

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| type               | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| item               | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_archive_item

| Field              | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| doc_unit           | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| credits            | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| date               | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| description        | varchar(2047) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| license_url        | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| mediatype          | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| custom_mediatype   | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| notes              | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| publisher          | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| rights             | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| title              | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| archive_identifier | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| type               | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| source             | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## doc_archive_language

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| item               | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_archive_subject

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| item               | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_bibliographic_record

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| sigb               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| sudoc              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| calames            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| doc_unit           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| title              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| doc_electronique   | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| property_order     | varchar(255) | utf8mb4_general_ci | YES  |     | BY_PROPERTY_TYPE    |       | select,insert,update |         |

## doc_check

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| err_label          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| err_type           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| page               | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_check_history

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| pgcn_id            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| library_id         | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| library_label      | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| project_id         | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| project_label      | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| lot_id             | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| lot_label          | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| train_id           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| train_label        | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| delivery_id        | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| delivery_label     | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| user_login         | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| status             | varchar(191) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| start_check_date   | date         |                    | NO   |     |                     |       | select,insert,update |         |
| end_check_date     | date         |                    | YES  |     |                     |       | select,insert,update |         |
| page_number        | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| total_length       | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_check_slip_config

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| pgcn_id            | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| title              | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| state              | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| errors             | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| nb_pages           | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| nb_pages_tobill    | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| separator          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| encoding           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_condreport

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| lib_resp_name      | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| lib_resp_phone     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| lib_resp_email     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| leader_name        | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| leader_phone       | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| leader_email       | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| provider_name      | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| provider_phone     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| provider_email     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| prov_contact_name  | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| prov_contact_phone | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| prov_contact_email | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| doc_unit           | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_condreport_attachment

| Field              | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| original_filename  | varchar(1024) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| file_size          | bigint(20)    |                    | YES  |     |                     |       | select,insert,update |         |
| report             | varchar(191)  | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_condreport_desc

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| property           | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| value              | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| comment            | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| detail             | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_condreport_desc_property

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| allow_comment      | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| type               | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| code               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| sort_order         | int(11)      |                    | YES  |     | 0                   |       | select,insert,update |         |

## doc_condreport_desc_value

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| property           | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_condreport_detail

| Field                | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|----------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier           | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| type                 | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| lib_writer_name      | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| lib_writer_function  | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| prov_writer_name     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| prov_writer_function | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| report_date          | date         |                    | YES  |     |                     |       | select,insert,update |         |
| nb_view_binding      | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| nb_view_body         | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| nb_view_additionnal  | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| dim1                 | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| dim2                 | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| dim3                 | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| binding_desc         | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| body_desc            | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| additionnal_desc     | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| report               | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version              | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by           | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by     | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date         | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date   | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| insurance            | double       |                    | YES  |     |                     |       | select,insert,update |         |
| position             | int(11)      |                    | YES  |     | 0                   |       | select,insert,update |         |
| comment              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## doc_condreport_property_config

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| required           | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| allow_comment      | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| desc_property      | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| show_on_creation   | bit(1)       |                    | NO   |     | b'1'                |       | select,insert,update |         |
| internal_prop      | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## doc_condreport_property_config_type

| Field | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|-------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| conf  | varchar(191) | utf8mb4_general_ci | YES  | MUL |         |       | select,insert,update |         |
| type  | varchar(255) | utf8mb4_general_ci | NO   |     |         |       | select,insert,update |         |

## doc_condreport_slip_config

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| pgcn_id            | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| title              | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| nb_pages           | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| global_report      | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| separator          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| encoding           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_digital_document

| Field              | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| total_delivery     | int(11)       |                    | YES  |     |                     |       | select,insert,update |         |
| status             | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| doc_unit           | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| digital_id         | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| major_error_rate   | double        |                    | YES  |     |                     |       | select,insert,update |         |
| minor_error_rate   | double        |                    | YES  |     |                     |       | select,insert,update |         |
| check_notes        | varchar(2000) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| delivery_date      | date          |                    | YES  |     |                     |       | select,insert,update |         |
| total_length       | bigint(20)    |                    | YES  |     |                     |       | select,insert,update |         |

## doc_export_data

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| doc_unit           | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_export_property

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| language           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| rank               | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| type               | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| record             | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_global_check

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| err_label          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| err_type           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| digital_document   | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_page

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| number             | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| description        | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| check_notes        | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| status             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| digital_document   | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| sample             | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| piece              | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| piece_number       | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |

## doc_physical_document

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| total_page         | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| status             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| doc_unit           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| digital_id         | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| train              | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| name               | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## doc_physical_document_digital

| Field             | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|-------------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| physical_document | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| digital_document  | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |

## doc_property

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb3_bin        | YES  |     |                     |       | select,insert,update |         |
| language           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| rank               | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| type               | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| record             | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_property_type

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| supertype          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| rank               | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_sample

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| sampling_mode      | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| delivery           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| digital_document   | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_unit

| Field                   | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|-------------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier              | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| pgcn_id                 | varchar(191) | utf8mb3_bin        | NO   | MUL |                     |       | select,insert,update |         |
| label                   | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| type                    | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| archivable              | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| distributable           | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| rights                  | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| embargo                 | date         |                    | YES  |     |                     |       | select,insert,update |         |
| check_delay             | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| check_end_time          | date         |                    | YES  |     |                     |       | select,insert,update |         |
| library                 | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| project                 | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version                 | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by              | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by        | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date            | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date      | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| state                   | varchar(191) | utf8mb4_general_ci | NO   | MUL | AVAILABLE           |       | select,insert,update |         |
| lot                     | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| canceling_comment       | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| found_ref_author        | bit(1)       |                    | YES  |     | b'0'                |       | select,insert,update |         |
| progress_request_status | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| request_date            | date         |                    | YES  |     |                     |       | select,insert,update |         |
| answer_date             | date         |                    | YES  |     |                     |       | select,insert,update |         |
| omeka_exp_status        | varchar(255) | utf8mb4_general_ci | YES  |     | NONE                |       | select,insert,update |         |
| omeka_exp_date          | datetime     |                    | YES  |     |                     |       | select,insert,update |         |
| local_exp_status        | varchar(255) | utf8mb4_general_ci | YES  |     | NONE                |       | select,insert,update |         |
| local_exp_date          | datetime     |                    | YES  |     |                     |       | select,insert,update |         |
| collection_omeka        | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| items_omeka             | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| tag_omeka               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| parent                  | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_ocr_lang         | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| collection_ia           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| classement_pac          | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| condreport_type         | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| sibling                 | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| ark_url                 | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| cines_version           | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| export_data             | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| archive_item            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| digitizing_notes        | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| workflow                | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| dig_lib_export_status   | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| dig_lib_export_date     | datetime     |                    | YES  |     |                     |       | select,insert,update |         |
| image_height            | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| image_width             | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |

## doc_unit_sibling

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_workflow

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| model              | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| start_date         | datetime     |                    | YES  |     |                     |       | select,insert,update |         |
| end_date           | datetime     |                    | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## doc_workflow_state

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| key                | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| status             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| model_state        | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| workflow           | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| start_date         | datetime     |                    | YES  |     |                     |       | select,insert,update |         |
| end_date           | datetime     |                    | YES  |     |                     |       | select,insert,update |         |
| due_date           | datetime     |                    | YES  |     |                     |       | select,insert,update |         |
| user               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## exc_cines_report

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| doc_unit           | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| status             | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| date_sent          | timestamp    |                    | YES  |     |                     |       | select,insert,update |         |
| date_ar            | timestamp    |                    | YES  |     |                     |       | select,insert,update |         |
| date_rejection     | timestamp    |                    | YES  |     |                     |       | select,insert,update |         |
| date_archived      | timestamp    |                    | YES  |     |                     |       | select,insert,update |         |
| rejection          | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| certificate        | longtext     | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| message            | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## exc_csv_mapping

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| join_expression    | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## exc_csv_mapping_rule

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| doc_unit_field     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| csv_field          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| mapping            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| cond_report        | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| metadata           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| bib_record_field   | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| property           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| rank               | int(11)      |                    | YES  |     | 0                   |       | select,insert,update |         |

## exc_doc_unit

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| report             | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| process            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| date_import        | timestamp    |                    | YES  |     |                     |       | select,insert,update |         |
| doc_unit           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| doc_unit_pgcn_id   | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| doc_unit_label     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| parent_key         | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| parent_doc_unit    | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| parent_pgcn_id     | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| parent_label       | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| group_code         | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## exc_doc_unit_dupl

| Field    | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|----------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| imp_unit | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| doc_unit | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |

## exc_doc_unit_msg

| Field      | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| imp_unit   | varchar(191) | utf8mb4_general_ci | NO   | MUL |         |       | select,insert,update |         |
| code       | varchar(255) | utf8mb4_general_ci | NO   |     |         |       | select,insert,update |         |
| complement | text         | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## exc_import_file

| Field             | Type          | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|-------------------|---------------|--------------------|------|-----|---------|-------|----------------------|---------|
| report            | varchar(191)  | utf8mb4_general_ci | NO   | MUL |         |       | select,insert,update |         |
| original_filename | varchar(1024) | utf8mb4_general_ci | NO   |     |         |       | select,insert,update |         |
| file_size         | bigint(20)    |                    | YES  |     |         |       | select,insert,update |         |

## exc_import_report

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| mapping            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| mapping_children   | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| file_format        | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| data_encoding      | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| start_import       | timestamp    |                    | YES  |     |                     |       | select,insert,update |         |
| end_import         | timestamp    |                    | YES  |     |                     |       | select,insert,update |         |
| run_by             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| status             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| message            | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| csv_mapping        | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| nb_imp             | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| type               | varchar(255) | utf8mb4_general_ci | NO   |     | SIMPLE              |       | select,insert,update |         |
| project            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| lot                | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| add_mapping        | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| parent             | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| join_expression    | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## exc_internet_archive_report

| Field                       | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|-----------------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier                  | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| doc_unit                    | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| status                      | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| internet_archive_identifier | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| number                      | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| total                       | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| date_sent                   | timestamp    |                    | YES  |     |                     |       | select,insert,update |         |
| date_archived               | timestamp    |                    | YES  |     |                     |       | select,insert,update |         |
| message                     | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version                     | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by                  | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by            | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date                | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date          | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## exc_mapping

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| type               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| join_expression    | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## exc_mapping_rule

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| doc_unit_field     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| bib_record_field   | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| property           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| expression         | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| expression_conf    | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| apply_if           | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| apply_if_conf      | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| mapping            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| position           | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| default_rule       | bit(1)       |                    | NO   |     | b'0'                |       | select,insert,update |         |

## exc_template

| Field              | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name               | varchar(191)  | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| library            | varchar(191)  | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| original_filename  | varchar(1024) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| file_size          | bigint(20)    |                    | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## hlp_page

| Field              | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| version            | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| content            | longtext      | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| module             | varchar(5000) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| rank               | int(11)       |                    | NO   |     |                     |       | select,insert,update |         |
| tag                | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| title              | varchar(191)  | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| type               | varchar(191)  | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| parent             | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |

## image_metadata_properties

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| meta_repeat        | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| meta_type          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| iptc_tag           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| xmp_tag            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## image_metadata_values

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| doc_unit           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| metadata           | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| value              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## lib_library

| Field                           | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|---------------------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier                      | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name                            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| address                         | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| website                         | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| phone_number                    | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| email                           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| prefix                          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| number                          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active                          | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| version                         | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by                      | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by                | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date                    | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date              | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| active_configuration_ftp        | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| cines_service                   | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active_configuration_check      | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| role                            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| institution                     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| superuser                       | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| active_configuration_export_ftp | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_configuration_ocr_lang   | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_format_configuration     | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| lib_resp_name                   | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| lib_resp_phone                  | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| lib_resp_email                  | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## lib_parameter

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| type               | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## lib_parameter_value_cines

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| value              | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| type               | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| parameter          | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## lot_lot

| Field                             | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|-----------------------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier                        | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label                             | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| code                              | varchar(191)  | utf8mb4_general_ci | YES  | UNI |                     |       | select,insert,update |         |
| type                              | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| description                       | varchar(2000) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active                            | bit(1)        |                    | YES  |     |                     |       | select,insert,update |         |
| status                            | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| cond_notes                        | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| num_notes                         | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| delivery_date_forseen             | timestamp     |                    | YES  |     |                     |       | select,insert,update |         |
| version                           | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by                        | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by                  | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date                      | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date                | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| required_format                   | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| project                           | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_configuration_ftp          | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_configuration_check        | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| required_colorspace               | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| required_type_compression         | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| required_taux_compression         | int(11)       |                    | YES  |     |                     |       | select,insert,update |         |
| required_resolution               | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| provider                          | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| collection_omeka                  | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| items_omeka                       | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_configuration_export_ftp   | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_ocr_lang                   | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| collection_ia                     | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| classement_pac                    | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| workflow_model                    | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| real_end_date                     | date          |                    | YES  |     |                     |       | select,insert,update |         |
| files_archived                    | bit(1)        |                    | NO   |     | b'0'                |       | select,insert,update |         |
| active_format_configuration       | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| omeka_configuration               | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_export_ftp_delivery_folder | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |

## plat_platform

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| url                | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| rcr                | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| login              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| password           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| format             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| type               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| lot                | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## proj_project

| Field                             | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|-----------------------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier                        | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| library                           | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| name                              | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| description                       | varchar(2000) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| start_date                        | date          |                    | YES  |     |                     |       | select,insert,update |         |
| forecast_end_date                 | date          |                    | YES  |     |                     |       | select,insert,update |         |
| real_end_date                     | date          |                    | YES  |     |                     |       | select,insert,update |         |
| active                            | bit(1)        |                    | YES  |     |                     |       | select,insert,update |         |
| status                            | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version                           | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by                        | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by                  | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date                      | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date                | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| active_configuration_ftp          | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_configuration_check        | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| canceling_comment                 | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| provider                          | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| collection_omeka                  | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| items_omeka                       | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_configuration_export_ftp   | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| collection_ia                     | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| classement_pac                    | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| workflow_model                    | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| files_archived                    | bit(1)        |                    | NO   |     | b'0'                |       | select,insert,update |         |
| active_format_configuration       | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| lib_resp_name                     | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| lib_resp_phone                    | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| lib_resp_email                    | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| license_url                       | varchar(191)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| omeka_configuration               | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| active_export_ftp_delivery_folder | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |

## proj_project_library

| Field        | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|--------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| proj_library | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| project      | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |

## proj_project_lot

| Field    | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|----------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| proj_lot | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| project  | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |

## proj_project_platform

| Field         | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|---------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| proj_platform | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| project       | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |

## proj_project_user

| Field     | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|-----------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| proj_user | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| project   | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |

## sto_stored_file

| Field                | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|----------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier           | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| filename             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| length               | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| page_digest          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| mimetype             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| type                 | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| page                 | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| version              | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by           | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by     | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date         | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date   | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| height               | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| width                | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| title_toc            | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| type_toc             | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| order_toc            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| compression_type     | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| colorspace           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| compression_rate     | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| resolution           | int(11)      |                    | YES  |     |                     |       | select,insert,update |         |
| text_ocr             | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| file_format          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| format_configuration | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |

## train_train

| Field                 | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|-----------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier            | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| label                 | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| description           | varchar(2000) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active                | bit(1)        |                    | YES  |     |                     |       | select,insert,update |         |
| status                | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| provider_sending_date | date          |                    | YES  |     |                     |       | select,insert,update |         |
| return_date           | date          |                    | YES  |     |                     |       | select,insert,update |         |
| version               | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by            | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by      | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date          | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date    | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| project               | varchar(191)  | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |

## user_address

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| address1           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| address2           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| address3           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| complement         | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| postcode           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| city               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| country            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| label              | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## user_authorization

| Field              | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| code               | varchar(191)  | utf8mb4_general_ci | YES  | UNI |                     |       | select,insert,update |         |
| label              | varchar(191)  | utf8mb4_general_ci | YES  | UNI |                     |       | select,insert,update |         |
| description        | varchar(2000) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| module             | varchar(255)  | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## user_dashboard

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| dashboard          | longtext     | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

## user_persistent_token

| Field           | Type          | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|-----------------|---------------|--------------------|------|-----|---------|-------|----------------------|---------|
| series          | varchar(191)  | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| user_identifier | varchar(191)  | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| token_value     | varchar(2000) | utf8mb4_general_ci | NO   |     |         |       | select,insert,update |         |
| token_date      | date          |                    | YES  |     |         |       | select,insert,update |         |
| ip_address      | varchar(255)  | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |
| user_agent      | varchar(255)  | utf8mb4_general_ci | YES  |     |         |       | select,insert,update |         |

## user_role

| Field              | Type          | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|---------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191)  | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| code               | varchar(191)  | utf8mb4_general_ci | YES  | UNI |                     |       | select,insert,update |         |
| label              | varchar(191)  | utf8mb4_general_ci | YES  | UNI |                     |       | select,insert,update |         |
| description        | varchar(2000) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)    |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191)  | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp     |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| superuser          | bit(1)        |                    | YES  |     |                     |       | select,insert,update |         |

## user_role_authorization

| Field              | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| user_authorization | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| role               | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |

## user_user

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| login              | varchar(191) | utf8mb4_general_ci | YES  | UNI |                     |       | select,insert,update |         |
| password           | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| firstname          | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| surname            | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| function           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| category           | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| role               | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| dashboard          | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| address            | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| email              | varchar(255) | utf8mb4_general_ci | NO   |     |                     |       | select,insert,update |         |
| phone_number       | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| active             | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |
| lang               | varchar(191) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| company_name       | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(191) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| superuser          | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |

## workflow_group

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name               | varchar(191) | utf8mb4_general_ci | YES  | UNI |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| description        | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |

## workflow_group_user

| Field          | Type         | Collation          | Null | Key | Default | Extra | Privileges           | Comment |
|----------------|--------------|--------------------|------|-----|---------|-------|----------------------|---------|
| workflow_group | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |
| workflow_user  | varchar(191) | utf8mb4_general_ci | NO   | PRI |         |       | select,insert,update |         |

## workflow_model

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| name               | varchar(191) | utf8mb4_general_ci | YES  | UNI |                     |       | select,insert,update |         |
| library            | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| description        | text         | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| active             | bit(1)       |                    | YES  |     |                     |       | select,insert,update |         |

## workflow_model_state

| Field              | Type         | Collation          | Null | Key | Default             | Extra | Privileges           | Comment |
|--------------------|--------------|--------------------|------|-----|---------------------|-------|----------------------|---------|
| identifier         | varchar(191) | utf8mb4_general_ci | NO   | PRI |                     |       | select,insert,update |         |
| key                | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |
| group              | varchar(191) | utf8mb4_general_ci | YES  | MUL |                     |       | select,insert,update |         |
| model              | varchar(191) | utf8mb4_general_ci | NO   | MUL |                     |       | select,insert,update |         |
| limit_duration     | bigint(20)   |                    | YES  |     |                     |       | select,insert,update |         |
| version            | bigint(20)   |                    | NO   |     |                     |       | select,insert,update |         |
| created_by         | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| last_modified_by   | varchar(255) | utf8mb4_general_ci | NO   |     | system              |       | select,insert,update |         |
| created_date       | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| last_modified_date | timestamp    |                    | NO   |     | current_timestamp() |       | select,insert,update |         |
| type               | varchar(255) | utf8mb4_general_ci | YES  |     |                     |       | select,insert,update |         |

