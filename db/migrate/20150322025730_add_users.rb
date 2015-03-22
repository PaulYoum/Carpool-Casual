class AddUsers < ActiveRecord::Migration

  def up
    execute %{
      CREATE TABLE `users` (
        `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `first_name` VARCHAR(255) DEFAULT NULL,
        `last_name` VARCHAR(255) DEFAULT NULL,
        `email` VARCHAR(255) DEFAULT NULL,
        `phone` BIGINT DEFAULT NULL,
        `gender` SET('male','female') DEFAULT NULL,
        `created_at` DATETIME DEFAULT NULL,
        PRIMARY KEY (`id`)
      ) ENGINE=InnoDB;
    }

    execute %{
      CREATE TABLE `events` (
        `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(255) DEFAULT NULL,
        `address` VARCHAR(255) DEFAULT NULL,
        `city` VARCHAR(255) DEFAULT NULL,
        `state` VARCHAR(2) DEFAULT NULL,
        `zip` INT(10) DEFAULT NULL,
        `latitude` DOUBLE DEFAULT NULL,
        `longitude` DOUBLE DEFAULT NULL,
        `event_start_date` DATETIME DEFAULT NULL,
        `event_end_date` DATETIME DEFAULT NULL,
        `created_at` DATETIME DEFAULT NULL,
        PRIMARY KEY (`id`)
      ) ENGINE=InnoDB;
    }

    execute %{
      CREATE TABLE `carpools` (
        `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `event_id` INT UNSIGNED NOT NULL,
        `start_time` DATETIME DEFAULT NULL,
        `end_time` DATETIME DEFAULT NULL,
        `created_at` DATETIME DEFAULT NULL,
        PRIMARY KEY (`id`)
      ) ENGINE=InnoDB;
    }

    execute %{
      CREATE TABLE `carpool_candidates` (
        `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
        `user_id` INT UNSIGNED NOT NULL,
        `address` VARCHAR(255) DEFAULT NULL,
        `city` VARCHAR(255) DEFAULT NULL,
        `state` VARCHAR(2) DEFAULT NULL,
        `zip` INT(10) DEFAULT NULL,
        `latitude` DOUBLE DEFAULT NULL,
        `longitude` DOUBLE DEFAULT NULL,
        `is_driver` TINYINT(1) DEFAULT 0,
        `created_at` DATETIME DEFAULT NULL,
        PRIMARY KEY (`id`)
      ) ENGINE=InnoDB;
    }

    execute %{
      CREATE TABLE `beta_signups` (
        `name` VARCHAR(255) DEFAULT NULL,
        `email` VARCHAR(255) DEFAULT NULL,
        `created_at` DATETIME DEFAULT NULL,
        PRIMARY KEY (`email`)
      ) ENGINE=InnoDB;
    }

  end

  def down
    execute %{ DROP TABLE `beta_signups` }
    execute %{ DROP TABLE `carpool_candidates` }
    execute %{ DROP TABLE `carpools` }
    execute %{ DROP TABLE `events` }
    execute %{ DROP TABLE `users` }
  end

end
