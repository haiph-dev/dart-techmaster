//Dart Lesson P5 - excercise 01
//social network

class Member {
  final String id;
  final String name;
  List<Post> posts = [];

  String? avatar;
  String? dob;
  String? phone;
  String? email;

  Member(this.id, this.name);

  void show() {
    print('user id: $id name: $name has activities:');
    if (posts.isNotEmpty) {
      for (int i = 0; i < posts.length; i++) {
        posts[i].show();
      }
    }
  }
}

class Post {
  String id;

  String content;
  List<Comment> comments = [];

  Post(this.id, this.content);

  void show() {
    print('   post: $id with content: $content');
    if (comments.isNotEmpty) {
      for (int i = 0; i < comments.length; i++) {
        print(
            '       comment: ${comments[i].id} by user ${comments[i].userId} with content ${comments[i].content}');
      }
    }
  }
}

class Comment {
  String id;
  // String postId;
  String userId;
  String content;

  Comment(this.id, this.userId, this.content);
}

void main() {
  final userA = Member('a', 'userA');
  final userB = Member('b', 'userB');

  for (int i = 0; i < 2; i++) {
    userA.posts.add(Post('a$i', 'a$i-post'));
    userA.posts[i].comments.add(Comment('a$i-1', 'c', 'a$i\1-comment'));
    userA.posts[i].comments.add(Comment('a$i-2', 'c', 'a$i\2-comment'));

    userB.posts.add(Post('b$i', 'b$i-post'));
    userB.posts[i].comments.add(Comment('b$i-1', 'c', 'b$i\1-comment'));
    userB.posts[i].comments.add(Comment('b$i-2', 'c', 'b$i\2-comment'));
  }

  userA.show();
  userB.show();
}
