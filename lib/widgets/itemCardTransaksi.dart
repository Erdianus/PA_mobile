import 'package:flutter/material.dart';

class Itemcard extends StatelessWidget {
  final String name, email, noHp, jenis, harga, waktu, barberman, jadwal;
  //// Pointer to Update Function
  final Function? onUpdate;
  //// Pointer to Delete Function
  final Function? onDelete;

  Itemcard(this.name, this.email, this.noHp, this.jenis, this.harga,
      this.barberman, this.jadwal, this.waktu,
      {this.onUpdate, this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color(0xfff78000))),
      child: Column(
        children: [
          Text(waktu,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              )),
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/logo_barbershop.png"),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Pelanggan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Telp. ${noHp}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'E-mail : ${email}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Divider(height: 1, color: Colors.grey[500]),
                  SizedBox(height: 8.0),
                  Text(
                    'Detail Pesanan',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Barberman     : ${barberman}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Jadwal          : ${jadwal}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Jenis Haircut : ${jenis}',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    'Harga          : ${harga}',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.green[900],
                        ),
                        child: Center(
                            child: Icon(
                          Icons.create_rounded,
                          color: Colors.white,
                        )),
                        onPressed: () {
                          if (onUpdate != null) onUpdate!();
                        }),
                  ),
                  SizedBox(
                    height: 40,
                    width: 60,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          primary: Colors.red[900],
                        ),
                        child: Center(
                            child: Icon(
                          Icons.delete,
                          color: Colors.white,
                        )),
                        onPressed: () {
                          if (onDelete != null) {
                            onDelete!();
                          }
                        }),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
