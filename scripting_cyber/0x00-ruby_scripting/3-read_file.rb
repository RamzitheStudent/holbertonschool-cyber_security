#!/usr/bin/env ruby
require 'json'

def count_user_ids(path)
  # Читаем содержимое файла
  file = File.read(path)

  # Парсим JSON в массив Ruby
  data = JSON.parse(file)

  # Создаём хэш для подсчёта userId
  counts = Hash.new(0)

  # Проходим по каждому объекту
  data.each do |item|
    user_id = item['userId']
    counts[user_id] += 1
  end

  # Сортируем по userId и выводим
  counts.sort.each do |user_id, count|
    puts "#{user_id}: #{count}"
  end
end
