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
	Q_PROPERTY(double delta READ delta WRITE setDelta NOTIFY deltaChanged)
	Q_PROPERTY(QPointF chartValue READ chartValue WRITE setChartValue NOTIFY chartValueChanged)

public:
	ChartParams(QObject* parent = nullptr);

	int startPos() const;
	void setStartPos(int val);

	int naturalFreq() const;
	void setNaturalFreq(int val);

	double delta() const;
	void setDelta(double val);



	QPointF chartValue() const;
	void setChartValue(QPointF val);

//	void resetChart();

public slots:

signals:
	void startPosChanged();
	void naturalFreqChanged();
	void deltaChanged();
	void chartValueChanged();

private slots:
		void aTimeout();

private:
	QTimer m_timer;

	QTimer * m_chartTimer;
	QPointF m_chartValue;

	int m_startPos = 32;
	int m_natFreq;
	double m_delta;
};

#endif // CHARTPARAMS_H
