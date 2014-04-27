package acceleo.main;

import java.util.Set;
import java.util.TreeSet;

import org.eclipse.ocl.OCL;
import org.eclipse.ocl.ecore.OCLExpression;
import org.eclipse.uml2.uml.Type;
import org.eclipse.uml2.uml.internal.impl.ParameterImpl;
import org.eclipse.uml2.uml.internal.impl.TypedElementImpl;

/**
 * This is a helper class used to make Java service calls from Acceleo .mtl
 * files.
 * 
 * This class works hand in hand with acceleo.files.queryTemplates.mtl which
 * defines the syntax that connects these java methods to Acceleo query
 * templates.
 * 
 * acceleo.files.queryTemplates.mtl should be regenerated if new methods are
 * added to this class or the method interface is changed by following the
 * instructions found here:
 * https://github.com/uiuc-cs428/uml2ruby/wiki/Query-documentation
 */
public class AcceleoHelperQueries {
	public Set<String> sortParamSet(Set<ParameterImpl> inputStrings) {
		Set<String> sortedParams = new TreeSet<String>();

		for (ParameterImpl param : inputStrings) {
			if (!(param.getDirection().toString().equals("out") || param
					.getDirection().toString().equals("return"))) {
				sortedParams.add(firstCharToLower(param.getName().toString()));
			}
		}
		//
		// System.out.println("Sorted:");
		// for (String string : sortedParams) {
		// System.out.println("argument: " + string);
		// }
		//
		// System.out.println("hello world");

		return sortedParams;
	}

	public Set<String> sortParamComment(Set<ParameterImpl> inputStrings) {
		Set<String> sortedParams = new TreeSet<String>();

		for (ParameterImpl param : inputStrings) {
			if (!(param.getDirection().toString().equals("out") || param
					.getDirection().toString().equals("return"))) {			
				sortedParams.add(firstCharToLower("#   - +"
						+ param.getName().toString())
						+ "+ -> " + getType(param.getType()));
			}
		}

		return sortedParams;
	}

	public Set<String> sortActivityParam(Set<ParameterImpl> test) {
		// System.out.println("hello world");
		Set<String> sortedParams = new TreeSet<String>();

		for (ParameterImpl param : test) {
			// System.out.println("argument: " + param);
			// System.out.println("direction: " + param.getDirection());
			if (param.getDirection().toString().equals("in")) {
				// System.out.println("name: " +
				// firstCharToLower(param.getName().toString()));
				sortedParams.add(firstCharToLower(param.getName().toString()));
			}
		}
		// for (OCL ocl : inputParams) {
		// System.out.println("arguemnt: " + ocl);
		// }

		return sortedParams;
	}

	private String firstCharToLower(String param) {
		return param.substring(0, 1).toLowerCase() + param.substring(1);
	}

	private String getType(Type typeData) {
		String typeName;
		if (typeData == null) {
			typeName = "Undefined";
		} else if (typeData.isSetName()) {
			typeName = typeData.getName().toString();
		} else {
			String typeDataString = typeData.toString();

			String primitiveType = typeDataString.substring(
					typeDataString.lastIndexOf('#') + 1,
					typeDataString.length() - 1);

			if (primitiveType.contains("String")) {
				typeName = "String";
			} else if (primitiveType.contains("Integer")) {
				typeName = "Fixnum";
			} else if (primitiveType.contains("Real")) {
				typeName = "Float";
			} else {
				typeName = primitiveType;
			}
		}

		return typeName;
	}
}
