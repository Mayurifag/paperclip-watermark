# AckPaperclipWatermark

Fork of [PaperclipWatermark](https://github.com/vikewoods/paperclip-watermark)
Paperclip Watermark processor

## Usage

Edit your paperclip model:

```ruby
# app/models/assets.rb

class Asset < ActiveRecord::Base
  attr_accessible :attachment

  # Paperclip image attachments
  has_attached_file :attachment, :processors => [:watermark],
                    :styles => {
                                 :thumb => '150x150>',
                                 :original => { :geometry => '800>', :watermark_path => "#{Rails.root}/public/images/logo.png" }
                               },
                    :url    => '/assets/attachment/:id/:style/:basename.:extension',
                    :path   => ':rails_root/public/assets/attachment/:id/:style/:basename.:extension',
                    :default_url => "/images/:style/mising.png"
end

```


## Installation

Install from github:
```ruby
gem 'ack-paperclip-watermark', :github => 'ack43/paperclip-watermark'
```

And then execute:

    $ bundle install

Or install it yourself as:
```ruby
gem install paperclip-watermark
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
