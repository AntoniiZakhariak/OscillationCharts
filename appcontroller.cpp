#include "appcontroller.h"

#include <QCoreApplication>

#include "chartparams.h"

AppController::AppController(QObject *parent)
	: QObject{parent}
{
	m_chartParams = new ChartParams(this);

	m_engine = new QQmlApplicationEngine(this);

	this->setupBkend();

	this->initQML();
}

void AppController::setupBkend()
{
	qmlRegisterType<ChartParams>("My.Types", 1, 0, "ChartParams");
	qmlRegisterType<AppController>("My.Types", 1, 0, "AppController");
}

void AppController::initQML()
{
	QQmlContext* ctxt = m_engine->rootContext();
	ctxt->setContextProperty("_appController", this);

	const QUrl url(QStringLiteral("qrc:/main.qml"));
	connect(m_engine, &QQmlApplicationEngine::objectCreated, [url](QObject *obj, const QUrl &objUrl) {
		if (!obj && url == objUrl)
			QCoreApplication::exit(-1);
	});
	m_engine->load(url);
}
