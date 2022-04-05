#include "chartparams.h"

ChartParams::ChartParams(QObject *parent)
: QObject(parent), m_startPos(0), m_natFreq(0), m_delta(0)
{

}

int ChartParams::startPos() const
{
	return m_startPos;
}

void ChartParams::setStartPos(int p)
{
	m_startPos = p;
}

int ChartParams::naturalFreq() const
{
	return m_natFreq;
}

void ChartParams::setNaturalFreq(int f)
{
	m_natFreq = f;
}

int ChartParams::delta() const
{
	return m_delta;
}

void ChartParams::setDelta(int d)
{
	m_delta = d;
}
