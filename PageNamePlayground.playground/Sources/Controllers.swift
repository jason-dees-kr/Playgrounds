import Foundation

public class AnalyticsViewController { // : UIViewController {
    
    public init(){}
    
    public var pageName: PageName {
        get{
            let selfType = type(of: self)
            return PageName.Prefix + String(describing: selfType) // is this a good default?
        }
        set(newPageName) {
            
        }
    }
    
    func present(_ viewControllerToPresent: AnalyticsViewController, animated flag: Bool, completion: (() -> Void)? = nil) {
        print(viewControllerToPresent.pageName)
        
        // Keep track of a page name stack? That could get very big, we'd have to like "reset" the stack every so often
        // Prepend PageName.Prefix here or somewhere global rather than in every view controller?
        
        //viewControllerToPresent.pageName = self.pageName + viewControllerToPresent.pageName // Won't always be this though
        //viewControllerToPresent.pageName
    }
}

public struct StartNavigate {
    let pageName: PageName
}

public class HomeViewController: AnalyticsViewController {
    public override var pageName: PageName {
        get {
            return PageName("home")
        }
        set(newPageName) {
        }
    }
    
    public func goToList() -> ListViewController {
        let _ = StartNavigate(pageName: self.pageName)
        let listViewController = ListViewController()
        present(listViewController, animated: false)
        return listViewController
    }
}

public class ListViewController: AnalyticsViewController {
    public override var pageName: PageName {
        get {
            return PageName("list")
        }
        set(newPageName) {
        }
    }
    
    public func goTo(department: String) -> DepartmentViewController {
        let deptViewController = DepartmentViewController(department)
        present(deptViewController, animated: false)
        return deptViewController
    }
}

public class DepartmentViewController: AnalyticsViewController {
    let departmentName: String
    
    public init(_ departmentName: String){
        self.departmentName = departmentName
    }

    public override var pageName: PageName {
        get {
            return PageName(departmentName)
        }
        set(newPageName) {        }
    }
    
    public func viewProducts() -> ProductsViewController {
        let productsVC = ProductsViewController(departmentName)
        present(productsVC, animated: false)
        return productsVC
    }
}

public class ProductsViewController: AnalyticsViewController {
    
    let departmentName: String
    
    public init(_ forDepartment: String) {
        departmentName = forDepartment
    }

    public override var pageName: PageName {
        get {
            return PageName(departmentName, "products")
        }
        set(newPageName) {        }
    }
}


