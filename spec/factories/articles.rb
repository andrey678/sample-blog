FactoryBot.define do
  factory :article do
    title { "Article title" }
    text { "Article text" }
  #Создаём фабрику с названием article_with_comments
  #Для создания статьи с несколькими комментариями
    factory :article_with_comments do
      #после создания article
      after :create do |article, evaluator|
        #создаём список из 3-х комментариев
        create_list :comment, 3, article: article
      end
    end

  end
end