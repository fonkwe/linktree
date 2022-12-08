class Users::DeviseController < ApplicationController
    class Responder < ActionController::Responder 
        def to_turbo_stream
            controller.render(option.merge(formats: :html))
        rescue ActionView::MissingTemplate => e
    end
end