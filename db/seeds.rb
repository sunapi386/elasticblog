# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  # Mayor.create(name: 'Emanuel', city: cities.first)

articles = ["Apps from the Mac App Store may be used on any Macs that you own or control for your personal use.",
"You may be asked for your Apple ID and password the first time you use an app. You won't have to provide them again unless you use the app on a different computer.",
"Yes. You can redownload apps from the Mac App Store as long as the app remains available. You may be asked to enter the Apple ID and password you initially used to download the app.",
"If you experience a technical issue with an app, first contact the developer of the app for assistance. Their support contact information can be found on the app's page in the Mac App Store. If that does not resolve the issue, contact Mac App Store Customer Support.",
"We recommend backing up the contents of your Mac regularly, including photos, purchased movies, TV shows, and apps, to ensure that you can easily recover them in the event of a loss. If you need to recover a previously purchased app from the Mac App Store, you can redownload it if it is still available.",
"No, but you may be asked for your Apple ID and password the first time you use an app.",
"If you experience a technical issue with an app, first contact the developer of the app for assistance. Their support contact information may be found on the app's page in the Mac App Store.",
"iTunes Gift Cards can be used to make purchases from the Mac App Store. Apple Store Gift Cards are redeemable in Apple retail stores, and may not be used on the Mac App Store.",
"No, the Mac App Store can only be used on a Mac.",
"New apps are downloaded to the Applications folder on your Mac, and the app's icon will be placed in the Dock.",
"To remove an app from the Dock, drag it out of the Dock. This does not remove the app from your Applications folder. To re-add it to the Dock, drag it from the Applications folder back to the Dock.",
"Updates for apps from the Mac App Store are free. Updates will appear in the Updates tab of the Mac App Store when they are available.",
"Apple values your privacy.  To learn how Apple may use your information, see Apple's Privacy Policy, which can be found at www.apple.com/privacy.",]

articles.each_with_index do |article, idx|
    Article.create(title: idx + 1, text: article)
end