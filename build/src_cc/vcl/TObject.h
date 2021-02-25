// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
# pragma once
# include "TTypes.h"

START_MANGLE
START_VCL_NS

/** @brief  TObject is the base of all classes
 *          TObject encapsulates fundamental behavior common to objects by introducing methods that:
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
class TObject {
public:
	/** @brief   Default constructor of TObject
	 *
	 *  @param   none
	 *  @return  Object Reference
	 *  @version 1.0
	 *  <br><b>Example</b>:
	 *  @code
	        C++
	        auto *obj = new TObject;
			
			FPC
			obj := TObject.Create;
	 *  @endcode
	 *  @see     Addiere(double, double);
	 */
	TObject();
		
	/** @brief   destructor of TObject **/
	~TObject();
};

END_VCL_NS
END_MANGLE
