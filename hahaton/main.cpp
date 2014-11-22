#include <QApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QObject* root = engine.rootObjects().first();

    QObject* t1 = root->findChild<QObject*>("t1");

    t1->setProperty("text", QVariant("Iz C++-a"));

    return app.exec();
}
