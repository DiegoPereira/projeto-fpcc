If you are using a system and it asks you to provide information that you consider personal, what do you tend to do?

==> destacar o que é mais importante

    def ver(self, initial, final, identifier):
        data = self.collection.find({"timestamp": {"$gte": initial, "$lt": final}, "identifier": identifier})
        return list(data)

    def pesquisa(self, initial, final, identifier):
        temp = initial
        offset = datetime.timedelta(minutes=5)
        qtd = []

        while temp < final:
            data = self.collection.find({"timestamp": {"$gte": temp, "$lt": temp+offset}, "identifier": identifier})
            data = data.distinct("mac")
            total = len(list(data))
            qtd.append(total)
            temp = temp+offset

        return qt

from sensors_db import DataHandler as DH
import datetime

a = DH("web.cloud.lsd.ufcg.edu.br:41106")

video6_1, video6_2 = datetime.datetime(2016, 7, 6, 14, 27), datetime.datetime(2016, 7, 6, 15, 27)

z = a.pesquisa(video6_1, video6_2, "PontoDeOnibus-pesquisa5")


video7_1, video7_2 = datetime.datetime(2016, 7, 7, 14, 32), datetime.datetime(2016, 7, 7, 15, 32)

z = a.pesquisa(video7_1, video7_2, "PontoDeOnibus-pesquisa6")


video8_1, video8_2 = datetime.datetime(2016, 7, 11, 10, 14), datetime.datetime(2016, 7, 11, 11, 19)

z = a.pesquisa(video8_1, video8_2, "PontoDeOnibus-pesquisa7")




video1_1, video1_2 = datetime.datetime(2016, 6, 28, 16, 00), datetime.datetime(2016, 6, 28, 16, 40)

z = a.pesquisa(video1_1, video1_2, "PontoDeOnibus-pesquisa")


video2_1, video2_2 = datetime.datetime(2016, 6, 29, 14, 44), datetime.datetime(2016, 6, 29, 15, 24)

z = a.pesquisa(video2_1, video2_2, "PontoDeOnibus-pesquisa2")

video3_1, video3_2 = datetime.datetime(2016, 6, 30, 15, 2), datetime.datetime(2016, 6, 30, 15, 42)

z = a.pesquisa(video3_1, video3_2, "PontoDeOnibus-pesquisa3")

video4_1, video4_2 = datetime.datetime(2016, 07, 4, 10, 4), datetime.datetime(2016, 7, 4, 10, 44)

z = a.pesquisa(video4_1, video4_2, "PontoDeOnibus-pesquisa4")

video5_1, video5_2 = datetime.datetime(2016, 07, 4, 16, 14), datetime.datetime(2016, 7, 4, 16, 54)

z = a.pesquisa(video5_1, video5_2, "PontoDeOnibus-pesquisa4")