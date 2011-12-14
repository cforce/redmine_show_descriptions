module ShowDescriptionsPatch
  module QueriesHelperPatch
    def self.included(base)
      base.send(:include, InstanceMethods)
      base.class_eval do
        alias_method_chain :retrieve_query, :show_desc
      end
    end

    module InstanceMethods
      def retrieve_query_with_show_desc
        retrieve_query_without_show_desc
        if params[:query]
          @query.show_desc = params[:query][:show_desc] == "1" ? true : false
        end
      end
    end
  end
end
