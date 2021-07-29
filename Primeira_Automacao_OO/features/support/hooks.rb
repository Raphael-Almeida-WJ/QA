Before do
	#Capybara.current_session.driver.browser.manage.delete_all_cookies
    #window = Capybara.current_session.current_window
    #window.resize_to(1200, 1200)
    #window.maximize
	@login = Login.new
	@myaccount = Myaccount.new
    @homepage = Homepage.new
    @pedido = Pedido.new
    @checkout = Checkout.new
    @produto = Produto.new
end



