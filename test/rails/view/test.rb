# frozen_string_literal: true

require "test_helper"

class Example < Phlex::View
	def template
		h1 { "👋" }
	end
end

describe Phlex::Rails::View::Test do
	include Phlex::Rails::View::Test

	describe "#controller" do
		it "is an ActionView::TestCase::TestController" do
			expect(controller).to be_a ActionView::TestCase::TestController
		end

		it "is memoized" do
			a, b = controller, controller

			expect(a).to be == b
		end
	end

	describe "#view_context" do
		it "is the view_context for the test controller" do
			expect(view_context.controller).to be == controller
		end
	end
end
