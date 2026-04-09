create table bookings (
  id uuid default gen_random_uuid() primary key,
  created_at timestamp with time zone default now(),
  first_name text not null,
  last_name text not null,
  email text not null,
  phone text,
  pet_name text not null,
  species text not null,
  breed text,
  age text,
  clinic text not null,
  service_type text not null,
  appointment_date date not null,
  appointment_time text not null,
  notes text,
  status text default 'pending'
);
