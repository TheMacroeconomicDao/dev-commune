import 'package:flutter/material.dart';
import 'package:the_movie_db/resources/resources.dart';

class MovieDetailsMainInfoWidget extends StatelessWidget {
  const MovieDetailsMainInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _TopPosterWidget(),
        const Padding(
          padding: EdgeInsets.all(20),
          child: _MovieNameWidget(),
        ),
        const _SummeryWidget(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: _OverviewWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: _DescriptionWidget(),
        ),
        Row(
          children: [
            Column(
              children: const [
                Text(
                  'Nicolas Winding Refn',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Director',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Text(
                  'Nicolas Winding Refn',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Director',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: const [
                Text(
                  'Nicolas Winding Refn',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Director',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Column(
              children: const [
                Text(
                  'Nicolas Winding Refn',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  'Director',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Text _DescriptionWidget() {
    return Text(
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
      'Driver is a skilled Hollywood stuntman who moonlights as a getaway driver for criminals. Though he projects an icy exterior, lately he\'s been warming up to a pretty neighbor named Irene and her young son, Benicio. When Irene\'s husband gets out of jail, he enlists Driver\'s help in a million-dollar heist. The job goes horribly wrong, and Driver must risk his life to protect Irene and Benicio from the vengeful masterminds behind the robbery.',
    );
  }

  Text _OverviewWidget() {
    return Text(
      'Owerview',
      textAlign: TextAlign.start,
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class _TopPosterWidget extends StatelessWidget {
  const _TopPosterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Image(
            filterQuality: FilterQuality.high,
            image: AssetImage(AppImages.topHeader)),
        Positioned(
          top: 20,
          left: 20,
          bottom: 20,
          child: SizedBox(
            height: 200,
            child: Image(
                filterQuality: FilterQuality.high,
                image: AssetImage(AppImages.moviePlacholder)),
          ),
        ),
      ],
    );
  }
}

class _MovieNameWidget extends StatelessWidget {
  const _MovieNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      maxLines: 3,
      text: const TextSpan(
        children: [
          TextSpan(
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w600,
            ),
            text: 'Top Gun',
          ),
          TextSpan(
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              text: ' (2021)'),
        ],
      ),
    );
  }
}

class _SummeryWidget extends StatelessWidget {
  const _SummeryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Color.fromRGBO(22, 21, 25, 1),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
        child: Text(
          'R, 04/27/2021 (USA) 1h49m Action, Adventure, Triller, War',
          textAlign: TextAlign.center,
          maxLines: 3,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
