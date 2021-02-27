// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# pragma once
# include "TTypes.h"

START_MANGLE
START_QT5_NS

/** @brief  QObject is the base of all classes of QT-5
 *          QObject encapsulates fundamental behavior common to objects by introducing methods that:
 *          - Create, maintain, and destroy instances of the object by allocating, initializing, and freeing required memory.
 *          - Respond when object instances are created or destroyed.
 *          - Return class-type and instance information on an object and runtime type information (RTTI) about its published properties.
 *          - Support message handling.
 *          - Support interfaces implemented by the object.
 *          <p>
 *          Use TObject as an immediate base class when declaring simple objects that do not need to persist (are not saved and reloaded)
 *          and that do not need to be assigned to other objects.
 *          <p>
 *          Much of the capability of objects is established by methods that TObject introduces. Many of these methods are used internaly
 *          by IDEs and are not intended for users to call directly. Others are overridden in descendant objects that have more complex behavior. 
 *          <p>
 *          Although TObject is the based object of a component framework, not all objects are components. All component classes descend from TComponent. 
 */
class QObject {
public:
	/** @brief   Default constructor of QObject
	 *
	 *  @param   none
	 *  @return  Object Reference
	 *
	 *  <br><b>Example</b>:
	 *  @code
	 *   C++
	 *   auto *obj = new QObject;
	 *
	 *   FPC
	 *   obj := QObject.Create;
	 *  @endcode
	 *  @version 1.0
	 */
	QObject();
		
	/** @brief   destructor of TObject.
	 *  @version 1.0
	 */
	~QObject();
};

END_QT5_NS
END_MANGLE
