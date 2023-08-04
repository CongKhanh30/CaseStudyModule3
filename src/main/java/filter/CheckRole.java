package filter;

import service.service.UserService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class CheckRole {
    public static boolean checkAdmin(HttpServletRequest request) {
        HttpSession session = request.getSession(false);

        UserService userService = new UserService();
        if (session != null) {
            if (session.getAttribute("userId") != null) {
                int userId = (int) session.getAttribute("userId");
                if (userService.getUser(userId).getRole().getRoleName().equals("admin")) {
                    return true;
                }
            }
        }
        return false;
    }
}
