import json
import re
from konlpy.tag import Twitter
from collections import Counter
import pytagcloud
import webbrowser
import matplotlib
import matplotlib.pyplot as plt
from matplotlib import font_manager, rc


def showGraph(wordInfo) :
    font_location = "C:\Windows\Fonts\malgun.ttf"
    font_name = font_manager.FontProperties(fname=font_location).get_name()
    matplotlib.rc('font', family=font_name)

    plt.xlabel("주요단어")
    plt.ylabel("빈도수")
    plt.grid(True)

    Sorted_Dict_Values = sorted(wordInfo.values(), reverse=True)

    Sorted_Dict_Keys = sorted(wordInfo, key=wordInfo.get, reverse=True)  

    plt.bar(range(len(wordInfo)), Sorted_Dict_Values, align="center")

    plt.xticks(range(len(wordInfo)), list(Sorted_Dict_Keys), rotation='70')

    plt.show()

def saveWordCloud(wordInfo, filename) :
    taglist = pytagcloud.make_tags(dict(wordInfo).items(), maxsize=100)

    pytagcloud.create_tag_image(taglist, filename, size=(640, 480), fontname="Korean")

    webbrowser.open(filename)

# 함수 선언
# def 함수명() :
def main() :
    openFileName = "E:\PythonData_2016146007\김대호_naver_news.json"
    cloudImagePath = openFileName + ".jpg"

    print("cloudImagePath : " + cloudImagePath)

    rfile = open(openFileName, 'r', encoding='utf-8').read()

    jsonData = json.loads(rfile)
    description= ""

    for item in jsonData :
        if 'description' in item.keys() :
            description = description + re.sub(r'[^\w]', '', item['description']) + ''

    nlp = Twitter()
    nouns = nlp.nouns(description)
    count = Counter(nouns)

    wordInfo = dict()
    for tags, counts in count.most_common(100) :
        if ( len(str(tags)) > 1 ) :
            wordInfo[tags] = counts
            print("%s : %d" % (tags, counts))

    showGraph(wordInfo)
    saveWordCloud(wordInfo, cloudImagePath)


if __name__ == "__main__" :
    main()



















            

    
