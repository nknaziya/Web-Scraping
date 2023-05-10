require "application_system_test_case"

class VehiclesTest < ApplicationSystemTestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "visiting the index" do
    visit vehicles_url
    assert_selector "h1", text: "Vehicles"
  end

  test "should create vehicle" do
    visit vehicles_url
    click_on "New vehicle"

    fill_in "Drivetrain", with: @vehicle.drivetrain
    fill_in "Exterior color", with: @vehicle.exterior_color
    fill_in "Interior color", with: @vehicle.interior_color
    fill_in "Miles", with: @vehicle.miles
    fill_in "Price", with: @vehicle.price
    fill_in "Stock type", with: @vehicle.stock_type
    fill_in "Title", with: @vehicle.title
    fill_in "Transmission", with: @vehicle.transmission
    click_on "Create Vehicle"

    assert_text "Vehicle was successfully created"
    click_on "Back"
  end

  test "should update Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Edit this vehicle", match: :first

    fill_in "Drivetrain", with: @vehicle.drivetrain
    fill_in "Exterior color", with: @vehicle.exterior_color
    fill_in "Interior color", with: @vehicle.interior_color
    fill_in "Miles", with: @vehicle.miles
    fill_in "Price", with: @vehicle.price
    fill_in "Stock type", with: @vehicle.stock_type
    fill_in "Title", with: @vehicle.title
    fill_in "Transmission", with: @vehicle.transmission
    click_on "Update Vehicle"

    assert_text "Vehicle was successfully updated"
    click_on "Back"
  end

  test "should destroy Vehicle" do
    visit vehicle_url(@vehicle)
    click_on "Destroy this vehicle", match: :first

    assert_text "Vehicle was successfully destroyed"
  end
end
