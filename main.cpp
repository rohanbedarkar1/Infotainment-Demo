#include <QApplication>
#include <QQmlApplicationEngine>
#include <QDebug>
#include <QQmlEngine>
#include <QQmlComponent>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    //QQmlEngine engine;
    //QQmlComponent component(&engine,QUrl(QStringLiteral("qrc:/main.qml")));
    //QObject* root = component.create();


    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
