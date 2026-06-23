import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListViewTest extends StatelessWidget {
  const ListViewTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          separatorBuilder: (context, index) => Container(
                color: Colors.amber,
                height: 50,
              ),
          itemCount: 300,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('data'),
              leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: CachedNetworkImage(
                    imageUrl:
                        'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAlAMBIgACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAABAUGAwIBB//EADUQAAICAQEEBwUIAwEAAAAAAAABAgMEEQUhktESFTFBUVNxE0JSYZEiMjRigaGx8CNDwRT/xAAVAQEBAAAAAAAAAAAAAAAAAAAAAf/EABYRAQEBAAAAAAAAAAAAAAAAAAARAf/aAAwDAQACEQMRAD8A/WwAVAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcLcvHqell0E/BPVnNbSw3/uS9YsCWDxXbXata5xmvyvU9gAAAAAAAAAAAAAAAAAABzuthTW7LHpGJRZm0bchuMW4V/Cn2+o2plvIv6EW/Zw3R+b72QioAAD1Ccq5KVcpRku+L0LnZ+01bJVZOin7s+xP1KQAa4EHZWU8ijozetle5/NdzJxFAAAAAAAAAAAAAA4Z1rpxLbFuajovV7v+ncg7Z/Ay+ckBnwAVAAAAABM2Ta6s6Hwz+y/76miMtjfiatPjj/JqRqgAIAAAAAAAAAAAEXalbswbUu1JS+jJR8aTTT3prRgZIHfMoeNkTreuie5+KOBUAAAAAEnZ8PaZtK8Jav0W80pU7ExmlLIl7y6MfTvLYigAAAAAAAAAAAAAAfAI2fhxy6kuyyP3ZczPXVTpscLU1JeJqyPlLGnDo5Lr0XZ0nvQGZBYXYuAm/Z5qj8nFy/g5RxsZvfnQ0+VcioiE3AwJZUlKacafH4vkiXi42zotN3Qsl4Slu+hax0a1jo14oKRioxUYpJLckj6AQAAAAAAAAAAAAIudmwxIb/tTkt0QJFlkKoOdk1GK7WyryNsJarGh0vzSen7FbkZFuTPp2y1fcu5HEsEi7MyLtenbLTwW5fsR9AAgAAB6hOVb1rk4vxTPIAn0bVya3pNq2PhLc/qWmLtGjI0SfQn8Mu/0ZnABrgUeBtKdTjXe3OvsUu+PMu4yjKKlFpprVNd5FfQAAAAAAAcMzIji0OyW99kV4szdtk7bJWWPWUu1kzbF7tynX7te79e8gFAABAAAAAAAAAAACx2VmumxU2P/HJ7m/dZXADXAi7Nv/8ARhwk/vL7L/QlEUAAAAAZ2zBzJ2Tl7GWrk32rmeerszyHxLmaQAZvq7M8h8S5jq7M8h8S5mkBaRm+rszyHxLmOrszyHxLmaQCkZvq7M8h8S5jq7M8h8S5mkApGb6uzPIfEuY6uzPIfEuZpAKRm+rszyHxLmOrszyHxLmaQCkZvq7M8h8S5jq7M8h8S5mkApFdsei/HjbG6txT0a3rf/dxYgEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB//Z',
                    errorWidget: (context, url, error) =>
                        Icon(Icons.alarm_outlined),
                  )),
              trailing: Icon(Icons.arrow_forward_ios),
              subtitle: Text('data'),
            );
          }),
    );
  }
}
