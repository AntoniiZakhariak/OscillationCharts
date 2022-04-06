#ifndef APPCONTROLLER_H
#define APPCONTROLLER_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQmlContext>

class ChartParams;

class AppController : public QObject
{
	Q_OBJECT

	Q_PROPERTY(ChartParams* chartParams MEMBER m_chartParams NOTIFY chartParamsChanged)
public:
	explicit AppController(QObject *parent = nullptr);

signals:
	void chartParamsChanged();

private:
	void setupBkend();
	void initQML();

	ChartParams* m_chartParams;
	QQmlApplicationEngine *m_engine;
};

#endif // APPCONTROLLER_H
