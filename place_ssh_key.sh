#!/bin/bash

HOSTS=tmphosts

USERNAME=discore
echo -n "Enter Password: "
read -s PASSWORD

# from older sshpass -e version...
export SSHPASS=$PASSWORD

echo This is going to DELETE .ssh for $USERNAME!!!!
read

echo "OK starting!"

for i in $(cat $HOSTS)
do
	echo "Logging into $i as $USERNAME..."
	echo "Nuking and remaking ~/.ssh"
	sshpass -e  ssh $USERNAME@$i "rm -rf ~/.ssh && mkdir ~/.ssh && chmod 700 ~/.ssh"
	echo "Adding authorized_keys info"
	sshpass -e  ssh $USERNAME@$i "echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDawWdG5VrWW33eiZrwnAuUlMm+ONEYn+EgKv5i74zdirU1p7sT0K3s6zAZ3ktfjRtuNgQV4iDEVL/I8y7miF6OkZQ+ewuusfDy6QDfo5U/SEM9mPx1iZANHy6jkNo0LGIgg3hf0TSjEqkjTfbYCvDfS9Z8kmKsHQ3sANPpmrDq5jPkyrJ9ta+ot6g8zO+ZmqKfoBjXqViv3bJA/Dy9XYi9Q5Q/x0hj3xT9Z2dL86iCqylqmXd4p9NPh7fl4EJmWs2Ob5l/H5wm+VMvLsqDhxByghZ8dScg0FUOQQZB9Cc1JkdhXjfJlhKDbZmguBsm8dDMZk+We7vDg1oV0ACoWAor discore@circles >> ~/.ssh/authorized_keys"
	sshpass -e  ssh $USERNAME@$i "echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDQ0UwbLpJzSdIb1tJwNQ3QNfMUZw2hI0z9Ka6OhhzowjD/q7hO7Qm5U+D6FUG7V07IE3inTtcAzXNGgDDcCOVaDTvYMzpbt3Owgp2MpeFZHg1LGWTgsUeDY8fv7RTT4/0J113fyDy+iATBy+nQK5nstznEE+gNc9dXI1Liby6qzhcQDJANOFIBcNw67bqKUdnSd/p7IMTLqebyNkyEMcgcUhogZLGaddbzpQd7trixKZxVZMyhsAK7XjNWoFPAC+XfypcU+ge5r0Sa0WpwS7GwCn9eUYXq60SuE1CLVuo+r5kdvoXQ2fW03WIIr/6kblJt5ULaxP40ydkhkjJGGmOD discore@Tylers-MacBook.local >> ~/.ssh/authorized_keys"
	sshpass -e  ssh $USERNAME@$i "chmod 600 ~/.ssh/authorized_keys"
	echo "All done!"
done

echo "All hosts completed."

exit 1;
