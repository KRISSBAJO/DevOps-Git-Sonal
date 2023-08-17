#!/bin/bash

# Initial balance
balance=1000

# Function to display balance
check_balance() {
    echo "Your current balance is: $balance"
}

# Function to withdraw money
withdraw() {
    echo -n "Enter amount to withdraw: "
    read amount

    if (( amount <= balance )); then
        balance=$((balance - amount))
        echo "Withdrawal successful! Your new balance is: $balance"
    else
        echo "Insufficient funds!"
    fi
}

# Function to deposit money
deposit() {
    echo -n "Enter amount to deposit: "
    read amount

    balance=$((balance + amount))
    echo "Deposit successful! Your new balance is: $balance"
}

# Main program starts here
echo "Welcome to Bash Bank!"

while true; do
    echo ""
    echo "Select a transaction:"
    echo "1) Check Balance"
    echo "2) Withdraw"
    echo "3) Deposit"
    echo "4) Exit"
    echo -n "Choice (1/2/3/4): "
    read choice

    case $choice in
        1)
            check_balance
            ;;
        2)
            withdraw
            ;;
        3)
            deposit
            ;;
        4)
            echo "Thank you for banking with us. Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done

