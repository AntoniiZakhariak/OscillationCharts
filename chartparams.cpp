#include "chartparams.h"

#include <QDebug>
#include <QTimer>
#include <QtCharts>
#include <QtCore>
#include <QtQuick>

ChartParams::ChartParams(QObject *parent)
: QObject(parent),
  m_startPos(32),
  m_natFreq(34),
  m_delta(0)
{
	m_timer.setInterval(1000);
	connect(&m_timer, &QTimer::timeout,
			[this](){
		qDebug()<<"::::::::"<<delta();
		this->setDelta(delta()+1);
	});
	m_timer.start();
}

int ChartParams::startPos() const
{
	return m_startPos;
}

void ChartParams::setStartPos(int val)
{
	m_startPos = val;
}

int ChartParams::naturalFreq() const
{
	return m_natFreq;
}

void ChartParams::setNaturalFreq(int val)
{
	m_natFreq = val;
}

int ChartParams::delta() const
{
	return m_delta;
}

void ChartParams::setDelta(int val)
{
	if(m_delta == val)
		return;
	m_delta = val;
	emit deltaChanged();
}
