# mundi_api
#
# This file was automatically generated by APIMATIC v2.0 (
# https://apimatic.io ).

module MundiApi
  #  mundi_api client class.
  class MundiApiClient
    # Singleton access to subscriptions controller.
    # @return [SubscriptionsController] Returns the controller instance.
    def subscriptions
      SubscriptionsController.instance
    end

    # Singleton access to orders controller.
    # @return [OrdersController] Returns the controller instance.
    def orders
      OrdersController.instance
    end

    # Singleton access to plans controller.
    # @return [PlansController] Returns the controller instance.
    def plans
      PlansController.instance
    end

    # Singleton access to invoices controller.
    # @return [InvoicesController] Returns the controller instance.
    def invoices
      InvoicesController.instance
    end

    # Singleton access to customers controller.
    # @return [CustomersController] Returns the controller instance.
    def customers
      CustomersController.instance
    end

    # Singleton access to charges controller.
    # @return [ChargesController] Returns the controller instance.
    def charges
      ChargesController.instance
    end

    # Singleton access to recipients controller.
    # @return [RecipientsController] Returns the controller instance.
    def recipients
      RecipientsController.instance
    end

    # Singleton access to tokens controller.
    # @return [TokensController] Returns the controller instance.
    def tokens
      TokensController.instance
    end

    # Singleton access to transactions controller.
    # @return [TransactionsController] Returns the controller instance.
    def transactions
      TransactionsController.instance
    end

    # Singleton access to transfers controller.
    # @return [TransfersController] Returns the controller instance.
    def transfers
      TransfersController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(service_referer_name: nil, basic_auth_user_name: nil, basic_auth_password: nil, proxy: nil)
      Configuration.service_referer_name = service_referer_name if service_referer_name
      Configuration.basic_auth_user_name = basic_auth_user_name if basic_auth_user_name
      Configuration.basic_auth_password = basic_auth_password if basic_auth_password
      Configuration.proxy = proxy if proxy
    end
  end
end
