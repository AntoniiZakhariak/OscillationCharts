#ifndef CHARTPARAMS_H
#define CHARTPARAMS_H

#include <QObject>
#include <QtQml/qqml.h>
#include <QtCharts>

#include <QTimer>

class ChartParams : public QObject
{
	Q_OBJECT
	Q_PROPERTY(int startPos READ startPos WRITE setStartPos NOTIFY startPosChanged)
	Q_PROPERTY(int naturalFreq READ naturalFreq WRITE setNaturalFreq NOTIFY naturalFreqChanged)
	Q_PROPERTY(int delta READ delta WRITE setDelta NOTIFY deltaChanged)

public:
	ChartParams(QObject* parent = nullptr);

	int startPos() const;
	void setStartPos(int val);

	int naturalFreq() const;
	void setNaturalFreq(int val);

	int delta() const;
	void setDelta(int val);

public slots:

signals:
	void startPosChanged();
	void naturalFreqChanged();
	void deltaChanged();

private:
	QTimer m_timer;

	int m_startPos = 32;
	int m_natFreq;
	int m_delta;
};

#endif // CHARTPARAMS_H
