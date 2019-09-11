describe Fastlane::Actions::FrameitRtlSupportAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The frameit_rtl_support plugin is working!")

      Fastlane::Actions::FrameitRtlSupportAction.run(nil)
    end
  end
end
