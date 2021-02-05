FROM ruby:alpine

RUN gem install sinatra redis puma

EXPOSE 80

COPY rubycounter.rb ./
RUN chmod +x rubycounter.rb

CMD ["ruby", "rubycounter.rb", "-o", "0.0.0.0", "-p", "80"]
