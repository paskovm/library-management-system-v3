package com.metodipaskov.menu.book.interaction;

import com.metodipaskov.entities.Book;
import com.metodipaskov.entities.Library;
import com.metodipaskov.entities.actors.Borrower;
import com.metodipaskov.entities.actors.Person;
import com.metodipaskov.entities.actors.Staff;
import com.metodipaskov.menu.help.AddUpdateCheckUserMenu;
import com.metodipaskov.services.LoanManagementService;
import com.metodipaskov.utils.DatabaseInteractions;

public class ReturnBookMenu extends AddUpdateCheckUserMenu {

    private Library library = Library.getInstance();
    private LoanManagementService loanService = LoanManagementService.getInstance();

    @Override
    public void start() {
        printMenuHeader();
        Person user = getUser();
        if (user != null) {
            if (user instanceof Borrower) {
                Book book = getBook();

                if (book != null) {
                    int result = DatabaseInteractions.returnBook((Borrower) user, book, (Staff) library.getLoggedInPerson());
                    if (result > 0) {
                        loanService.returnBook((Borrower) user, book, (Staff) library.getLoggedInPerson());
                        System.out.println("Books loan completed!");
                    }
                }
            } else {
                System.out.println("The user you provided is not borrower!");
                user.printInfo();
            }
        }

        library.getMainMenu().start();
    }

    @Override
    public void printMenuHeader() {
        System.out.println(System.lineSeparator() +
                           "----------------------------------------------------");
        System.out.println("==============  Return a Book Portal  ==============");
        System.out.println("----------------------------------------------------");
    }
}
