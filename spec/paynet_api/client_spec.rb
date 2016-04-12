describe AvalaraTaxRatesApi::Client do
  let(:client) { AvalaraTaxRatesApi::Client.new }

  # describe "#cobrand_get_payment_history_report" do
  #   let(:test_id_from_paynet) { "59206906" }
  #   let(:params) { { paynet_id: test_id_from_paynet, payment_comprehensive: "1" } }
  #   subject(:search) { client.cobrand_get_payment_history_report(params) }

  #   context "with required params passed in" do
  #     let(:faraday_response_double) { double("Response") }
  #     before do
  #       expect(client).to receive(:get).and_return(faraday_response_double)
  #       expect(faraday_response_double).to receive(:body).and_return("<response></response>")
  #     end

  #     it "should make new AvalaraTaxRatesApi::CobrandGetPaymentHistoryReport Request & Response objects with the passed in params" do
  #       expect(AvalaraTaxRatesApi::CobrandGetPaymentHistoryReport::Request).to receive(:new).with(params)
  #       expect(AvalaraTaxRatesApi::CobrandGetPaymentHistoryReport::Response).to receive(:new)
  #       subject
  #     end

  #     it "should return a AvalaraTaxRatesApi::CobrandGetPaymentHistoryReport::Response" do
  #       expect(subject).to be_a(AvalaraTaxRatesApi::CobrandGetPaymentHistoryReport::Response)
  #     end
  #   end
  # end

  # describe "#get_payment_history_report" do
  #   let(:test_id_from_paynet) { "59206906" }
  #   let(:params) { { paynet_id: test_id_from_paynet, payment_comprehensive: "1" } }
  #   subject(:search) { client.get_payment_history_report(params) }

  #   context "with required params passed in" do
  #     let(:faraday_response_double) { double("Response") }
  #     before do
  #       expect(client).to receive(:get).and_return(faraday_response_double)
  #       expect(faraday_response_double).to receive(:body).and_return("<response></response>")
  #     end

  #     it "should make new AvalaraTaxRatesApi::GetPaymentHistoryReport Request & Response objects with the passed in params" do
  #       expect(AvalaraTaxRatesApi::GetPaymentHistoryReport::Request).to receive(:new).with(params)
  #       expect(AvalaraTaxRatesApi::GetPaymentHistoryReport::Response).to receive(:new)
  #       subject
  #     end

  #     it "should return a AvalaraTaxRatesApi::GetPaymentHistoryReport::Response" do
  #       expect(subject).to be_a(AvalaraTaxRatesApi::GetPaymentHistoryReport::Response)
  #     end
  #   end
  # end

  # describe "#search_for_company" do
  #   let(:params) { { company_name: "Acme Co", city: "Durham", state_code: "NC"} }
  #   subject { client.search_for_company(params) }

  #   context "with required params passed in" do
  #     let(:faraday_response_double) { double("Response") }
  #     before do
  #       expect(client).to receive(:get).and_return(faraday_response_double)
  #       expect(faraday_response_double).to receive(:body).and_return("<response></response>")
  #     end

  #     it "should make new AvalaraTaxRatesApi::SearchForCompany Request & Response objects with the passed in params" do
  #       expect(AvalaraTaxRatesApi::SearchForCompany::Request).to receive(:new).with(params)
  #       expect(AvalaraTaxRatesApi::SearchForCompany::Response).to receive(:new)
  #       subject
  #     end

  #     it "should return a AvalaraTaxRatesApi::SearchForCompany::Response" do
  #       expect(subject).to be_a(AvalaraTaxRatesApi::SearchForCompany::Response)
  #     end

  #   end
  # end
end
