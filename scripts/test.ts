class Archive {
  title: string = '';

  author: string[] = [];

  publisher: string = '';

  origs: false | string[] = false;

  likes: number = 0;
}

const archive = new Archive();
const keys: (keyof Archive)[] = ['title', 'author', 'publisher', 'origs', 'likes'];
let field: keyof Archive = keys[Math.floor(Math.random() * keys.length)];

archive[field] = 123;
