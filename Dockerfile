FROM ruby

RUN gem install sinatra redis puma --no-document

EXPOSE 80

COPY rubycounter.rb ./
RUN chmod +x rubycounter.rb

CMD ["ruby", "rubycounter.rb", "-o", "0.0.0.0", "-p", "80"]
