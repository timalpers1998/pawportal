-- Profiles table (one row per user, stores their role)
create table profiles (
  id uuid references auth.users on delete cascade primary key,
  role text not null check (role in ('clinic', 'owner')),
  full_name text,
  clinic_name text,
  created_at timestamp with time zone default now()
);

-- Link bookings to user accounts (optional — set when owner is logged in)
alter table bookings add column user_id uuid references auth.users;
