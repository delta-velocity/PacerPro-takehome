require "rails_helper"

RSpec.describe Item, "#deleted_at" do
    describe "new item" do
        item = Item.new(name: "test_exists")

        it "is not deleted" do
            expect(item.deleted).to eq(false)
        end

        it "deleted value is nil" do
            item = Item.new(name: "test_exists")
            expect(item.deleted_at).to eq(nil)
        end
    end
    
    describe "existing item" do
        it "is deleted" do
            item = Item.new(name: "test_deletes")
            item.soft_delete
            expect(item.deleted).to eq(true)
        end

        it "is deleted, updating value to datetime" do
            item = Item.new(name: "test_deletes")
            item.soft_delete
            expect(item.deleted_at).not_to eq(nil)
        end

        it "is deleted and restored" do
            item = Item.new(name: "test_restores")
            item.soft_delete
            item.restore
            expect(item.deleted).to eq(false)
        end

        it "is deleted and restored, updating value to nil" do
            item = Item.new(name: "test_restores")
            item.soft_delete
            item.restore
            expect(item.deleted).not_to eq(nil)
        end
    end
end