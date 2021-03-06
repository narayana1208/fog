module Fog
  module Compute
    class VcloudDirector
      class Real
        # Retrieve a vApp template.
        #
        # @param [String] vapp_template_id ID of the vApp template to retrieve.
        # @return [Excon::Response]
        #   * body<~Hash>:
        # @see http://pubs.vmware.com/vcd-51/topic/com.vmware.vcloud.api.reference.doc_51/doc/operations/GET-VAppTemplate.html
        #   vCloud API Documentation
        def get_vapp_template(vapp_template_id)
          request(
            :expects => 200,
            :method  => 'GET',
            :parser  => Fog::ToHashDocument.new,
            :path    => "vAppTemplate/#{vapp_template_id}"
          )
        end
      end
    end
  end
end
