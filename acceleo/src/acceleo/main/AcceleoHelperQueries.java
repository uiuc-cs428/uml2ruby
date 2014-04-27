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

	/**
	 * Return an alphabetical set of parameter names so that the class and
	 * activity diagrams call methods in the same order.
	 * 
	 * The first character of the parameter is forced to lower case to prevent
	 * declaring a constant in Ruby.
	 * 
	 * @param inputStrings
	 *            The collection of parameters associated with the method
	 *            definition or call.
	 * @return An alphabetical set of parameter names.
	 */
	public Set<String> sortMethodParam(Set<ParameterImpl> inputStrings) {
		Set<String> sortedParams = new TreeSet<String>();

		for (ParameterImpl param : inputStrings) {
			if (!(param.getDirection().toString().equals("out") || param
					.getDirection().toString().equals("return"))) {
				sortedParams.add(firstCharToLower(param.getName().toString()));
			}
		}

		return sortedParams;
	}

	/**
	 * Return an alphabetical set of parameter names so that the multiple
	 * activity diagrams will call each other as methods in the same order.
	 * 
	 * The first character of the parameter is forced to lower case to prevent
	 * declaring a constant in Ruby.
	 * 
	 * Note: This class was extracted from .mtl and keeping the same logic.
	 * Potential to refactor this method with sortParamSet and other methods
	 * from the .mtl file.
	 * 
	 * @param inputStrings
	 *            The collection of parameters associated with the activity
	 *            definition or call.
	 * @return An alphabetical set of parameter names.
	 */
	public Set<String> sortActivityParam(Set<ParameterImpl> test) {
		Set<String> sortedParams = new TreeSet<String>();

		for (ParameterImpl param : test) {
			if (param.getDirection().toString().equals("in")) {
				sortedParams.add(firstCharToLower(param.getName().toString()));
			}
		}

		return sortedParams;
	}

	/**
	 * Format method parameters for use in documentation about their intended
	 * type.
	 * 
	 * @param inputStrings
	 *            The collection of parameters associated with the method
	 *            definition or call.
	 * @return A formated set of parameter names and types.
	 */
	public Set<String> sortParamComment(Set<ParameterImpl> inputStrings) {
		Set<String> sortedParams = new TreeSet<String>();

		for (ParameterImpl param : inputStrings) {
			if (!(param.getDirection().toString().equals("out") || param
					.getDirection().toString().equals("return"))) {
				sortedParams.add("#   - +"
						+ firstCharToLower(param.getName().toString())
						+ "+ -> " + getType(param.getType()));
			}
		}

		return sortedParams;
	}

	/**
	 * Change first character of a string to lower case
	 * 
	 * @param param
	 *            String to manipulate
	 * @return The param string with the first character forced to lower case
	 */
	private String firstCharToLower(String param) {
		return param.substring(0, 1).toLowerCase() + param.substring(1);
	}

	/**
	 * Get the Ruby type associated from the given type class.
	 * 
	 * Primitive types containing the following names will be set in this way:
	 * String -> String Integer -> Fixnum Real -> Float
	 * 
	 * @param typeData
	 *            Data class containing parameter type information
	 * @return The name of the type associated with this type data class
	 */
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