#include "chartparams.h"

#include <QDebug>
#include <QTimer>
#include <QtCharts>
#include <QtCore>
#include <QtQuick>

ChartParams::ChartParams(QObject *parent)
: QObject(parent),
  m_startPos(250),
  m_natFreq(3),
  m_delta(0.1)
{
//	m_timer.setInterval(1000 / 1);
//	connect(&m_timer, &QTimer::timeout,
//			[this](){
//		qDebug()<<"::::::::"<<delta();
//		this->setDelta(delta()+0.01);
//	});
//	m_timer.start();

	m_chartTimer = new QTimer(this);
	m_chartTimer->setInterval((1000 /60));
	connect(m_chartTimer, &QTimer::timeout,
			this, &ChartParams::aTimeout);
	m_chartTimer->start();
}

void ChartParams::aTimeout()
{
	float a1,a2, w, w0, x0, d;

	x0 = startPos();
	w = naturalFreq();
	d = delta();
	w0 = sqrt(w * w - d * d);
	a1 = -1. * ( d * x0) / sqrt(w0 * w0 - d * d);
	a2 = x0;


	m_chartValue.setX(m_chartValue.x()+0.1);
	m_chartValue.setY(a1 * exp(-d * m_chartValue.x()) * sin(sqrt(w0 * w0 - d * d) * m_chartValue.x())
				  +  a2 * exp(-d * m_chartValue.x()) * cos(sqrt(w0 * w0 - d * d) * m_chartValue.x()));
	emit chartValueChanged();
}

int ChartParams::startPos() const{
	return m_startPos;
}

void ChartParams::setStartPos(int val){
	if(m_startPos == val)
		return;
	m_startPos = val;
	emit startPosChanged();
}

int ChartParams::naturalFreq() const{
	return m_natFreq;
}

void ChartParams::setNaturalFreq(int val){
	if(m_natFreq == val)
		return;
	m_natFreq = val;
	emit naturalFreqChanged();
}

double ChartParams::delta() const{
	return m_delta;
}

void ChartParams::setDelta(double val){
	if(m_delta == val)
		return;
	m_delta = val;
	emit deltaChanged();
}

QPointF ChartParams::chartValue() const{
		return m_chartValue;
	};

void ChartParams::setChartValue(QPointF val){
	m_chartValue = val;
}
