/// A class representing a slide with a title, caption, and URL.
///
/// The [Slide] class is used to encapsulate the properties of a slide,
/// which include a [title], a [caption], and a [url]. All fields are
/// required to create an instance of this class.
class Slide {
  final String title;
  final String caption;
  final String url;

  Slide({required this.title, required this.caption, required this.url});
}

/// A list of `Slide` objects representing different stages of a process.
/// 
/// Each `Slide` contains a title, a caption, and a URL to an image asset.
/// This list is used to display a sequence of slides, each with descriptive
/// text and an associated image.
List<Slide> slides = [
  Slide(
    title: "Search food",
    caption:
        "Ad nulla ipsum nisi cupidatat voluptate aliquip officia et qui magna.",
    url: "assets/images/1.png",
  ),
  Slide(
    title: "Fast delivery",
    caption:
        "Qui incididunt in laborum laborum officia ullamco mollit commodo.",
    url: "assets/images/2.png",
  ),
  Slide(
    title: "Enjoy food",
    caption:
        "Adipisicing tempor consequat anim officia veniam consequat elit laboris minim ea voluptate id minim do.",
    url: "assets/images/3.png",
  ),
];
