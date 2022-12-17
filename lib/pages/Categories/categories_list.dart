import 'package:flutter/material.dart';

class CategoriesPageList extends StatelessWidget {
  const CategoriesPageList({super.key});

  void _onClick(String name) {
    print(name);
  }

  List<Widget> _getListData() {
    return _mockDataSource.map((item) {
      return Column(
        children: [
          ListTile(
              // leading: Icon(Icons.home),
              title: Text(
                item['name'],
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                item['descriptoin'],
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 12),
              ),
              // trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => _onClick(item['name'])),
          const Divider(),
        ],
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getListData(),
    );
  }
}

const List _mockDataSource = [
  {
    'name': 'インフラ',
    'area': 'IT',
    'descriptoin':
        'Infrastructure（インフラストラクチャー）の略称、基板や土台といった意味。パソコンやサーバー、プリンタなどの各種ハードウェア、インターネットやLANなどのネットワーク、さらにはデータベースやOSのことを指す。',
  },
  {
    'name': 'SaaS',
    'area': 'IT',
    'descriptoin':
        'Software as a Service の略称、顧客管理や会計処理などの業務アプリケーションを、ネットワーク経由で配信しウェブブラウザから利用するサービスモデル。アプリーション機能の変更が難しい ASP（Application Service Provider）とは異なり、ユーザー自身によるカスタマイズ機能が提供されているのが特徴である。',
  },
  {
    'name': 'OS',
    'area': 'IT',
    'descriptoin': 'Operating System（オペレーティングシステム）の略称、コンピューターを動かすためのソフトウェアのこと。',
  },
  {
    'name': 'SE',
    'area': 'IT',
    'descriptoin': 'システムエンジニアの略称。要件定義、仕様書の作成、コーディング、テスト作業といった、システム開発案件全体に関わる人。',
  },
  {
    'name': 'SEO',
    'area': 'IT',
    'descriptoin':
        'Search Engine Optimization（検索エンジン最適化）の略称、検索エンジンで検索結果のページの上位に自らのWebサイトやコンテンツが表示されるように工夫する施策のこと。',
  },
  {
    'name': 'LP',
    'area': 'IT',
    'descriptoin':
        'Landing Page（ランディングページ）の略称、検索結果やネット広告などを経由してユーザーが最初にクリックして表示されるWebぺージのこと。',
  },
  {
    'name': 'BtoB',
    'area': 'IT',
    'descriptoin': 'Business to Business ( B2B ) の略称、企業法人を相手にした取引を行うこと。',
  },
  {
    'name': 'BtoC',
    'area': 'IT',
    'descriptoin': 'Business to Customer ( B2C ) の略称、個人一般の消費者を相手にした取引を行うこと。',
  },
  {
    'name': 'CMS',
    'area': 'IT',
    'descriptoin':
        'Content Management System（コンテンツ管理システム）の略称、 Webサイトの更新（修正、変更、訂正、Webサイト管理）をWebから行うためのソフトウェア（アプリ、アプリケーション）の総称で、コンテンツを一元的に管理するシステム。',
  },
  {
    'name': 'EC',
    'area': 'IT',
    'descriptoin':
        'Electronic Commerce（電子商取引） の略称、オンライン上での売買のこと。ネットショッピングを行うサイトを「ECサイト」と呼ぶ。最近 Shopify というECプラットフォームが人気。',
  },
];
