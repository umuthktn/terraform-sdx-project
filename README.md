Terraform version v1.12.2

# Başlamadan önce araştırılması gerekenler:

## 1.
- `terraform init`: Terraform projesini başlatır, gerekli eklentileri indirir.
- `terraform plan`: Yapılacak değişiklikleri önizler, ne olacağını gösterir.
- `terraform apply`: Değişiklikleri onaylayıp altyapıyı oluşturur veya günceller.

## 2.
- `terraform fmt`: Kodları otomatik biçimlendirir ve okunabilirliği artırır
- `terraform validate`: Yazım hatası olup olmadığını kontrol eder.
- `terraform refresh`: Gerçek altyapı ile terraform'un durumu eşleşiyor mu, onu günceller.

## 3.
- `main.tf`
Terraform yapılandırmasının asıl kodlarının yazıldığı dosyadır. Hangi kaynakların oluşturulacağı, sağlayıcı bilgileri gibi altyapının temel tanımı burada yapılır.

- `variables.tf`
Terraform kodları içinde kullanılacak değişkenlerin tanımlandığı dosyadır. Değişkenin adı, tipi ve açıklaması burada yer alır. Kodun daha esnek ve yeniden kullanılabilir olmasını sağlar.

- `terraform.tfvars` --> ekstra 
`variables.tf` dosyasında tanımlanan değişkenlerin gerçek değerlerinin verildiği dosyadır. Değerleri buradan yönetmek, aynı altyapıyı farklı ortamlar için kolayca yeniden kullanmamıza olanak tanır.

- `outputs.tf`
Terraform apply komutu çalıştıktan sonra kullanıcıya gösterilecek çıktılar bu dosyada tanımlanır. Genellikle oluşturulan kaynakların isimleri, IP adresleri veya diğer önemli bilgileri burada gösterilir.


## 4.
- HCL Nedir? 
HCL, Terraform ve diğer HashiCorp araçlarında altyapı yapılandırmalarını tanımlamak için kullanılan özel bir programlama dilidir. İnsanların kolay okuyup yazabilmesi için tasarlanmıştır.  HCL ile altyapı kaynakları, değişkenler, çıktılar gibi bileşenler rahatça tanımlanabilir. Yani altyapıyı kodla ifade etmemizi sağlar.

- HCL'nin nasıl bir yazımı vardır?
Kaynak değişken ve bölümler {} ile tanımlanır. String, integer, boolean, list ve map değer türlerine sahiptir. Yorum satırı # veya // yazılabilir. "Key = value pair" şeklinde çalışır. Her ayar bir anahtar ve ona karşılık gelen değer ile yazılır.

## 5.
- Terraform’da bir resource bloğu nasıl yazılır ve hangi bileşenleri içerir?
Resource bloğu, resource anahtar kelimesiyle yazılır ve "{}" süslü parantezi içine tanımlanır. İçerdiği bileşenler kaynak türü, kaynak adı ve özelliklerdir(location vb.).

## 6.
- Modül yapısı nedir, ne zaman ve neden kullanılır?
Modül yapısı, Terraform’da tekrar eden kodları bir araya toplayarak ayrı bir modül halinde kullanmayı sağlar. Aynı altyapı bileşenlerini birden fazla kez tanımlarken kullanılır. Projeleri daha küçük parçalara bölüp okunabilir kılar ve ekip içi paylaşılabilir, tekrar kullanılabilir bir yapı sağlar.

## 7.
- Terraform’da provider nedir? 
Provider, Terraform’un hangi platformda çalışacağını belirleyen bileşendir.
Azure, AWS, Google Cloud gibi servislerle bağlantı kurmasını sağlar.

## 8.
- Terraform state dosyası (terraform.tfstate) nedir ve neden önemlidir?
Bu dosya, terraform’un oluşturduğu altyapının mevcut durumunu takip ettiği dosyadır.
Terraform, her apply işleminden sonra bu dosyayı günceller ve gelecekte yapılacak değişiklikleri buna göre planlar. Eğer bu dosya olmazsa terraform neyin var olduğunu bilemez ve her işlemi sıfırdan yapar. 

## 9.
- variables.tf ve terraform.tfvars dosyalarının farkı nedir?
variables.tf, hangi değişkenler kullanılacaksa onları tanımlar. 
terraform.tfvars, variables.tf'de tanımlanan değişkenlere değer atar. 

## 10.
- Vnet, subnet, NSG nedir?
Vnet, azure üzerinde izole bir sanal ağ ortamı sağlar. Diğer kaynaklar bu ağ içinden haberleşir. Gerçek hayattaki fiziksel ağın sanal halidir.
Subnet, VNet içinde daha küçük ağ bölümleridir. Kaynakları mantıksal olarak gruplamak ve trafik kontrolü sağlamak için kullanılır.
NSG, Gelen ve giden trafiği filtrelemek için kullanılan güvenlik kuralları setidir. Belirli portlara veya IP aralıklarına izin verilebilir veya engellenebilir.

## 11.
- Public ve Private IP nedir?
Public IP, internet üzerinden erişilebilen sunucularımızı dışarıya erişebilir kılan IP adresidir.
Private IP, sadece özel ağ içinde kullanılan ve internetten erişilemeyen IP adresidir. Kaynakların kendi içlerinde iletişim kurmasını sağlar.

## 12.
- NSG’nin doğrudan sanal makineye değil, subnet’e atanması ne anlama gelir?
NSG’nin subnet’e atanması, o subnet içindeki tüm kaynakların ağ trafiğinin ortak güvenlik kurallarına tabi olması demektir. Bu sayede güvenlik yönetimi merkezi ve daha pratik hale gelir.  
Sanal makineye doğrudan atanırsa, sadece o makinenin trafiği kontrol edilir, subnetteki diğer kaynaklar etkilenmez. Subnet’e atama, daha geniş kapsamlı ve standart bir güvenlik politikası sağlar.






