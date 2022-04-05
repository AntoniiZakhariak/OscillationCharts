#ifndef CHARTPARAMS_H
#define CHARTPARAMS_H

#include <QObject>
#include <QtQml/qqml.h>

class ChartParams : public QObject
{

//	Q_OBJECT
	Q_PROPERTY(int startPos READ startPos WRITE setStartPos)
	Q_PROPERTY(int naturalFreq READ naturalFreq WRITE setNaturalFreq)
	Q_PROPERTY(int delta READ delta WRITE setDelta)
	QML_ELEMENT

public:
	ChartParams(QObject *parent = nullptr);

	int startPos() const;
	void setStartPos(int);

	int naturalFreq() const;
	void setNaturalFreq(int);

	int delta() const;
	void setDelta(int);

private:
	int m_startPos;
	int m_natFreq;
	int m_delta;
};

#endif // CHARTPARAMS_H
