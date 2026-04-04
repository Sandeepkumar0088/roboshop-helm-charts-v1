install:
	git pull
	helm upgrade -i frontend . -f dev-values/frontend.yml
	helm upgrade -i catalogue . -f dev-values/catalogue.yml
	helm upgrade -i user . -f dev-values/user.yml
	helm upgrade -i cart . -f dev-values/cart.yml
	helm upgrade -i shipping . -f dev-values/shipping.yml
	helm upgrade -i payment . -f dev-values/payment.yml

uninstall:
	git pull
	helm uninstall frontend .
	helm uninstall catalogue .
	helm uninstall user .
	helm uninstall cart .
	helm uninstall shipping .
	helm uninstall payment .