#ifndef AENTITY_HPP
# define AENTITY_HPP

class AEntity
{
public:
	virtual AEntity();
	AEntity(const AEntity &obj);
	~AEntity();

	AEntity &operator =(const AEntity &obj);

protected:
	virtual std::string type;
	unsigned int x;
	unsigned int y;
	virtual char representation;

};

#endif