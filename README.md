## Flutter Blogger App

This app was developed using [Blogger API v3.0](https://developers.google.com/blogger/docs/3.0/getting_started) and Flutter.

![# Blog Mobile UI](https://cdn.dribbble.com/users/1805206/screenshots/6025841/blog_dribbble.png)
> Blog Mobile UI by [Rafy Osman](https://dribbble.com/rafy)

## Setup

 1. Clone the project:
	 `git clone https://github.com/Maadhav/flutter_blogger_app.git`
2. Create a Blogger API KEY:
https://developers.google.com/blogger/docs/3.0/using#APIKey
3. Copy the API KEY and paste it in the code:
`lib > utils > constants.dart > Ln 3`
4. Replace the Blog ID without your blog's id:
Eg: `3687631047009695378`
5. Now Run the project: `flutter run`

## Packages Used

 - [Drop Cap Text: Aims to achive drop cap in text capitalization.](https://pub.dev/packages/drop_cap_text)
 - [HTML: For parsing HTML conent outside the browser](https://pub.dev/packages/html)
 - [HTTP: A composable API for HTTP requests.](https://pub.dev/packages/http)