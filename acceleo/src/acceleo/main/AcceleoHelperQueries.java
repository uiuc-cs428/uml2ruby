package acceleo.main;

import java.util.Set;
import java.util.TreeSet;

import org.eclipse.uml2.uml.internal.impl.ParameterImpl;

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

		for (ParameterImpl object : inputStrings) {
//			System.out.println("argument: " + object.getName());
//			System.out.println("argument: " + object);
			sortedParams.add(object.getName());
		}
//
//		System.out.println("Sorted:");
//		for (String string : sortedParams) {
//			System.out.println("argument: " + string);
//		}
//
//		System.out.println("hello world");

		return sortedParams;
	}
}
