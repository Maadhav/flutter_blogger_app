import 'dart:convert';

class BloggerModel {
    BloggerModel({
        this.kind,
        this.items,
        this.etag,
    });

    final String kind;
    final List<Item> items;
    final String etag;

    factory BloggerModel.fromJson(String str) => BloggerModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory BloggerModel.fromMap(Map<String, dynamic> json) => BloggerModel(
        kind: json["kind"],
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
        etag: json["etag"],
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
        "etag": etag,
    };
}

class Item {
    Item({
        this.kind,
        this.id,
        this.blog,
        this.published,
        this.updated,
        this.url,
        this.selfLink,
        this.title,
        this.content,
        this.author,
        this.replies,
        this.labels,
        this.etag,
    });

    final String kind;
    final String id;
    final Blog blog;
    final DateTime published;
    final DateTime updated;
    final String url;
    final String selfLink;
    final String title;
    final String content;
    final Author author;
    final Replies replies;
    final List<String> labels;
    final String etag;

    factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Item.fromMap(Map<String, dynamic> json) => Item(
        kind: json["kind"],
        id: json["id"],
        blog: Blog.fromMap(json["blog"]),
        published: DateTime.parse(json["published"]),
        updated: DateTime.parse(json["updated"]),
        url: json["url"],
        selfLink: json["selfLink"],
        title: json["title"],
        content: json["content"],
        author: Author.fromMap(json["author"]),
        replies: Replies.fromMap(json["replies"]),
        labels: List<String>.from(json["labels"].map((x) => x)),
        etag: json["etag"],
    );

    Map<String, dynamic> toMap() => {
        "kind": kind,
        "id": id,
        "blog": blog.toMap(),
        "published": published.toIso8601String(),
        "updated": updated.toIso8601String(),
        "url": url,
        "selfLink": selfLink,
        "title": title,
        "content": content,
        "author": author.toMap(),
        "replies": replies.toMap(),
        "labels": List<dynamic>.from(labels.map((x) => x)),
        "etag": etag,
    };
}

class Author {
    Author({
        this.id,
        this.displayName,
        this.url,
        this.image,
    });

    final String id;
    final String displayName;
    final String url;
    final Image image;

    factory Author.fromJson(String str) => Author.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Author.fromMap(Map<String, dynamic> json) => Author(
        id: json["id"],
        displayName: json["displayName"],
        url: json["url"],
        image: Image.fromMap(json["image"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "displayName": displayName,
        "url": url,
        "image": image.toMap(),
    };
}

class Image {
    Image({
        this.url,
    });

    final String url;

    factory Image.fromJson(String str) => Image.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Image.fromMap(Map<String, dynamic> json) => Image(
        url: json["url"],
    );

    Map<String, dynamic> toMap() => {
        "url": url,
    };
}

class Blog {
    Blog({
        this.id,
    });

    final String id;

    factory Blog.fromJson(String str) => Blog.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Blog.fromMap(Map<String, dynamic> json) => Blog(
        id: json["id"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
    };
}

class Replies {
    Replies({
        this.totalItems,
        this.selfLink,
    });

    final String totalItems;
    final String selfLink;

    factory Replies.fromJson(String str) => Replies.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Replies.fromMap(Map<String, dynamic> json) => Replies(
        totalItems: json["totalItems"],
        selfLink: json["selfLink"],
    );

    Map<String, dynamic> toMap() => {
        "totalItems": totalItems,
        "selfLink": selfLink,
    };
}
